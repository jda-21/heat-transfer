%----------------------------------------------------------
% CLASS CONFIGURATION
%----------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab-class/lab}[2025/02/28 Lab LaTeX class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}
\AtEndOfClass{\RequirePackage{microtype}}

%----------------------------------------------------------
% REQUIRED PACKAGES
%----------------------------------------------------------

\RequirePackage[utf8]{inputenc}
\RequirePackage{etoolbox}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{titling}
\RequirePackage{lettrine}
\RequirePackage[switch]{lineno}
\RequirePackage[bottom,hang,flushmargin,ragged]{footmisc}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{hyperref}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{listings}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{siunitx}
\RequirePackage{physics}
\RequirePackage{cleveref}
\RequirePackage{bookmark}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{lipsum}
\RequirePackage{enumitem}
\RequirePackage{rotating}
\RequirePackage{pdflscape}
\RequirePackage{longtable}
\RequirePackage{threeparttable}

%----------------------------------------------------------
% COLORS
%----------------------------------------------------------

\definecolor{labcolor}{rgb}{0.0,0.2,0.4}        % Blue
\definecolor{labgray}{rgb}{0.5,0.5,0.5}         % Gray
\definecolor{labcodeback}{rgb}{0.95,0.95,0.95}  % Light Gray
\definecolor{labcodecomment}{rgb}{0.2,0.4,0.0}  % Green
\definecolor{labcodekey}{rgb}{0.1,0.1,0.4}      % Dark Blue
\definecolor{labcodestring}{rgb}{0.6,0.1,0.1}   % Dark Red

%----------------------------------------------------------
% HYPERREF SETUP
%----------------------------------------------------------

\hypersetup{
    colorlinks=true,
    linkcolor=labcolor,
    filecolor=labcolor,
    urlcolor=labcolor,
    citecolor=labcolor
}

%----------------------------------------------------------
% DOCUMENT STYLE
%----------------------------------------------------------

\setlength{\parindent}{1em}
\setlength{\parskip}{1em}
\renewcommand{\baselinestretch}{1.15}

%----------------------------------------------------------
% CODE STYLE
%----------------------------------------------------------

\lstdefinestyle{labcoding}{
    backgroundcolor=\color{labcodeback},   
    commentstyle=\color{labcodecomment},
    keywordstyle=\bfseries\color{labcodekey},
    numberstyle=\tiny\color{labgray},
    stringstyle=\color{labcodestring},
    basicstyle=\footnotesize\ttfamily,
    breakatwhitespace=false,        
    breaklines=true,                
    captionpos=b,                   
    keepspaces=true,               
    numbers=left,                  
    numbersep=5pt,                 
    showspaces=false,              
    showstringspaces=false,
    showtabs=false,               
    tabsize=4,
    frame=single,
    frameround=tttt,
    framexleftmargin=6mm,
    xleftmargin=6mm
}

\lstset{style=labcoding}

%----------------------------------------------------------
% CUSTOM COMMANDS
%----------------------------------------------------------

\newcommand{\lababstract}{\maketitle\thispagestyle{firststyle}}
