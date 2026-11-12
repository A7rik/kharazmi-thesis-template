%%
%%  kharazmi-thesis.cls
%%  LaTeX Document Class for Kharazmi University Theses and Dissertations
%%  Designed to conform to Kharazmi University guidelines (1402)
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kharazmi-thesis}[2026/11/12 v1.0 Kharazmi University Thesis Document Class]

% -----------------------------------------------------------------------------
% Class Options
% -----------------------------------------------------------------------------
\newif\if@mscthesis
\newif\if@phdthesis
\newif\if@bscthesis
\@mscthesistrue
\@phdthesisfalse
\@bscthesisfalse

\DeclareOption{msc}{\@mscthesistrue\@phdthesisfalse\@bscthesisfalse}
\DeclareOption{phd}{\@mscthesisfalse\@phdthesistrue\@bscthesisfalse}
\DeclareOption{bsc}{\@mscthesisfalse\@phdthesisfalse\@bscthesistrue}

\newif\if@harfifrontmatter
\@harfifrontmatterfalse
\DeclareOption{harfifrontmatter}{\@harfifrontmattertrue}

\DeclareOption{draft}{\PassOptionsToClass{draft}{report}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% -----------------------------------------------------------------------------
% Base Class Loading (A4 Paper, 12pt Base, Oneside)
% -----------------------------------------------------------------------------
\LoadClass[a4paper,12pt,oneside]{report}

% -----------------------------------------------------------------------------
% Page Geometry & Margins
% Official guidelines: Top=3.5cm, Bottom=2.5cm, Right=3.0cm, Left=3.0cm
% Header distance from top edge: ~2.25cm (headsep=0.8cm, headheight=15pt)
% -----------------------------------------------------------------------------
\RequirePackage[
  a4paper,
  top=3.5cm,
  bottom=2.5cm,
  right=3.0cm,
  left=3.0cm,
  headheight=17pt,
  headsep=0.8cm,
  footskip=0.8cm
]{geometry}

% -----------------------------------------------------------------------------
% Required Packages (Loaded before XePersian)
% -----------------------------------------------------------------------------
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{graphicx}
\graphicspath{{images/}{./}}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$-$}
\renewcommand{\labelitemiii}{$\ast$}
\renewcommand{\labelitemiv}{$\cdot$}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage[titles]{tocloft}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{listings}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage[perpage]{footmisc}
\RequirePackage{makeidx}
\RequirePackage[
  unicode=true,
  bookmarks=true,
  bookmarksnumbered=true,
  hidelinks,
  pdfstartview=FitH
]{hyperref}

% -----------------------------------------------------------------------------
% Paragraph Formatting & Indentation
% Line spacing: 1.15
% First-line indent: 0.5cm
% Paragraph spacing: 0pt
% -----------------------------------------------------------------------------
\setstretch{1.15}
\setlength{\parindent}{0.5cm}
\setlength{\parskip}{0pt}

% -----------------------------------------------------------------------------
% Persian Numbering Format for Hierarchical Sections, Floats & Math
% Format matching guidelines: 1-1., 1-1-1., 2-3., (1-1)
% -----------------------------------------------------------------------------
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter-\arabic{section}}
\renewcommand{\thesubsection}{\thesection-\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection-\arabic{subsubsection}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\thealgorithm}{\thechapter-\arabic{algorithm}}

% -----------------------------------------------------------------------------
% Headings Formatting (titlesec)
% H1 (Chapter): 16pt Bold, before spacing ~100-168pt, after 4pt
% H2 (Section): 13pt Bold, before spacing 18pt, after 4pt
% H3 (Subsection): 12pt Bold, before spacing 12pt, after 4pt
% H4 (Subsubsection): 12pt Bold, before spacing 12pt, after 4pt
% -----------------------------------------------------------------------------
\titleformat{\chapter}[block]
  {\normalfont\fontsize{16pt}{22pt}\selectfont\bfseries}
  {\thechapter.\ }
  {0.4em}
  {}
\titlespacing*{\chapter}{0pt}{100pt}{12pt}

\titleformat{name=\chapter,numberless}[block]
  {\normalfont\fontsize{16pt}{22pt}\selectfont\bfseries\centering}
  {}
  {0pt}
  {}
\titlespacing*{name=\chapter,numberless}{0pt}{50pt}{12pt}

\titleformat{\section}[block]
  {\normalfont\fontsize{13pt}{18pt}\selectfont\bfseries}
  {\thesection.\ }
  {0.4em}
  {}
\titlespacing*{\section}{0pt}{18pt}{4pt}

\titleformat{\subsection}[block]
  {\normalfont\fontsize{12pt}{16pt}\selectfont\bfseries}
  {\thesubsection.\ }
  {0.4em}
  {}
\titlespacing*{\subsection}{0pt}{12pt}{4pt}

\titleformat{\subsubsection}[block]
  {\normalfont\fontsize{12pt}{16pt}\selectfont\bfseries}
  {\thesubsubsection.\ }
  {0.4em}
  {}
\titlespacing*{\subsubsection}{0pt}{12pt}{4pt}

