---
title: Main File Test
---

```latex
%! TEX root = main.tex

\newcommand{\lang}{danish}
\newcommand{\titl}{Test Document 1}
\newcommand{\auth}{Daniel Brasholt s214676}
\newcommand{\courseno}{01010}
\newcommand{\course}{Testkursus}
\newcommand{\dato}{Maj 2023}
\newcommand{\secheader}{Opgave}
\newcommand{\subsecheader}{Opg.}
\newcommand{\sourcefile}{}
\input{preamble.tex}

\section{Section 1}
\label{sec:1}

\begin{figure}[H]
	\centering
	\includegraphics[width=0.2\textwidth]{./img/DTU.eps}
	\caption{Et test-billede?}
	\label{fig:dtu}
\end{figure}

\Cref{fig:dtu}. Og måske også \cref{fig:dtu}. Henvisning til \cref{eq:1}. Til
sidst kan man også sige \cref{sec:1,sec:s1,sec:subsub}.

\subsection{Sub}
\label{sec:s1}

\subsubsection{Subsub}
\label{sec:subsub}

\Cref{sec:subsub} er en god henvisning til \cref{sec:subsub}. Man kunne også
henvise til \cref{sec:1}, hvis man vil. 

\section{Section 2}

\subsection{Sub 2}

\begin{align}
\label{eq:1}
	(\frac{e^{0}}{e^{2}}) = \int_{\infty}^{\infty}{5xdx} \\
	\paren*{\frac{1}{5} \cdot \frac{3}{2} \cdot \frac{5}{2}}
\end{align}

This is true

\lipsum[1-15]

\end{document}
```
