% Styly pro studijní materiály | Martin Trnecka 2020
% Styl je inspirován pracemi Edwarda Tufta a Richarda Feynmana
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripta}[2020/04/24 Example LaTeX class]

\LoadClass[10pt,oneside]{book}

% pouzite knihovny
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[czech]{babel}
\usepackage{afterpage}
\usepackage{graphicx}
\usepackage[unicode]{hyperref}
\usepackage[width=6.5in,nobreak,skipabove=0em]{fullwidth}
\usepackage{fancyhdr}
\usepackage{lipsum}
\usepackage{titlesec}
\usepackage{tocloft}
\usepackage{tabularx,booktabs}
\usepackage{listings}
\usepackage{xcolor}
\usepackage[breakable,skins]{tcolorbox}
\usepackage{textcomp}
\usepackage{setspace}
\usepackage{marginnote}
\usepackage{changepage}
\usepackage{caption}
\usepackage{enumitem}
\usepackage{dirtree}

% zakladni geometrie
\usepackage[top=1.5in, bottom=1in, inner=1in, heightrounded, marginparwidth=2in, marginparsep=0.375in, textwidth=4.125in]{geometry}  
\normalmarginpar 
 
% fonty
\usepackage[osf,sc]{mathpazo}

% styl pro kapitoly
\fancypagestyle{plain}{\fancyhf{}}
 
% bezny styl (oneside moznost je zamerna)
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset[rh, rh]{2.375in}
\renewcommand{\headrulewidth}{0pt}

% hlavicka
\fancyhead[L]{\ifodd\value{page}\else\thepage\quad\title\fi}
\fancyhead[R]{\ifodd\value{page}\Chaptername\quad\thepage\fi}
 
% radkovani
\linespread{1.1}
\renewcommand{\arraystretch}{1.2}

\captionsetup{font=footnotesize}

% uprava sazeni obsahu
\setcounter{secnumdepth}{-1} 
\setlength{\cftsecindent}{0pt}
\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{0pt}

% uvodni stranka
\renewcommand{\maketitle}{%
{\Large\it \author}\vfill
{\Huge\bf\title}\\
\vspace{0.125in}
%{\huge poznámky ke cvičením}
\vspace{2.125in}\vfill
{\large\it Katedra informatiky, Přírodovědecká fakulta, Univerzita Palackého v Olomouci}
\clearpage}

\let\Chaptermark\chaptermark
\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}

% odstraneni cislovani
\titleformat{\chapter}[display]{\normalfont\bfseries}{}{0pt}{\Huge}
\titleformat{\section}[display]{\normalfont\bfseries}{}{0pt}{\Large}
\titleformat{\subsection}[display]{\normalfont\bfseries}{}{0pt}{\large}

\setlength{\parindent}{0cm}

\definecolor{lightgray}{gray}{0.99}
\definecolor{stringcolor}{RGB}{255,140,0}
\definecolor{keywordcolor}{RGB}{67,110,238}
\definecolor{syntaxcolor}{RGB}{150,0,205}


% Jazyk C
\lstdefinelanguage{css}{
  keywords={border,margin,padding,width,height,background,font-family, 
  font-size,font-weight,font-variant,color,border-top,margin-top,margin-bottom,padding-left,box-sizing,float,clear,border-top-width,border-top-color,border-top-style,position,top,left,background-color,text-align,display,margin-left,z-index,list-style,vertical-align,outline,margin-right,list-style-type,content,flex-wrap,flex-grow,justify-content,flex-basis,grid-area,grid-template-areas,grid-column-gap,grid-template-rows,grid-template-columns,grid-column-start,grid-column-end,grid-row-start,grid-row-end,grid-column,grid-row},
  sensitive=true,
  ndkeywords={hover,active,focus,visited,link},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  alsodigit={-},
}

% Jazyk HTML
\lstdefinelanguage{H}{
  language=html,
  alsoletter={!/},
  markfirstintag=true,
  morecomment=[s]{<!--}{-->},
  morecomment=[s]{/*}{*/},
  ndkeywords={href,style,id,value,class,for,name},
  keywords={header,nav,main,footer,aside},
  morestring=[b]',
  tagstyle={\color{keywordcolor}}
}

