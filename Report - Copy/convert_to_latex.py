#!/usr/bin/env python3
"""
convert_to_latex.py — Markdown → LaTeX converter for the DPR project report.

Usage:  python convert_to_latex.py
Output: One .tex file per Chapter*.md, plus main.tex
"""

import re
import sys
from pathlib import Path

# ============================================================
# LATEX ESCAPE HELPERS
# ============================================================

def esc(text: str) -> str:
    """Escape LaTeX special chars in plain prose text."""
    text = text.replace("\\", "\x00BS\x00")
    text = text.replace("{",  "\x00LB\x00")
    text = text.replace("}",  "\x00RB\x00")
    text = text.replace("&",  r"\&")
    text = text.replace("%",  r"\%")
    text = text.replace("#",  r"\#")
    text = text.replace("_",  r"\_")
    text = text.replace("^",  r"\textasciicircum{}")
    text = text.replace("~",  r"\textasciitilde{}")
    text = text.replace("<",  r"\textless{}")
    text = text.replace(">",  r"\textgreater{}")
    text = text.replace("\x00BS\x00", r"\textbackslash{}")
    text = text.replace("\x00LB\x00", r"\{")
    text = text.replace("\x00RB\x00", r"\}")
    return text


def esc_code(text: str) -> str:
    """Escape for inside \\texttt{...} — subset of full escaping."""
    text = text.replace("\\", r"\textbackslash{}")
    text = text.replace("{",  r"\{")
    text = text.replace("}",  r"\}")
    text = text.replace("&",  r"\&")
    text = text.replace("%",  r"\%")
    text = text.replace("#",  r"\#")
    text = text.replace("_",  r"\_")
    text = text.replace("^",  r"\textasciicircum{}")
    text = text.replace("~",  r"\textasciitilde{}")
    text = text.replace("<",  r"\textless{}")
    text = text.replace(">",  r"\textgreater{}")
    text = text.replace("$",  r"\$")
    return text


# ============================================================
# INLINE FORMATTER  (bold, italic, inline-code, math, links)
# ============================================================

def fmt_inline(text: str) -> str:
    """
    Process one string of inline markdown into LaTeX.
    Handles (in priority order):
      $...$ math (pass through), `code`, **bold**, *italic*,
      [text](url) links (drop URL), plain text (escaped).
    """
    result = []
    i = 0
    n = len(text)

    while i < n:

        # ---- Math span: $...$ ----
        if text[i] == "$" and i + 1 < n:
            j = text.find("$", i + 1)
            if j != -1:
                result.append(text[i : j + 1])   # preserve as-is
                i = j + 1
                continue

        # ---- Inline code: `...` ----
        if text[i] == "`":
            j = text.find("`", i + 1)
            if j != -1:
                inner = text[i + 1 : j]
                result.append(r"\texttt{" + esc_code(inner) + r"}")
                i = j + 1
                continue

        # ---- Bold: **...** ----
        if text[i : i + 2] == "**":
            j = text.find("**", i + 2)
            if j != -1:
                inner = fmt_inline(text[i + 2 : j])
                result.append(r"\textbf{" + inner + r"}")
                i = j + 2
                continue

        # ---- Italic: *...* (not **) ----
        if (text[i] == "*" and
                (i + 1 < n and text[i + 1] != "*")):
            j = i + 1
            while j < n:
                if text[j] == "*" and not (j + 1 < n and text[j + 1] == "*"):
                    break
                j += 1
            if j < n and j != i + 1:
                inner = fmt_inline(text[i + 1 : j])
                result.append(r"\textit{" + inner + r"}")
                i = j + 1
                continue

        # ---- Markdown link: [text](url) — keep only text ----
        if text[i] == "[":
            m = re.match(r"\[([^\]]+)\]\([^\)]+\)", text[i:])
            if m:
                result.append(fmt_inline(m.group(1)))
                i += len(m.group(0))
                continue

        # ---- Plain character ----
        c = text[i]
        special = {
            "\\": r"\textbackslash{}",
            "{":  r"\{",  "}": r"\}",
            "&":  r"\&",  "%": r"\%",  "#": r"\#",
            "_":  r"\_",
            "^":  r"\textasciicircum{}",
            "~":  r"\textasciitilde{}",
            "<":  r"\textless{}",
            ">":  r"\textgreater{}",
        }
        result.append(special.get(c, c))
        i += 1

    return "".join(result)