% -----------------------------------------------------------------------------
% Captions Styling (caption)
% Table captions: ABOVE, 9pt bold centered, skip 4pt
% Figure captions: BELOW, 9pt bold centered, skip 6pt
% Separator: colon
% -----------------------------------------------------------------------------
\DeclareCaptionFont{nineptbold}{\fontsize{9pt}{12pt}\selectfont\bfseries}
\captionsetup{
  font=nineptbold,
  labelfont=nineptbold,
  textfont=nineptbold,
  justification=centering,
  labelsep=colon
}
\captionsetup[table]{position=above, skip=4pt}
\captionsetup[figure]{position=below, skip=6pt}

% -----------------------------------------------------------------------------
% Float Definitions: Chart (نمودار)
% -----------------------------------------------------------------------------
\newfloat{chart}{htbp}{loc}[chapter]
\floatname{chart}{نمودار}
\newcommand{\listofcharts}{\listof{chart}{فهرست نمودارها}}
\renewcommand{\thechart}{\thechapter-\arabic{chart}}

% -----------------------------------------------------------------------------
% Header & Footer Styling (fancyhdr)
% Word template / Guidelines format: [title]  |  [page]
% Rule width: 0.6pt
% Suppressed on chapter first page, covers, besmellah
% -----------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\fontsize{12pt}{15pt}\selectfont\leftmark\quad\lr{|}\quad\thepage}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}

\renewcommand{\chaptermark}[1]{%
  \markboth{فصل \thechapter:\ #1}{}%
}
\newcommand{\setheader}[1]{%
  \markboth{#1}{}%
}

% -----------------------------------------------------------------------------
% Table of Contents Formatting (tocloft)
% Dotted leaders for all levels including chapters
% -----------------------------------------------------------------------------
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesecskip}{3pt}

% -----------------------------------------------------------------------------
% Code Listings Styling (listings)
% -----------------------------------------------------------------------------
\lstset{
  basicstyle=\small\ttfamily,
  numbers=left,
  numberstyle=\tiny,
  stepnumber=1,
  numbersep=8pt,
  frame=single,
  rulecolor=\color{black!30},
  tabsize=2,
  breaklines=true,
  breakatwhitespace=false,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  captionpos=b,
  backgroundcolor=\color{gray!4}
}
\AtBeginDocument{%
  \def\lstlistingname{کد}%
  \def\lstlistlistingname{\if@RTL فهرست کدها\else Listings\fi}%
  \renewcommand{\thelstlisting}{\thechapter-\arabic{lstlisting}}%
  \renewcommand{\thealgorithm}{\thechapter-\arabic{algorithm}}%
  \renewcommand{\bibname}{فهرست منابع}%
}

% -----------------------------------------------------------------------------
% Algorithms Styling & Persian Keywords
% -----------------------------------------------------------------------------
\floatname{algorithm}{الگوریتم}
\renewcommand{\listalgorithmname}{فهرست الگوریتم‌ها}
\numberwithin{algorithm}{chapter}
\renewcommand{\thealgorithm}{\thechapter-\arabic{algorithm}}

\renewcommand{\algorithmicrequire}{\textbf{ورودی:}}
\renewcommand{\algorithmicensure}{\textbf{خروجی:}}
\renewcommand{\algorithmicif}{\textbf{اگر}}
\renewcommand{\algorithmicthen}{\textbf{آنگاه}}
\renewcommand{\algorithmicelse}{\textbf{وگرنه}}
\renewcommand{\algorithmicendif}{\textbf{پایان شرط}}
\renewcommand{\algorithmicfor}{\textbf{برای}}
\renewcommand{\algorithmicforall}{\textbf{برای هر}}
\renewcommand{\algorithmicdo}{\textbf{انجام بده}}
\renewcommand{\algorithmicendfor}{\textbf{پایان حلقه}}
\renewcommand{\algorithmicwhile}{\textbf{تا زمانی که}}
\renewcommand{\algorithmicendwhile}{\textbf{پایان حلقه}}
\renewcommand{\algorithmicloop}{\textbf{تکرار کن}}
\renewcommand{\algorithmicendloop}{\textbf{پایان حلقه}}
\renewcommand{\algorithmicrepeat}{\textbf{تکرار کن}}
\renewcommand{\algorithmicuntil}{\textbf{تا زمانی که}}
\renewcommand{\algorithmicprint}{\textbf{چاپ کن}}
\renewcommand{\algorithmicreturn}{\textbf{بازگردان}}
\renewcommand{\algorithmicto}{\textbf{تا}}
\renewcommand{\algorithmicand}{\textbf{و}}
\renewcommand{\algorithmicor}{\textbf{یا}}
\renewcommand{\algorithmicnot}{\textbf{نقیض}}
\renewcommand{\algorithmictrue}{\textbf{درست}}
\renewcommand{\algorithmicfalse}{\textbf{نادرست}}

% -----------------------------------------------------------------------------
% Matter Partitioning Commands (Front, Main, Back Matter)
% -----------------------------------------------------------------------------
\newcommand{\frontmatter}{%
  \cleardoublepage
  \if@harfifrontmatter
    \pagenumbering{harfi}
  \else
    \pagenumbering{arabic}
  \fi
  \pagestyle{fancy}
}

\newcommand{\mainmatter}{%
  \cleardoublepage
  \if@harfifrontmatter
    \pagenumbering{arabic}
  \fi
  \pagestyle{fancy}
}

\newcommand{\backmatter}{%
  \cleardoublepage
}

\endinput
