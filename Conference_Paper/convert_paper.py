#!/usr/bin/env python3
"""
convert_reports.py — Convert paper_draft.md to IEEE conference-format LaTeX.

Uses IEEEtran document class matching the ieee_template.tex style.
Reuses the inline/block conversion engine from convert_to_latex.py.

Usage:  python convert_reports.py
Output: paper_draft.tex
        Then compile with:  pdflatex paper_draft.tex
"""

import re
import sys
from pathlib import Path

# Import the converter from the existing script
sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "Report"))
import convert_to_latex
from convert_to_latex import convert_md, fmt_inline, esc


# ============================================================
# IEEE HEADING CONVERTER  (## → \section, ### → \subsection)
# ============================================================

def heading_to_latex_ieee(line: str) -> str:
    """Convert markdown headings to IEEE conference LaTeX commands.

    Mapping:
        #  (level 1) → silently ignored (title is handled separately)
        ## (level 2) → \\section
        ### (level 3) → \\subsection
        #### (level 4) → \\subsubsection
        ##### (level 5) → \\paragraph
    """
    m = re.match(r"^(#{1,6})\s+(.*)", line)
    if not m:
        return ""
    level = len(m.group(1))
    raw = m.group(2).strip()

    # Skip level 1 — the paper title is rendered in the preamble
    if level == 1:
        return ""

    # Strip Roman-numeral section prefixes like "I. ", "II. ", "IV. "
    raw = re.sub(r"^[IVXLC]+\.\s+", "", raw)

    # Strip letter prefixes like "A. ", "B. "
    raw = re.sub(r"^[A-Z]\.\s+", "", raw)

    # Strip "Chapter X:" prefix (from report-style headings)
    raw = re.sub(r"^Chapter\s+\d+[:\s]+", "", raw)

    # Strip leading numeric numbering like "1.2.3 "
    raw = re.sub(r"^\d+(\.\d+)*\.?\s+", "", raw)

    title = fmt_inline(raw)

    cmds = {
        2: r"\section",
        3: r"\subsection",
        4: r"\subsubsection",
        5: r"\paragraph",
        6: r"\paragraph",
    }
    cmd = cmds.get(level, r"\paragraph")
    suffix = "{" + title + "}"
    if level >= 5:
        suffix += "~\\\\"      # paragraph needs separation
    return cmd + suffix


# ============================================================
# IEEE TABLE CONVERTER  (fits within \columnwidth)
# ============================================================

def convert_table_ieee(table_lines: list) -> str:
    """Convert markdown table to IEEE-friendly LaTeX that fits in a column.

    Wraps the tabular in \\resizebox{\\columnwidth}{!}{...} so wide tables
    are scaled down to fit the narrow IEEE two-column layout.
    """
    rows = []
    for raw in table_lines:
        raw = raw.strip()
        if not raw.startswith("|"):
            continue
        if re.match(r"^[\|\s\-:]+$", raw):
            continue
        cells = [c.strip() for c in raw.strip("|").split("|")]
        rows.append(cells)

    if not rows:
        return ""

    ncols = max(len(r) for r in rows)

    lines = [
        r"\begin{table}[htbp]",
        r"\centering",
        r"\footnotesize",
        r"\resizebox{\columnwidth}{!}{",
        r"\begin{tabular}{" + "l" * ncols + "}",
        r"\toprule",
    ]
    for ri, row in enumerate(rows):
        while len(row) < ncols:
            row.append("")
        cells_latex = [fmt_inline(c) for c in row]
        lines.append(" & ".join(cells_latex) + r" \\")
        if ri == 0:
            lines.append(r"\midrule")
    lines += [
        r"\bottomrule",
        r"\end{tabular}",
        r"}",
        r"\end{table}",
    ]
    return "\n".join(lines)


# ============================================================
# FRONT-MATTER PARSER  (title, authors, abstract, keywords)
# ============================================================

