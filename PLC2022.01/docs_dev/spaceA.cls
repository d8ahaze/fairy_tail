\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{spaceA}[2021/01/01 spaceC]
\DeclareOption{handout}{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax
\LoadClass[12pt, oneside]{amsart}
\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage{lmodern, enumitem, needspace}
\RequirePackage{graphicx, wrapfig, pgffor, ifthen}
\RequirePackage[normalem]{ulem}
\RequirePackage[font=small]{caption}
\RequirePackage[caption=false]{subfig}
\RequirePackage{hyperref}
\RequirePackage{hwsymb, hwlst}
\hypersetup {
  pdfstartview=FitH,
  colorlinks=true,
}


\gdef\@unitname{Idea}
\newcounter{UnitCounter}
\newcommand{\setunitname}[1]{\gdef\@unitname{#1}}
\newcommand{\asec}[1][\arabic{UnitCounter}] {
  \def\@currentlabel{#1}
  \ifthenelse{\equal{#1}{\value{UnitCounter}}}
  {\stepcounter{UnitCounter}}{}
  \setcounter{section}{0}
  \renewcommand{\thesection}{#1.\arabic{section}}
  \renewcommand{\theHsection}{#1.\the\value{section}}
  \addcontentsline{toc}{part}{#1. \@unitname{}}
  \vspace*{0.5\baselineskip}\needspace{8\baselineskip}
  \noindent\textbf{\@unitname{} #1. }\ignorespaces
}


\theoremstyle{definition}
\newtheorem{bonus}{\@unitname{} (Bonus)}


\newcommand{\rightfig}[4][0.4] {
  \begin{wrapfigure}{r}{#1\textwidth}
    \centering
    \vspace{-3ex}
    \includegraphics[width=#1\textwidth]{#2}
    \vspace{-3ex}
    \caption{#3}
    \vspace{-1ex}
    \label{#4} 
  \end{wrapfigure}
}


\newcommand{\fig}[4][0.4]{
  \begin{figure}[hbtp]
    \foreach \elem in {#2} {
      \begin{minipage}{#1\textwidth}\centering
        \subfloat {
          \includegraphics[width=\linewidth]{\elem}
        }
      \end{minipage}
    }
    \caption{#3}\label{#4}
  \end{figure}
}


\makeatletter
  \gdef\@author{\empty}
  \gdef\@class{\empty}
  \newcommand{\class}[1]{\gdef\@class{#1}}
  \renewcommand{\author}[1]{\gdef\@author{#1}}
  \renewcommand{\maketitle} {\bgroup\setlength{\parindent}{0em}
    \begin{flushleft}
      \ifthenelse{\equal{\@author}{\empty}}{}{\@author\\}
      \ifthenelse{\equal{\@class}{\empty}}{}{\@class\\}
      \@date
    \end{flushleft}\egroup
    \begin{center}
      \textbf{\@title} \\
    \end{center}
    \bigskip
  }
\makeatother