# ============================================================
# HEADING CONVERTER
# ============================================================

def heading_to_latex(line: str) -> str:
    m = re.match(r"^(#{1,5})\s+(.*)", line)
    if not m:
        return ""
    level = len(m.group(1))
    raw = m.group(2).strip()

    # Foreword — render as an unnumbered section inside the Preamble chapter
    if raw.strip() == "Foreword":
        return "\\chapter{Preamble}\n\n\\section*{Foreword}"

    # "# Chapter 1: Preamble" — the \chapter{} was already emitted by the
    # Foreword handler above, so suppress the duplicate heading entirely.
    if level == 1 and re.match(r"^Chapter\s+1\b", raw):
        return ""

    # Strip "Chapter X:" prefix from # (level-1) headings
    raw = re.sub(r"^Chapter\s+\d+[:\s]+", "", raw)

    # Strip leading "X.Y.Z " numbering from all headings
    raw = re.sub(r"^\d+(\.\d+)*\.?\s+", "", raw)

    title = fmt_inline(raw)

    cmds = {1: r"\chapter",
            2: r"\section",
            3: r"\subsection",
            4: r"\subsubsection",
            5: r"\paragraph"}
    cmd = cmds.get(level, r"\paragraph")
    suffix = "{" + title + "}"
    if level == 5:
        suffix += "~\\\\"      # paragraph needs separation
    return cmd + suffix


# ============================================================
# TABLE CONVERTER
# ============================================================

def convert_table(table_lines: list) -> str:
    rows = []
    for raw in table_lines:
        raw = raw.strip()
        if not raw.startswith("|"):
            continue
        # Skip separator rows  (|---|---|)
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
    lines += [r"\bottomrule",
              r"\end{tabular}",
              r"\end{table}"]
    return "\n".join(lines)


# ============================================================
# CODE BLOCK CONVERTER
# ============================================================

LANG_MAP = {
    "python":  "Python",
    "verilog": "Verilog",
    "tcl":     "tcl",
    "bash":    "bash",
    "sh":      "bash",
    "c":       "C",
    "cpp":     "C++",
    "java":    "Java",
    "":        "",
}


def convert_code_block(lang: str, code_lines: list) -> str:
    lang_norm = lang.lower().strip()
    lst_lang  = LANG_MAP.get(lang_norm, "")
    content   = "\n".join(code_lines)

    # Replace common unicode box-drawing chars with ASCII fallback
    box_repl = {
        "┌": "+", "┐": "+", "└": "+", "┘": "+",
        "├": "+", "┤": "+", "┬": "+", "┴": "+", "┼": "+",
        "─": "-", "│": "|",
        "▼": "v", "►": ">", "◄": "<",
    }
    for ch, rep in box_repl.items():
        content = content.replace(ch, rep)

    opts = "style=mystyle"
    if lst_lang:
        opts += f", language={lst_lang}"

    return (f"\\begin{{lstlisting}}[{opts}]\n"
            f"{content}\n"
            f"\\end{{lstlisting}}")


# ============================================================
# BLOCKQUOTE CONVERTER
# ============================================================

def convert_blockquote(bq_lines: list) -> str:
    text = " ".join(bq_lines)
    # Implementation Note
    if re.search(r"\*\*Implementation Note", text):
        text = re.sub(r"\*\*Implementation Note[:\s]*[^\*]*(:\*\*)?\*\*:?\s*", "", text).strip()
        inner = fmt_inline(text)
        return ("\\begin{mdframed}[style=impnote]\n"
                "\\textbf{Implementation Note:}\\quad " + inner + "\n"
                "\\end{mdframed}")
    else:
        inner = fmt_inline(text)
        return "\\begin{quote}\n" + inner + "\n\\end{quote}"


# ============================================================
# FIGURE PLACEHOLDER
# ============================================================

def make_figure(caption: str) -> str:
    return ("\\begin{figure}[htbp]\n"
            "\\centering\n"
            "\\fbox{\\parbox{0.7\\textwidth}{\\centering\\vspace{2em}"
            "\\textit{[Figure placeholder]}\\vspace{2em}}}\n"
            "\\caption{" + fmt_inline(caption) + "}\n"
            "\\end{figure}")


