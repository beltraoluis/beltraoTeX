%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Padrão para trabalhos segundo a ABNT para
% a UTFPR
%
% Luís Henrique Beltrão Santana
% 26/10/2016 10:20
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UTFPR}
\LoadClassWithOptions{abntex2}
\RequirePackage[a4paper,left=3cm,top=3cm,right=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage[brazil]{babel}
\RequirePackage[T1]{fontenc} % saida - sempre manter descomentado
\RequirePackage[utf8]{inputenc} % Unicode UTF-8
\RequirePackage[alf,abnt-etal-list=2,abnt-etal-cite=2]{abntex2cite}% Citações padrão ABNT
\RequirePackage{indentfirst} % indenta primeiro parágrafo
\RequirePackage{graphicx} % inclusão de imagens
\RequirePackage{url}  % reconhecimento de url
\RequirePackage{multirow} % Mesclar linhas em tabelas
\RequirePackage{multicol} % Mesclar colinas em tabelas
\RequirePackage{xcolor}
\RequirePackage{listings} % Permite inserir códigos fonte
\RequirePackage{graphicx,color}
\RequirePackage{float}
\RequirePackage{helvet} % pacote de fonte similar a Arial
\RequirePackage{background}
\RequirePackage{lipsum}% just to generate text for the example
\RequirePackage{leading}
\RequirePackage{amssymb} % notação matemática
\RequirePackage{amsmath}
\RequirePackage{enumitem} % permite enumeração alfabética
\RequirePackage{hyperref} % permite enumeração alfabética
\RequirePackage{upgreek}
\RequirePackage{lscape}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% utfpr
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\btimprimirorientador}{
	\textcolor{red}{insira $\backslash$btorientador\{nome\}}
}

\newcommand{\btimprimircoorientador}{
	\textcolor{red}{insira $\backslash$btcoorientador\{nome\}}
}

\newcommand{\imprimirdepartamento}{
	\textcolor{red}{insira $\backslash$departamento\{seu departamento\}}
}

\newcommand{\imprimircurso}{
	\textcolor{red}{insira $\backslash$curso\{seu curso\}}
}

\newcommand{\departamento}[1]{
	\renewcommand{\imprimirdepartamento}{#1}
}

\newcommand{\curso}[1]{
	\renewcommand{\imprimircurso}{#1}
}

\newcommand{\btorientador}[1]{
	\renewcommand{\btimprimirorientador}{#1}
}

\newcommand{\btcoorientador}[1]{
	\renewcommand{\btimprimircoorientador}{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Capa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\imprimircapa}{
	%
	\begin{capa}
		\center
		\ABNTEXchapterfont \Large \imprimirinstituicao \\
		\ABNTEXchapterfont \Large \imprimirdepartamento \\
		\ABNTEXchapterfont \Large \imprimircurso
		\vfill
		{\ABNTEXchapterfont \large \imprimirautor}
		\vfill
		\begin{center}
			\ABNTEXchapterfont \bfseries \LARGE \imprimirtitulo
		\end{center}
		\vfill
		\ABNTEXchapterfont \bfseries \large \imprimirtipotrabalho
		\vfill
		\large \imprimirlocal\\
		\large \imprimirdata\\
		\vspace*{1.5cm}
	\end{capa}
}
\newcommand{\geraCapa}{
	\imprimircapa
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Folha de rosto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraFolhaDeRosto}{
	%\imprimirfolhaderosto
	\begin{center}
	    {\ABNTEXchapterfont \large \imprimirautor}
	    \vfill
	    \ABNTEXchapterfont \bfseries \LARGE \imprimirtitulo
	\end{center}
	\vspace{2cm}
	\hspace{7.75cm}
	\begin{minipage}{7.75cm}
	    \imprimirpreambulo \\
	    \vspace{-10pt}
	    \noindent
	    \\Orientador: \btimprimirorientador\\
	    Coorientador: \btimprimircoorientador
	\end{minipage}
	\vfill
	\begin{center}
	\large \textbf{\imprimirlocal}\\
	\large \textbf{\imprimirdata}\\
	\end{center}
	\newpage
}  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lista de figuras
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraListaDeFiguras}{
	\pdfbookmark[0]{\listfigurename}{lof}   \listoffigures* \cleardoublepage
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lista de tabelas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraListaDeTabelas}{
	\pdfbookmark[0]{\listtablename}{lot} \listoftables* \cleardoublepage
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lista de abreviaturas e siglas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraListaDeSiglas}{
	\input{pretextual/siglas}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lista de simbolos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraListaDeSimbolos}{
	\input{pretextual/simbolos}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sumario
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraSumario}{
	\pdfbookmark[0]{\contentsname}{toc} \tableofcontents* \cleardoublepage
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resumo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\imprimirPalavrasChave}{
	\textcolor{red}{insira $\backslash$palavrasChave\{palavras chave separadas por virgula\}}
}

\newcommand{\palavrasChave}[1]{
	\renewcommand{\imprimirPalavrasChave}{#1}
}

\newcommand{\geraResumo}{
	\chapter*{Resumo}
	\input{pretextual/resumo}
	%\begin{center}
	\vspace{12pt}
	\noindent
		\textbf{Palavras Chaves: } \imprimirPalavrasChave
	%\end{center}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\imprimirKeyWords}{
	\textcolor{red}{insira $\backslash$keyWords\{palavras chave separadas por virgula\}}
}

\newcommand{\keyWords}[1]{
	\renewcommand{\imprimirKeyWords}{#1}
}

\newcommand{\geraAbstract}{
	\chapter*{Abstract}
	\input{pretextual/abstract}
	%\begin{center}
	\vspace{12pt}
	\noindent
		\textbf{Key Words: } \imprimirKeyWords
	%\end{center}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Referencias
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraReferencias}[1]{
	\bibliography{postextual/#1} % referencias bibliográficas
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Anexos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\geraAnexos}{
	\chapter*{Anexos}
	\input{postextual/anexos}
}

\input{config/comandos.tex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% inicialização
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\familydefault}{\sfdefault} % Altera a fonte para arial
\input{config/codeConfig}
\input{config/propriedades} % dados do trabalho lembre de alterar esse arquivo