def parse_front_matter(md_text: str):
    """Extract front-matter from the paper_draft.md.

    Expected structure at the top of the file:
        # Title
        **Author 1, Author 2, ...**
        Affiliation line

        **Mentor Name**
        Title, Affiliation line
        ---
        ## Abstract
        ... abstract text ...
        **Keywords:** ...
        ---

    Returns
    -------
    info : dict with keys:
        'title', 'authors' (list of str), 'affiliation',
        'mentor' (dict with 'name', 'title_prefix', 'affiliation' or None),
        'abstract', 'keywords' (list of str)
    body_start_line : int
        Line index where the main body begins (first ## after Abstract).
    """
    lines = md_text.splitlines()
    n = len(lines)

    info = {
        "title": "",
        "authors": [],
        "affiliation": "",
        "mentor": None,
        "abstract": "",
        "keywords": [],
    }

    i = 0

    # --- Title: first # heading ---
    while i < n:
        stripped = lines[i].strip()
        if stripped.startswith("# ") and not stripped.startswith("## "):
            info["title"] = stripped.lstrip("# ").strip()
            i += 1
            break
        i += 1

    # --- Authors: bold line **...** ---
    while i < n:
        stripped = lines[i].strip()
        if not stripped:
            i += 1
            continue
        m = re.match(r"^\*\*(.+)\*\*$", stripped)
        if m:
            # Split authors by comma
            authors_raw = m.group(1)
            info["authors"] = [a.strip() for a in authors_raw.split(",")]
            i += 1
            break
        # If we hit a heading or rule before finding authors, bail
        if stripped.startswith("#") or stripped in ("---", "***", "___"):
            break
        i += 1

    # --- Affiliation: next non-empty line ---
    while i < n:
        stripped = lines[i].strip()
        if not stripped:
            i += 1
            continue
        if stripped in ("---", "***", "___"):
            i += 1
            break
        if stripped.startswith("#"):
            break
        info["affiliation"] = stripped
        i += 1
        break

    # --- Mentor / second author: look for another **Name** block ---
    while i < n:
        stripped = lines[i].strip()
        if not stripped:
            i += 1
            continue
        # If we've reached the --- separator or a heading, stop looking
        if stripped in ("---", "***", "___"):
            i += 1
            break
        if stripped.startswith("#"):
            break
        m = re.match(r"^\*\*(.+)\*\*$", stripped)
        if m:
            mentor_name = m.group(1).strip()
            mentor_title = ""
            mentor_affiliation = ""
            i += 1
            # Next non-empty line is the mentor's title/affiliation
            while i < n:
                stripped2 = lines[i].strip()
                if not stripped2:
                    i += 1
                    continue
                if stripped2 in ("---", "***", "___"):
                    i += 1
                    break
                if stripped2.startswith("#"):
                    break
                # Parse "Title, Dept, University, City, Country"
                # The first part before the first comma may be the title
                parts = [p.strip() for p in stripped2.split(",")]
                if len(parts) >= 2:
                    mentor_title = parts[0]
                    mentor_affiliation = ", ".join(parts[1:])
                else:
                    mentor_affiliation = stripped2
                i += 1
                break
            info["mentor"] = {
                "name": mentor_name,
                "title_prefix": mentor_title,
                "affiliation": mentor_affiliation,
            }
            # Skip to next --- or heading
            while i < n:
                stripped3 = lines[i].strip()
                if stripped3 in ("---", "***", "___"):
                    i += 1
                    break
                if stripped3.startswith("## "):
                    break
                i += 1
            break
        i += 1

    # --- Abstract section: ## Abstract ---
    while i < n:
        stripped = lines[i].strip()
        if re.match(r"^##\s+Abstract", stripped, re.IGNORECASE):
            i += 1
            break
        i += 1

    # Collect abstract text until next ## heading or ---
    abstract_lines = []
    keywords_line = ""
    while i < n:
        stripped = lines[i].strip()
        if stripped.startswith("## ") or stripped in ("---", "***", "___"):
            if stripped in ("---", "***", "___"):
                i += 1
            break
        # Check for keywords line
        kw_m = re.match(r"^\*\*Keywords?:\*\*\s*(.*)", stripped)
        if kw_m:
            keywords_line = kw_m.group(1).strip()
            i += 1
            continue
        abstract_lines.append(stripped)
        i += 1

    info["abstract"] = " ".join(l for l in abstract_lines if l).strip()

    if keywords_line:
        info["keywords"] = [k.strip().rstrip(",") for k in keywords_line.split(",") if k.strip()]

    return info, i