# ============================================================
# MAIN CONVERTER  (block-level state machine)
# ============================================================

def convert_md(md_text: str) -> str:
    lines      = md_text.splitlines()
    out        = []
    i          = 0
    n          = len(lines)
    in_item    = False   # itemize open?
    in_enum    = False   # enumerate open?
    para_buf   = []

    def flush_para():
        nonlocal para_buf
        if para_buf:
            joined = " ".join(l.strip() for l in para_buf if l.strip())
            if joined:
                out.append(fmt_inline(joined))
                out.append("")
        para_buf = []

    def close_lists():
        nonlocal in_item, in_enum
        if in_item:
            out.append(r"\end{itemize}")
            in_item = False
        if in_enum:
            out.append(r"\end{enumerate}")
            in_enum = False

    while i < n:
        raw     = lines[i]
        stripped = raw.strip()

        # ----  Fenced code block  ```...``` ----
        fence_m = re.match(r"^```(\w*)", stripped)
        if fence_m:
            flush_para()
            close_lists()
            lang       = fence_m.group(1)
            code_lines = []
            i += 1
            while i < n:
                if lines[i].strip() == "```":
                    break
                code_lines.append(lines[i])
                i += 1
            i += 1  # skip closing ```
            out.append(convert_code_block(lang, code_lines))
            out.append("")
            continue

        # ----  Horizontal rule  ----
        if stripped in ("---", "***", "___"):
            flush_para()
            close_lists()
            out.append(r"\vspace{0.4em}\hrule\vspace{0.4em}")
            out.append("")
            i += 1
            continue

        # ----  Blank line  ----
        if stripped == "":
            flush_para()
            # Look ahead: if the next non-empty line is still a list item of
            # the same type, keep the list open (don't close it yet).
            j = i + 1
            while j < n and lines[j].strip() == "":
                j += 1
            next_stripped = lines[j].strip() if j < n else ""
            next_is_bullet   = bool(re.match(r"^[*\-]\s+", next_stripped))
            next_is_numbered = bool(re.match(r"^\d+\.\s+", next_stripped))
            if not ((in_item and next_is_bullet) or
                    (in_enum and next_is_numbered)):
                close_lists()
            i += 1
            continue

        # ----  Markdown table  ----
        if stripped.startswith("|"):
            flush_para()
            close_lists()
            tbl_lines = []
            while i < n and lines[i].strip().startswith("|"):
                tbl_lines.append(lines[i])
                i += 1
            out.append(convert_table(tbl_lines))
            out.append("")
            continue

        # ----  Heading  ----
        if stripped.startswith("#"):
            flush_para()
            close_lists()
            latex_h = heading_to_latex(stripped)
            if latex_h:
                out.append(latex_h)
                out.append("")
            i += 1
            continue

        # ----  Blockquote  ----
        if stripped.startswith(">"):
            flush_para()
            close_lists()
            bq = []
            while i < n and lines[i].strip().startswith(">"):
                bq.append(lines[i].strip().lstrip(">").strip())
                i += 1
            out.append(convert_blockquote(bq))
            out.append("")
            continue

        # ----  Figure placeholder  *[Figure X.X: caption]* ----
        fig_m = re.match(r"^\*\[Figure\s+[\d.X]+[:\s]+(.*?)\]\*$", stripped)
        if fig_m:
            flush_para()
            close_lists()
            out.append(make_figure(fig_m.group(1)))
            out.append("")
            i += 1
            continue

        # ----  Bullet list item  ----
        if re.match(r"^[*\-]\s+", stripped):
            flush_para()
            if not in_item:
                close_lists()
                out.append(r"\begin{itemize}")
                in_item = True
            content = re.sub(r"^[*\-]\s+", "", stripped)
            out.append(r"  \item " + fmt_inline(content))
            i += 1
            continue

        # ----  Numbered list item  ----
        if re.match(r"^\d+\.\s+", stripped):
            flush_para()
            if not in_enum:
                close_lists()
                out.append(r"\begin{enumerate}")
                in_enum = True
            content = re.sub(r"^\d+\.\s+", "", stripped)
            out.append(r"  \item " + fmt_inline(content))
            i += 1
            continue

        # ----  Normal text (accumulate into paragraph)  ----
        close_lists()
        para_buf.append(raw)
        i += 1

    flush_para()
    close_lists()
    return "\n".join(out)


