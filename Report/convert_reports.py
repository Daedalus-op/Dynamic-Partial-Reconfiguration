#!/usr/bin/env python3
"""
convert_reports.py — Convert report_short_plan.md and report_short_plan_v2.md
to standalone LaTeX files for page-count comparison.

Reuses the conversion engine from convert_to_latex.py.

Usage:  python convert_reports.py
Output: report_short_plan.tex, report_short_plan_v2.tex
        Then compile each with:  pdflatex <file>.tex
"""

import sys
from pathlib import Path

# Import the converter from the existing script
sys.path.insert(0, str(Path(__file__).parent))
from convert_to_latex import convert_md, MAIN_TEX

# ============================================================
# STANDALONE LATEX TEMPLATE (self-contained, no \include)
# ============================================================

STANDALONE_TEX = r"""\documentclass[12pt,a4paper]{report}

%% ---- Encoding & font ----
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}

%% ---- Page geometry ----
\usepackage[a4paper, top=25mm, bottom=25mm, left=15mm, right=15mm]{geometry}

%% ---- Maths ----
\usepackage{amsmath}
\usepackage{amssymb}

%% ---- Graphics ----
\usepackage{graphicx}
\usepackage{float}

%% ---- Tables ----
\usepackage{booktabs}
\usepackage{array}
\usepackage{longtable}

%% ---- Code listings ----
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
  linewidth=1.5pt,
  topline=true, bottomline=true,
  leftline=true, rightline=false,
  innerleftmargin=8pt,
  innerrightmargin=8pt,
  innertopmargin=6pt,
  innerbottommargin=6pt,
}

%% ---- Paragraph spacing ----
\usepackage{parskip}
\setlength{\parskip}{6pt}
\setlength{\parindent}{0pt}

%% ---- Hyperlinks ----
\usepackage[colorlinks=true, linkcolor=blue!70!black,
            citecolor=green!50!black, urlcolor=blue]{hyperref}

%% ---- Headers/footers ----
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\leftmark}
\fancyhead[R]{\small\thepage}
\renewcommand{\headrulewidth}{0.4pt}

%% ---- Last page for page count ----
\usepackage{lastpage}

%% ============================================================
\begin{document}

%% ---- Title page ----
\begin{titlepage}
  \centering
  \vspace*{3cm}
  {\LARGE\bfseries Dynamic Partial Reconfiguration of a\\[0.4em]
   RISC-V Custom Function Unit\\[0.4em]
   on 7-Series FPGAs\par}
  \vspace{2cm}
  {\large Capstone Project Report\\[0.5em]
   \textit{TITLE_PLACEHOLDER}\par}
  \vspace{1.5cm}
  {\large Group 18\par}
  \vfill
  {\large \today\par}
\end{titlepage}

%% ---- Front matter ----
\tableofcontents
\clearpage

%% ---- Content ----
CONTENT_PLACEHOLDER

\vfill
\begin{center}
\rule{0.5\textwidth}{0.4pt}\\[6pt]
{\small Total pages: \pageref{LastPage}}
\end{center}

\end{document}
"""


def build_standalone_tex(md_text: str, version_label: str) -> str:
    """Convert markdown to a standalone LaTeX document."""
    body = convert_md(md_text)
    tex = STANDALONE_TEX.replace("TITLE_PLACEHOLDER", version_label)
    tex = tex.replace("CONTENT_PLACEHOLDER", body)
    return tex


def main():
    here = Path(__file__).parent

    reports = [
        ("report_short_plan.md",    "Version 1 (Detailed)"),
        ("report_short_plan_v2.md", "Version 2 (Concise)"),
    ]

    for md_name, label in reports:
        md_path = here / md_name
        if not md_path.exists():
            print(f"⚠  {md_name} not found, skipping.")
            continue

        print(f"Converting {md_name} ...", end="  ")
        md_text = md_path.read_text(encoding="utf-8")
        tex = build_standalone_tex(md_text, label)

        tex_path = md_path.with_suffix(".tex")
        tex_path.write_text(tex, encoding="utf-8")
        print(f"-> {tex_path.name}")

    print("\nDone. Compile each with:")
    print("  pdflatex report_short_plan.tex")
    print("  pdflatex report_short_plan_v2.tex")
    print("(Run twice for TOC/page refs)")


if __name__ == "__main__":
    main()