# ============================================================
# REFERENCES PARSER
# ============================================================

def parse_references(md_text: str):
    """Extract the References section and return (body_without_refs, ref_entries).

    ref_entries is a list of (label, text) tuples, e.g. ("b1", "G. Eason ...").
    """
    lines = md_text.splitlines()
    n = len(lines)

    # Find the References heading
    ref_start = None
    for idx, line in enumerate(lines):
        if re.match(r"^##\s+(References|Bibliography)", line.strip(), re.IGNORECASE):
            ref_start = idx
            break

    if ref_start is None:
        return md_text, []

    body_text = "\n".join(lines[:ref_start])

    # Parse reference entries: lines starting with [N]
    ref_entries = []
    for idx in range(ref_start + 1, n):
        stripped = lines[idx].strip()
        if not stripped or stripped in ("---", "***", "___"):
            continue
        if stripped.startswith("#"):
            break
        m = re.match(r"^\[(\d+)\]\s+(.*)", stripped)
        if m:
            ref_num = m.group(1)
            ref_text = m.group(2).strip()
            ref_entries.append((f"b{ref_num}", ref_text))

    return body_text, ref_entries


# ============================================================
# CITATION INLINER  — convert [N] → \cite{bN} in body text
# ============================================================

def inline_citations(tex_body: str) -> str:
    """Replace numeric citation markers [N] with \\cite{bN} in LaTeX body.

    Handles single refs [1] and comma-separated groups [1, 2, 3].
    Avoids replacing inside \\bibitem lines and existing \\cite commands.
    """
    def _repl_cite(m):
        inner = m.group(1)
        # Check for comma-separated refs like "1, 2, 3"
        nums = [n.strip() for n in inner.split(",")]
        if all(re.match(r"^\d+$", n) for n in nums):
            keys = ",".join(f"b{n}" for n in nums)
            return r"\cite{" + keys + "}"
        return m.group(0)

    # Only replace [N] patterns that look like citations (digits only)
    result = re.sub(r"\[(\d+(?:\s*,\s*\d+)*)\]", _repl_cite, tex_body)
    return result


# ============================================================
# IEEE LATEX TEMPLATE
# ============================================================

IEEE_TEX_TEMPLATE = r"""\documentclass[conference]{IEEEtran}
\IEEEoverridecommandlockouts

%% ---- Packages ----
\usepackage{cite}
\usepackage{amsmath,amssymb,amsfonts}
\usepackage{algorithmic}
\usepackage{graphicx}
\usepackage{textcomp}
\usepackage{xcolor}
\usepackage{float}
\usepackage{booktabs}
\usepackage{array}
\usepackage{longtable}

%% ---- Code listings ----
\usepackage{listings}

\definecolor{codebg}{rgb}{0.97,0.97,0.97}
\definecolor{codecomment}{rgb}{0.4,0.4,0.4}
\definecolor{codestring}{rgb}{0.2,0.4,0.2}
\definecolor{codekeyword}{rgb}{0.0,0.3,0.6}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{codebg},
  commentstyle=\color{codecomment}\itshape,
  keywordstyle=\color{codekeyword}\bfseries,
  stringstyle=\color{codestring},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  captionpos=b,
  keepspaces=true,
  numbers=none,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=2,
  frame=single,
  rulecolor=\color{gray!40},
  xleftmargin=4pt,
  xrightmargin=4pt,
}

%% Verilog keyword extension
\lstdefinelanguage{Verilog}{%%
  morekeywords={module,endmodule,input,output,inout,wire,reg,%%
    always,posedge,negedge,begin,end,if,else,case,endcase,default,%%
    assign,parameter,localparam,initial,for,while,integer,%%
    generate,endgenerate,genvar},
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  sensitive=true
}

%% ---- Framed boxes for notes ----
\usepackage{mdframed}
\mdfdefinestyle{impnote}{%%
  linecolor=blue!40,
  backgroundcolor=blue!5,
  linewidth=1pt,
  topline=true, bottomline=true,
  leftline=true, rightline=false,
  innerleftmargin=6pt,
  innerrightmargin=6pt,
  innertopmargin=4pt,
  innerbottommargin=4pt,
}

%% ---- Hyperlinks ----
\usepackage[colorlinks=true, linkcolor=blue!70!black,
            citecolor=green!50!black, urlcolor=blue]{hyperref}

\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
    T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

%% ============================================================
\begin{document}

TITLE_BLOCK

AUTHOR_BLOCK

\maketitle

\begin{abstract}
ABSTRACT_PLACEHOLDER
\end{abstract}

KEYWORDS_BLOCK

CONTENT_PLACEHOLDER

ACKNOWLEDGMENT_PLACEHOLDER

REFERENCES_BLOCK

\end{document}
"""


