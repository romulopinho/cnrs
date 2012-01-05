\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mythesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions

\LoadClass{book}

\usepackage{amssymb}
\usepackage[]{graphicx}
\usepackage[centerlast]{subfigure}
\usepackage[figuresright]{rotating}
\usepackage[bookmarks=true,pdfborder={0 0 0},breaklinks=true]{hyperref}
\usepackage[usenames]{color}
\usepackage{algorithm}
\usepackage{algorithmic}
\usepackage{enumerate}
\usepackage[authoryear]{natbib}
\usepackage{fancyhdr}
\usepackage{multirow}
\usepackage[sectionbib]{bibunits}
\usepackage{caption}
\usepackage{lscape}
\usepackage{changepage}

%%% class code comes here %%%
\newcommand{\etal}{\textit{et al.}}
\newcommand{\reffig}{Figure \ref}
\newcommand{\refeq}[1]{Eq.\,(\ref{#1})}
\newcommand{\reftab}{Table \ref}
\newcommand{\refchap}{Chapter \ref}
\newcommand{\refsec}{Section \ref}
\newcommand{\refalg}{Algorithm \ref}
\newcommand{\refpatient}[1]{{\bf Patient #1}} % patient reference

\newcommand{\prefetch}{\textit{prefetching}}
\newcommand{\Prefetch}{\textit{Prefetching}}
\newcommand{\outcore}{\textit{out-of-core}}
\newcommand{\incore}{\textit{in-core}}
\newcommand{\incorespc}{\textit{in-core }}
\newcommand{\wincache}{\textit{WindowCache}}

\newcommand{\fixedland}{{\it Fixed Landmarks}}

\newcommand{\wls}{{\it WLS}}
\newcommand{\gauss}{{\it Gauss WLS}}
\newcommand{\Huber}{{\it Huber WLS}}
\newcommand{\talwar}{{\it Talwar WLS}}
\newcommand{\cauchy}{{\it Cauchy WLS}}
\newcommand{\extrapolation}{{\it Surface Extrapolation}}
\newcommand{\standardls}{{\it StandardLS}}

\newcommand{\mydelta}[3]{#1{\delta}_{\mbox{\scriptsize{#2}}_{#3}}}
\newcommand{\mymu}[2]{\mu_{\mbox{\scriptsize{#1}}_{#2}}}
\newcommand{\mysigma}[2]{\sigma_{\mbox{\scriptsize{#1}}_{#2}}}

\newcommand{\landmark}[2]{{\bf #1}_{\mbox{\scriptsize{v}}_{#2}}}
\newcommand{\force}[3]{{\bf #1}_{\mbox{\scriptsize{#2}}_{#3}}}

\newcommand{\setfont}[4]{\fontfamily{#1} \fontsize{#2}{#3} \selectfont}
\newcommand{\legend}[6]{\textcolor{#4}{\setfont{#1}{#2}{#3}{#5}} \setfont{#1}{#2}{#3}{#6}}
\newcommand{\setfonttext}[4]{{\fontfamily{#1} \fontsize{#2}{#3} \selectfont #4}}

\makeatletter
\newcommand*\dashline{{$\dabar@\dabar@$}}
\makeatother

\definecolor{myGreen}{rgb}{0,1,0}
\definecolor{myOliveGreen}{rgb}{0,0.4,0}
\definecolor{myRoyalBlue}{rgb}{0,0,1}
\definecolor{myBrickRed}{rgb}{0.5,0,0}

\newcommand{\mylegendsimulation}{
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c c c}
Assessment & of & Stenosis & (Simulation Data)
\\
\end{tabular}} \\
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c c c}
\hline
\setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\bullet$}} Healthy (Estimation) & \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\bullet$}} Stenosis (Estimation) &  \setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\circ$}} Healthy (Ground Truth) & \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\circ$}} Stenosis (Ground Truth) \\ 
\hline
\end{tabular} \\ 
\begin{tabular}{c c c}
\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{------}} & S$_{\mbox{\scriptsize{e}}}$, D$_{\mbox{\scriptsize{e}}}$, E$_{\mbox{\scriptsize{e}}}$ & (Start, Point of Max. Degree, End of Stenosis - Estimation) \\
\hline
\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{\dashline\dashline}} & S$_{\mbox{\scriptsize{g}}}$, D$_{\mbox{\scriptsize{g}}}$, E$_{\mbox{\scriptsize{g}}}$ & (Start, Point of Max. Degree, End of Stenosis - Ground Truth) \\
\hline
\end{tabular}} \\}

%\newcommand{\mylegendsimulation}{
%\setfonttext{phv}{9}{10.2}{
%\begin{tabular}{c c c c}
%Assessment & of & Stenosis & (Simulation Data)
%\\
%\end{tabular}} \\
%\setfonttext{phv}{7}{8.4}{
%\begin{tabular}{c c c c}
%\hline
%\hspace{10mm} & \setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\bullet$}} Healthy (Estimation) & \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\bullet$}} Stenosis (Estimation) & \hspace{10mm} \\ 
%\hline
%\hspace{10mm} & \setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\circ$}} Healthy (Ground Truth) & \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\circ$}} Stenosis (Ground Truth) & \hspace{10mm} \\ 
%\end{tabular} \\ 
%\begin{tabular}{c c c}
%\hline
%\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{------}} & S$_{\mbox{\scriptsize{e}}}$, D$_{\mbox{\scriptsize{e}}}$, E$_{\mbox{\scriptsize{e}}}$ & (Start, Point of Max. Degree, End of Stenosis - Estimation) \\
%\hline
%\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{\dashline\dashline}} & S$_{\mbox{\scriptsize{g}}}$, D$_{\mbox{\scriptsize{g}}}$, E$_{\mbox{\scriptsize{g}}}$ & (Start, Point of Max. Degree, End of Stenosis - Ground Truth) \\
%\hline
%\end{tabular}} \\}

\newcommand{\mylegendclinical}{
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c c c}
Assessment & of & Stenosis & (Clinical Data) \\
\end{tabular}} \\
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c}
\hline
\hspace{19mm} \setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\bullet$}} Healthy \hspace{5mm} & \hspace{5mm} \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\bullet$}} Stenosis \hspace{19mm} \\ 
\end{tabular} \\ 
\begin{tabular}{c c c}
\hline
\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{------}} & S, D, E & (Start, Point of Max. Degree, End of Stenosis) \\
\hline
\end{tabular}} \\}