% cislovane prostredi
\lstdefinestyle{numbered}{
	basicstyle={\small\ttfamily},  
  keywordstyle=\color{keywordcolor}\bfseries,
  commentstyle=\color{gray},
  ndkeywordstyle=\color{syntaxcolor},
  stringstyle=\color{stringcolor},
  basewidth={0.5em},
  alsodigit={.:;},
  tabsize=1,
  showtabs=false,
  extendedchars=true,
  numberstyle=\scriptsize\ttfamily,
  numbers=left,
  showstringspaces=false
%  numbersep=5pt,
%  framexleftmargin=1pt,
%  xleftmargin=1.7em, 
  literate=%
         {á}{{\'a}}1
         {í}{{\'i}}1
         {é}{{\'e}}1
         {ý}{{\'y}}1
         {ú}{{\'u}}1
         {ó}{{\'o}}1
         {ě}{{\v{e}}}1
         {š}{{\v{s}}}1
         {č}{{\v{c}}}1
         {ř}{{\v{r}}}1
         {ž}{{\v{z}}}1
         {ď}{{\v{d}}}1
         {ť}{{\v{t}}}1
         {ň}{{\v{n}}}1                
         {ů}{{\r{u}}}1
         {Á}{{\'A}}1
         {Í}{{\'I}}1
         {É}{{\'E}}1
         {Ý}{{\'Y}}1
         {Ú}{{\'U}}1
         {Ó}{{\'O}}1
         {Ě}{{\v{E}}}1
         {Š}{{\v{S}}}1
         {Č}{{\v{C}}}1
         {Ř}{{\v{R}}}1
         {Ž}{{\v{Z}}}1
         {Ď}{{\v{D}}}1
         {Ť}{{\v{T}}}1
         {Ň}{{\v{N}}}1                
         {Ů}{{\r{U}}}1,    
  breaklines=true,
}

% necislovane prostredi
\lstdefinestyle{notNumbered}{
	basicstyle={\small\ttfamily},  
  keywordstyle=\color{keywordcolor}\bfseries,
  commentstyle=\color{gray},
  ndkeywordstyle=\color{syntaxcolor},
  stringstyle=\color{stringcolor},
  basewidth={0.5em},
  alsodigit={.:;},
  tabsize=1,
  showstringspaces=false
  showtabs=false,
  extendedchars=true,
  literate=%
         {á}{{\'a}}1
         {í}{{\'i}}1
         {é}{{\'e}}1
         {ý}{{\'y}}1
         {ú}{{\'u}}1
         {ó}{{\'o}}1
         {ě}{{\v{e}}}1
         {š}{{\v{s}}}1
         {č}{{\v{c}}}1
         {ř}{{\v{r}}}1
         {ž}{{\v{z}}}1
         {ď}{{\v{d}}}1
         {ť}{{\v{t}}}1
         {ň}{{\v{n}}}1                
         {ů}{{\r{u}}}1
         {Á}{{\'A}}1
         {Í}{{\'I}}1
         {É}{{\'E}}1
         {Ý}{{\'Y}}1
         {Ú}{{\'U}}1
         {Ó}{{\'O}}1
         {Ě}{{\v{E}}}1
         {Š}{{\v{S}}}1
         {Č}{{\v{C}}}1
         {Ř}{{\v{R}}}1
         {Ž}{{\v{Z}}}1
         {Ď}{{\v{D}}}1
         {Ť}{{\v{T}}}1
         {Ň}{{\v{N}}}1                
         {Ů}{{\r{U}}}1,    
  breaklines=true,
}

% vychozi prostredi
\lstset{style=notNumbered}


% boxy
\newtcolorbox{code}{breakable,enhanced,size=small,colback=gray!6,colframe=gray!6,arc=0mm, top=-2mm,bottom=-1.8mm,enlarge top by=0.8em, enlarge bottom by=0.3em}

\newtcolorbox{guide}{breakable,enhanced,size=small,colback=red!6,colframe=red!6,arc=0mm, top=1mm,bottom=1mm,enlarge top by=0.8em, enlarge bottom by=0.3em}

\newtcolorbox{task}{breakable,enhanced,size=small,colback=yellow!6,colframe=yellow!6,arc=0mm, top=1mm,bottom=1mm,enlarge top by=0.8em, enlarge bottom by=0.3em}

\newtcolorbox{question}{breakable,enhanced,size=small,colback=green!6,colframe=green!6,arc=0mm, top=1mm,bottom=1mm,enlarge top by=0.8em, enlarge bottom by=0.3em}
 
 

 
% vlastni sidenote
\newcounter{sidenote}
\newcounter{task}
\newcounter{question}
\renewcommand\thesidenote{\textsuperscript{\arabic{sidenote}}}
\newcommand\sidenote[2][0cm]{\refstepcounter{sidenote}\thesidenote\marginnote{{\setstretch{1}\parbox[t]{\marginparwidth}{{\scriptsize\thesidenote$\,$}\footnotesize #2}}}[#1]}

\newcommand\sideguide[2][0cm]{\marginnote{{\setstretch{1}\parbox[t]{\marginparwidth}{\footnotesize \begin{guide}{\bf Průvodce studiem}\\ #2\end{guide}}}}[#1]}


\newcommand\sidetask[2][0cm]{\marginnote{{\setstretch{1}\parbox[t]{\marginparwidth}{\footnotesize \begin{task}{\bf Úkol \thetask}\\ #2\end{task}}}}[#1]}

\newcommand\sidequestion[2][0cm]{\marginnote{{\setstretch{1}\parbox[t]{\marginparwidth}{\footnotesize \begin{question}{\bf Otázka \thequestion}\\ #2\end{question}}}}[#1]}

\newcommand\sidecaption[2][0cm]{\marginnote{\caption{#2}}[#1]}
 

% uvodni stranky
\newcommand\intro[1]{\afterpage{%
\pagestyle{empty}
\newgeometry{top=1.5in, bottom=1in, inner=1in, heightrounded, marginparwidth=0in, marginparsep=0in, textwidth=6.5in}
\maketitle\newpage$\,$\newpage$\,$\vfill

Copyright \copyright~\the\year{} Katedra informatiky, Univerzita Palackého v Olomouci\\
\url{www.inf.upol.cz}\medskip

#1\\

\medskip
{\it \author}\\
\newpage$\,$\newpage\tableofcontents\restoregeometry
} \pagestyle{fancy}}