# ============================================================
# AUTHOR BLOCK BUILDER
# ============================================================

def build_author_block(authors: list[str], affiliation: str,
                       mentor: dict | None = None,
                       equal_contribution: bool = True) -> str:
    """Build an IEEEtran author block from author names and shared affiliation.

    Parameters
    ----------
    authors : list[str]
        List of author names.
    affiliation : str
        Comma-separated affiliation string (dept, university, city, country).
    mentor : dict or None
        Optional mentor/second-author dict with keys:
        'name', 'title_prefix' (e.g. 'Assistant Professor'),
        'affiliation' (e.g. 'Centre for ..., PES University, ...').
    equal_contribution : bool
        If True, all authors are marked as equal contributors with a
        shared footnote (standard IEEE practice for co-first authorship).
    """
    if not authors:
        return ""

    # Parse affiliation into parts (comma-separated)
    aff_parts = [p.strip() for p in affiliation.split(",")]

    blocks = []
    for idx, author in enumerate(authors):
        author_escaped = esc(author)
        # First author carries the \thanks{} footnote text for *;
        # subsequent student authors reference the same * mark.
        if equal_contribution:
            if idx == 0:
                mark = r"\thanks{$^{*}$These authors contributed equally to this work.}"
            else:
                mark = r"\textsuperscript{*}"
        else:
            mark = ""
        name_line = f"\\IEEEauthorblockN{{{author_escaped}{mark}}}\n"
        # All authors share the same affiliation
        if aff_parts:
            aff_lines = []
            for part in aff_parts:
                aff_lines.append(f"\\textit{{{esc(part.strip())}}}")
            name_line += "\\IEEEauthorblockA{" + " \\\\\n".join(aff_lines) + "}"
        blocks.append(name_line)

    # --- Mentor / second author block (distinguished with †) ---
    if mentor:
        mentor_escaped = esc(mentor["name"])
        # † mark on the mentor name, with a \thanks footnote for the role
        mentor_mark = r"\thanks{$^{\dagger}$Project Guide.}"
        name_line = f"\\IEEEauthorblockN{{{mentor_escaped}\\textsuperscript{{\\dag}}{mentor_mark}}}\n"
        # Build affiliation with title prefix
        mentor_aff_parts = []
        if mentor.get("title_prefix"):
            mentor_aff_parts.append(f"\\textit{{{esc(mentor['title_prefix'])}}}")
        if mentor.get("affiliation"):
            for part in mentor["affiliation"].split(","):
                mentor_aff_parts.append(f"\\textit{{{esc(part.strip())}}}")
        elif aff_parts:
            # Fall back to shared affiliation if mentor has none
            for part in aff_parts:
                mentor_aff_parts.append(f"\\textit{{{esc(part.strip())}}}")
        if mentor_aff_parts:
            name_line += "\\IEEEauthorblockA{" + " \\\\\n".join(mentor_aff_parts) + "}"
        blocks.append(name_line)

    return "\\author{" + "\n\\and\n".join(blocks) + "\n}"


# ============================================================
# MAIN BUILD FUNCTION
# ============================================================

