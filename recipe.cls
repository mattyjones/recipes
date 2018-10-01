\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{recipe}[1996/11/22 MLO recipe class v0.9]

%
% Recipe class; intended to be used to produce a ``book''
% of recipes---so that loads book.cls .  This file is in
% the public domain, and comments/additions/modifications
% are welcomed to be EMailed to me, i.e. to:
%
% Author: Maurizio Loreti, aka MLO or (HAM) I3NOO
% Work:   University of Padova - Department of Physics
%         Via F. Marzolo, 8 - 35131 PADOVA - Italy
% Phone:  ++39(49) 827-7216     FAX: ++39(49) 827-7102
% EMail:  loreti@padova.infn.it
% WWW:    http://mvxpd5.pd.infn.it/wwwcdf/mlo.html
%
% The \part, \chapter, \section and \subsection commands
% work as usual; \subsubsection commands are used for
% ``recipes'' as units, and are not numbered but (by
% default) entered in the .toc file.
%
% The recipe (a.k.a. subsubsection header) is typeset in
% a style defined with the command \rechead; the default
% is Large, horizontally centered, bold sans-serif: and
% the user can change that setting with a suitable
% \renewcommand{\rechead} .
%
% If e.g. \section and \subsection commands are not used
% in the text, the large indentation of the \subsubsection
% items in the Table of Contents may be ugly; in that case,
% you should redefine appropriately \l@subsubsection .
% The book.cls definition is:
% \newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}} ;
% the second parameter (7.0em) is the initial skip, and
% the third (4.1em) is the length for the subsubsection
% number field (if the subsubsections are to be numbered).
% As an example, a redefinition of \l@subsubsection may look
% like:
% \makeatletter
% \renewcommand*\l@subsubsection{\@dottedtocline{3}{3em}{4.1em}}
% \makeatother
%
% A specific command \recipe{...} is defined as an alias
% for a \subsubsection{...} followed by two rules across
% the whole page and by a vertical space.
%
% Another command, \ingred{...}, is defined to typeset a
% list of ingredients (the \ldots) with the italic font,
% inside a ``quote'' environment and  after an ``ingredient
% header'' \inghead---empty by default, and that can be
% redefined by the user with, e.g., a
% \renewcommand{\inghead}{\textbf{Ingredients (4 persons)}:\ }
% (note the trailing space).
%

\thispagestyle{empty}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\setcounter{secnumdepth}{2}	% subsubsections not numbered
\setcounter{tocdepth}{3}	% subsubsections in the .toc file

\newcommand{\rechead}
    {\centering\normalfont\Large\sffamily\bfseries}

\renewcommand{\subsubsection}
    {\@startsection{subsubsection}{3}{\z@}%
    {-5ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\rechead}}

\newcommand{\recipe}[1]{\subsubsection{#1}%
    \hrule height0.75pt width\hsize\vspace*{1\p@}%
    \hrule height0.25pt width\hsize%
    \nobreak
    \vskip\parskip}

\newcommand{\inghead}{\relax}
\newcommand{\ingred}[1]
    {{\begin{itemize}{\rightmargin 1em\leftmargin 1em}%
    \item[]\inghead#1 \end{itemize}}%
    \hrule height0.25pt width\hsize}

\newcommand{\instructhead}{\relax}
\newcommand{\instruct}[1]
    {{\begin{enumerate}{\rightmargin 1em \leftmargin 1em}%
    \item[]\instructhead#1 \end{enumerate}}%
    \hrule height0.25pt width\hsize}

\newcommand{\yieldhead}{\relax}
\newcommand{\yield}[1]
    {{\begin{enumerate}{\rightmargin 1em \leftmargin 1em}%
    \item[]\yieldhead#1 \end{enumerate}}%

\newcommand{\servingshead}{\relax}
\newcommand{\servings}[1]
    {{\begin{enumerate}{\rightmargin 1em \leftmargin 1em}%
    \item[]\servingshead#1 \end{enumerate}}%

\newcommand{\carbshead}{\relax}
\newcommand{\carbs}[1]
    {{\begin{enumerate}{\rightmargin 1em \leftmargin 1em}%
    \item[]\carbshead#1\end{enumerate}}%

\newcommand{\lifehead}{\relax}
    \newcommand{\life}[1]
        {{\begin{enumerate}{\rightmargin 1em \leftmargin 1em}%
        \item[]\lifehead#1\end{enumerate}}%




    % \newcommand{\servinghead}{\relax}
% \newcommand{\carbshead}{\relax}

% \newcommand{\health}[1]
%     {{\relax}{\rightmargin 1em\leftmargin 1em}
%     \textit{\healthhead#1}}

% \newcommand{\health}[1]
%     {{\begin{table}[]%
%     \begin{tabular}{lllll}%
%         \addlinespace

%         & {#1} & {#2} & {#3} & {#4}%
%     \end{tabular}%
% \end{table}
%     \hrule height0.25pt width\hsize}