\newcommand{\mylegendclinicalD}{
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c c c}
Assessment & of & Stenosis & (Clinical Data) \\
\end{tabular}} \\
\setfonttext{phv}{9}{10.2}{
\begin{tabular}{c c}
\hline
\hspace{25mm} \setfonttext{phv}{9}{10.2}{\textcolor{Black}{$\bullet$}} Healthy \hspace{5mm} & \hspace{5mm} \setfonttext{phv}{9}{10.2}{\textcolor{myGreen}{$\bullet$}} Stenosis \hspace{25mm} \\
\hline
\end{tabular}
\begin{tabular}{c}
\setfonttext{phv}{9}{10.2}{\textcolor{myRoyalBlue}{------}} S, D, E (Start, Point of Max. Degree, End of Stenosis) \\
\hline
\end{tabular}} \\}

\hyphenation{ste-no-sis ste-no-ses tra-chea tra-cheas}
\hyphenation{be-han-de-ling}
\hyphenation{be-lang-rijk-ste}
\hyphenation{even-eens}
\hyphenation{voor-ge-stelde}


\bibpunct{(}{)}{;}{a}{,}{,}

\newskip\subfigcapskip \subfigcapskip = 1.2mm

\def\argmax{\mathop{\rm arg\,max}}
\def\argmin{\mathop{\rm arg\,min}}

%\linespread{1.1}

%\renewcommand{\@makechapterhead}[1]{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedright \normalfont
%    %\hrule                                        % horizontal line
%    %\vspace{5pt}%                                 % add vertical space
%    \ifnum \c@secnumdepth >\m@ne
%        \huge\scshape \@chapapp\space \thechapter % Chapter number
%        \par\nobreak
%        \vskip 20\p@
%    \fi
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                         % chapter title
%    \vspace{5pt}%                                 % add vertical space
%    \hrule                                        % horizontal rule
%    \nobreak
%    \vskip 40\p@
%  }}
%
%\renewcommand{\@makeschapterhead}[1]{%
%  \vspace*{50\p@}%
%  {\parindent \z@ \raggedright
%    \normalfont
%    %\hrule                                        % horizontal line
%    %\vspace{5pt}%                                 % add vertical space
%    \interlinepenalty\@M
%    \Huge \scshape #1\par                         % chapter title
%    \vspace{5pt}%                                 % add vertical space
%    \hrule                                        % horizontal line
%    \nobreak
%    \vskip 40\p@
%  }}
%


\endinput