def build_ieee_tex(md_text: str, md_base_dir: Path | None = None) -> str:
    """Convert paper_draft.md to a full IEEE conference LaTeX document."""

    # --- Parse front-matter ---
    info, body_start_line = parse_front_matter(md_text)

    # --- Separate references from body ---
    body_lines = md_text.splitlines()[body_start_line:]
    body_md = "\n".join(body_lines)
    body_md, ref_entries = parse_references(body_md)

    # --- Monkey-patch converters for IEEE style ---
    orig_heading = convert_to_latex.heading_to_latex
    orig_table = convert_to_latex.convert_table
    convert_to_latex.heading_to_latex = heading_to_latex_ieee
    convert_to_latex.convert_table = convert_table_ieee
    try:
        body_tex = convert_md(body_md, md_base_dir=md_base_dir)
    finally:
        convert_to_latex.heading_to_latex = orig_heading
        convert_to_latex.convert_table = orig_table

    # --- Remove horizontal rules (not used in IEEE format) ---
    body_tex = re.sub(r"\\vspace\{0\.4em\}\\hrule\\vspace\{0\.4em\}\n?", "", body_tex)

    # --- Fix image widths for IEEE two-column format ---
    body_tex = body_tex.replace(
        r"\includegraphics[width=0.85\textwidth]",
        r"\includegraphics[width=\columnwidth]"
    )

    # --- Convert citations [N] → \cite{bN} ---
    body_tex = inline_citations(body_tex)

    # --- Build title block ---
    title_tex = "\\title{" + esc(info["title"]) + "}"

    # --- Build author block ---
    author_tex = build_author_block(info["authors"], info["affiliation"],
                                     mentor=info.get("mentor"))

    # --- Build abstract ---
    abstract_tex = fmt_inline(info["abstract"]) if info["abstract"] else ""

    # --- Build keywords ---
    if info["keywords"]:
        kw_tex = "\\begin{IEEEkeywords}\n"
        kw_tex += ", ".join(esc(k) for k in info["keywords"])
        kw_tex += "\n\\end{IEEEkeywords}"
    else:
        kw_tex = ""

    # --- Build references ---
    if ref_entries:
        ref_tex = "\\begin{thebibliography}{00}\n"
        for label, text in ref_entries:
            # Escape special chars in reference text but preserve italics
            # Convert *...* to \textit{...} in reference text
            ref_processed = re.sub(r"\*([^*]+)\*", r"\\textit{\1}", text)
            ref_processed = esc(ref_processed)
            # Restore \textit that got escaped
            ref_processed = ref_processed.replace(r"\textbackslash{}textit\{", r"\textit{")
            ref_processed = ref_processed.replace(r"\textbackslash{}", "\\")
            ref_processed = ref_processed.replace(r"\}", "}")
            ref_processed = ref_processed.replace(r"\{", "{")
            ref_tex += f"\\bibitem{{{label}}} {ref_processed}\n"
        ref_tex += "\\end{thebibliography}"
    else:
        ref_tex = ""

    # --- Build acknowledgment (if present in body, extract it) ---
    ack_tex = ""
    # Check if there's an acknowledgment section in the body
    ack_match = re.search(r"\\section\{Acknowledg", body_tex)
    if ack_match:
        # Extract and move acknowledgment to proper IEEE position
        # For now, leave it inline — IEEE template places it before references
        pass

    # --- Assemble the document ---
    tex = IEEE_TEX_TEMPLATE
    tex = tex.replace("TITLE_BLOCK", title_tex)
    tex = tex.replace("AUTHOR_BLOCK", author_tex)
    tex = tex.replace("ABSTRACT_PLACEHOLDER", abstract_tex)
    tex = tex.replace("KEYWORDS_BLOCK", kw_tex)
    tex = tex.replace("CONTENT_PLACEHOLDER", body_tex)
    tex = tex.replace("ACKNOWLEDGMENT_PLACEHOLDER", ack_tex)
    tex = tex.replace("REFERENCES_BLOCK", ref_tex)

    return tex


# ============================================================
# ENTRY POINT
# ============================================================

def main():
    here = Path(__file__).resolve().parent

    md_name = "paper_draft.md"
    md_path = here / md_name

    if not md_path.exists():
        print(f"⚠  {md_name} not found in {here}")
        sys.exit(1)

    print(f"Converting {md_name} (IEEE conference format) ...", end="  ")
    md_text = md_path.read_text(encoding="utf-8")
    tex = build_ieee_tex(md_text, md_base_dir=md_path.parent)

    tex_path = md_path.with_suffix(".tex")
    tex_path.write_text(tex, encoding="utf-8")
    print(f"-> {tex_path.name}")

    print(f"\nDone. Compile with:")
    print(f"  pdflatex {tex_path.name}")
    print(f"(Run twice for citation/page refs)")


if __name__ == "__main__":
    main()