# ============================================================
# MAIN LATEX PREAMBLE  (main.tex)
# ============================================================

MAIN_TEX = r"""\documentclass[12pt,a4paper]{report}

% ---- Encoding & font ----
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}

% ---- Page geometry ----
\usepackage[a4paper, top=25mm, bottom=25mm, left=35mm, right=25mm]{geometry}

% ---- Maths ----
\usepackage{amsmath}
\usepackage{amssymb}

% ---- Graphics ----
\usepackage{graphicx}
\usepackage{float}

% ---- Tables ----
\usepackage{booktabs}
\usepackage{array}
\usepackage{longtable}

% ---- Code listings ----
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codebg}{rgb}{0.97,0.97,0.97}
\definecolor{codecomment}{rgb}{0.4,0.4,0.4}
\definecolor{codestring}{rgb}{0.2,0.4,0.2}
\definecolor{codekeyword}{rgb}{0.0,0.3,0.6}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{codebg},
  commentstyle=\color{codecomment}\itshape,
  keywordstyle=\color{codekeyword}\bfseries,
  stringstyle=\color{codestring},
  basicstyle=\ttfamily\small,
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
  xleftmargin=6pt,
  xrightmargin=6pt,
}

% Verilog keyword extension
\lstdefinelanguage{Verilog}{%
  morekeywords={module,endmodule,input,output,inout,wire,reg,%
    always,posedge,negedge,begin,end,if,else,case,endcase,default,%
    assign,parameter,localparam,initial,for,while,integer,%
    generate,endgenerate,genvar},
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  sensitive=true
}

% ---- Framed boxes for notes ----
\usepackage{mdframed}
\mdfdefinestyle{impnote}{%
  linecolor=blue!40,
  backgroundcolor=blue!5,
  linewidth=1.5pt,
  topline=true, bottomline=true,
  leftline=true, rightline=false,
  innerleftmargin=8pt,
  innerrightmargin=8pt,
  innertopmargin=6pt,
  innerbottommargin=6pt,
}

% ---- Paragraph spacing ----
\usepackage{parskip}
\setlength{\parskip}{6pt}
\setlength{\parindent}{0pt}

% ---- Hyperlinks ----
\usepackage[colorlinks=true, linkcolor=blue!70!black,
            citecolor=green!50!black, urlcolor=blue]{hyperref}

% ---- Headers/footers ----
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\leftmark}
\fancyhead[R]{\small\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% ============================================================
\begin{document}

% ---- Title page ----
\begin{titlepage}
  \centering
  \vspace*{3cm}
  {\LARGE\bfseries Dynamic Partial Reconfiguration of a\\[0.4em]
   RISC-V Custom Function Unit\\[0.4em]
   on 7-Series FPGAs\par}
  \vspace{2cm}
  {\large Capstone Project Report\par}
  \vspace{1.5cm}
  {\large Group 18\par}
  \vfill
  {\large \today\par}
\end{titlepage}

% ---- Front matter ----
\tableofcontents
\clearpage

% ---- Chapters ----
\include{Chapter1_Preamble}
\include{Chapter2_LiteratureReview}
\include{Chapter3_Background}
\include{Chapter4_Design_Implementation}
\include{Chapter5_Software_Firmware}
\include{Chapter6_Results_Analysis}
\include{Chapter7_Conclusion_FutureWork}

\end{document}
"""


# ============================================================
# ENTRY POINT
# ============================================================

def main():
    here = Path(__file__).parent
    md_files = sorted(here.glob("Chapter*.md"))

    if not md_files:
        print("No Chapter*.md files found in", here)
        sys.exit(1)

    for md_path in md_files:
        print(f"Converting {md_path.name} ...", end="  ")
        md_text = md_path.read_text(encoding="utf-8")
        tex     = convert_md(md_text)
        tex_path = md_path.with_suffix(".tex")
        tex_path.write_text(tex, encoding="utf-8")
        print(f"-> {tex_path.name}")

    # Write main.tex
    main_tex_path = here / "main.tex"
    main_tex_path.write_text(MAIN_TEX, encoding="utf-8")
    print(f"\nWrote {main_tex_path}")
    print("\nDone. Compile with:  pdflatex main.tex  (run twice for TOC/refs)")


if __name__ == "__main__":
    main()
