\documentclass[a4paper]{article}

%================= local x=====================================================%
\def\getGif#1{\includegraphics[width=0.3\textwidth]{cp2021t_media/#1.png}}
\let\uk=\emph
\def\aspas#1{``#1"}
%================= lhs2tex=====================================================%
%include polycode.fmt
\usepackage[a4paper,left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{palatino}
\usepackage[colorlinks=true,linkcolor=blue,citecolor=blue]{hyperref}
\usepackage{graphicx}
\usepackage{cp2021t}
\usepackage{subcaption}
\usepackage{adjustbox}
\usepackage{color}
\definecolor{red}{RGB}{255,  0,  0}
\definecolor{blue}{RGB}{0,0,255}
\def\red{\color{red}}
\def\blue{\color{blue}}

\usepackage{stmaryrd}
\usepackage{tikz}
\usepackage[math-style=ISO]{unicode-math}
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const f) = "\underline{" f "}"
%format TLTree = "\mathsf{TLTree}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
\def\ana#1{\mathopen{[\!(}#1\mathclose{)\!]}}
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format (cataA (f) (g)) = "\cata{" f "~" g "}_A"
%format (anaA (f) (g)) = "\ana{" f "~" g "}_A"
%format (cataB (f) (g)) = "\cata{" f "~" g "}_B"
%format (cata (f)) = "\cata{" f "}"
%format (anaB (f) (g)) = "\ana{" f "~" g "}_B"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textsc{nb}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format e1 = "e_1 "
%format e2 = "e_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format BTree = "\fun{BTree} "
%format LTree = "\mathsf{LTree}"
%format inNat = "\mathsf{in}"
%format (cataNat (g)) = "\cata{" g "}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " {to_\Q} "
%format fromRational = " from_{\Q} "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format `ominus` = "\mathbin{\ominus}"
%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"

%format sLTree = "_{" LTree "}"
%format outLTree = "out" sLTree
%format inLTree = "in" sLTree
%format (cataLTree (x)) = "\cata{" x "\,}" sLTree
%format (anaLTree (x)) = "\mathopen{[\!(}" x "\mathclose{)\!]}"

%format delta = "\Delta "
%format (ana (f)) = "\ana{" f "}"

%format NList = "\mathsf{NList}"

%format Castel = "\mathsf{Castel}"

%format sl = "_{" [] "}"
%format (anaList (g)) = "\ana{"g"}" sl
%format (cataList (g)) = "\cata{" g "}" sl
%format (hyloList (f) (g)) = "{\llbracket}{" f "," g "{\rrbracket}" sl
%format (baseList (f) (g)) = "B_{[]}(" f "," g ")"

%format sCastel = "_{"Castel"}"
%format (cataC (g)) = "\cata{" g "}" sCastel
%format (anaC (g)) = "\ana{" g "}" sCastel
%format inC = "in" sCastel
%format outC = "out" sCastel
%format fC = "rec" sCastel

%format NL = "_{"NList"}"
%format inL = "in" NL
%format outL = "out" NL
%format recL = "rec" NL
%format (cataL (g)) = "\cata{"g"}" NL
%---------------------------------------------------------------------------

\title{
       	C??lculo de Programas
\\
       	Trabalho Pr??tico
\\
       	MiEI+LCC --- 2020/21
}

\author{
       	\dium
\\
       	Universidade do Minho
}


\date\mydate

\makeindex
\newcommand{\rn}[1]{\textcolor{red}{#1}}
\begin{document}

\maketitle

\begin{center}\large
\begin{tabular}{ll}
\textbf{Grupo} nr. & 17
\\\hline
a91683 & Alef Pinto Keuffer
\\
a93546 & Fernando Maria Bicalho
\\
a88062 & Pedro Paulo Costa Pereira
\\
a91693 & Tiago Andr?? Oliveira Leite
\end{tabular}
\end{center}

\section{Pre??mbulo}

\CP\ tem como objectivo principal ensinar
a progra\-ma????o de computadores como uma disciplina cient??fica. Para isso
parte-se de um repert??rio de \emph{combinadores} que formam uma ??lgebra da
programa????o (conjunto de leis universais e seus corol??rios) e usam-se esses
combinadores para construir programas \emph{composicionalmente}, isto ??,
agregando programas j?? existentes.

Na sequ??ncia pedag??gica dos planos de estudo dos dois cursos que t??m
esta disciplina, opta-se pela aplica????o deste m??todo ?? programa????o
em \Haskell\ (sem preju??zo da sua aplica????o a outras linguagens
funcionais). Assim, o presente trabalho pr??tico coloca os
alunos perante problemas concretos que dever??o ser implementados em
\Haskell.  H?? ainda um outro objectivo: o de ensinar a documentar
programas, a valid??-los e a produzir textos t??cnico-cient??ficos de
qualidade.

\section{Documenta????o} Para cumprir de forma integrada os objectivos
enunciados acima vamos recorrer a uma t??cnica de programa\-????o dita
``\litp{liter??ria}'' \cite{Kn92}, cujo princ??pio base ?? o seguinte:
%
\begin{quote}\em Um programa e a sua documenta????o devem coincidir.
\end{quote}
%
Por outras palavras, o c??digo fonte e a documenta????o de um
programa dever??o estar no mesmo ficheiro.

O ficheiro \texttt{cp2021t.pdf} que est?? a ler ?? j?? um exemplo de
\litp{programa????o liter??ria}: foi gerado a partir do texto fonte
\texttt{cp2021t.lhs}\footnote{O suffixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrar?? no
\MaterialPedagogico\ desta disciplina descompactando o ficheiro
\texttt{cp2021t.zip} e executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2021t.lhs > cp2021t.tex
    $ pdflatex cp2021t
\end{Verbatim}
em que \href{https://hackage.haskell.org/package/lhs2tex}{\texttt\LhsToTeX} ??
um pre-processador que faz ``pretty printing''
de c??digo Haskell em \Latex\ e que deve desde j?? instalar executando
\begin{Verbatim}[fontsize=\small]
    $ cabal install lhs2tex --lib
\end{Verbatim}
Por outro lado, o mesmo ficheiro \texttt{cp2021t.lhs} ?? execut??vel e cont??m
o ``kit'' b??sico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2021t.lhs
\end{Verbatim}

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}

--- Extens??es adicionadas por Alef para resolu????es alternativas.
--- Resou????es principais n??o dependem delas.
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE MultiParamTypeClasses     #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE TypeOperators             #-}
{-# LANGUAGE UnicodeSyntax             #-}
---

{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat
import LTree
import Data.List hiding (find)
import Test.QuickCheck hiding ((><),choose,collect)
import qualified Test.QuickCheck as QuickCheck
import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
import Control.Monad ( zipWithM )
import Control.Applicative hiding ((<|>))
import System.Process
\end{code}
%endif

\noindent Abra o ficheiro \texttt{cp2021t.lhs} no seu editor de texto preferido
e verifique que assim ??: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
?? seleccionado pelo \GHCi\ para ser executado.

\section{Como realizar o trabalho}
Este trabalho te??rico-pr??tico deve ser realizado por grupos de 3 (ou 4) alunos.
Os detalhes da avalia????o (datas para submiss??o do relat??rio e sua defesa
oral) s??o os que forem publicados na \cp{p??gina da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo
de trabalho por forma a poderem responder ??s quest??es que ser??o colocadas
na \emph{defesa oral} do relat??rio.

Em que consiste, ent??o, o \emph{relat??rio} a que se refere o par??grafo anterior?
?? a edi????o do texto que est?? a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relat??rio dever?? conter ainda a identifica????o dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relat??rio deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o ??ndice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2021t.aux
    $ makeindex cp2021t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. Dever-se-?? ainda instalar o utilit??rio
\QuickCheck,
que ajuda a validar programas em \Haskell\ e a biblioteca \gloss{Gloss} para
gera????o de gr??ficos 2D:
\begin{Verbatim}[fontsize=\small]
    $ cabal install QuickCheck gloss --lib
\end{Verbatim}
Para testar uma propriedade \QuickCheck~|prop|, basta invoc??-la com o comando:
\begin{verbatim}
    > quickCheck prop
    +++ OK, passed 100 tests.
\end{verbatim}
Pode-se ainda controlar o n??mero de casos de teste e sua complexidade,
como o seguinte exemplo mostra:
\begin{verbatim}
    > quickCheckWith stdArgs { maxSuccess = 200, maxSize = 10 } prop
    +++ OK, passed 200 tests.
\end{verbatim}
Qualquer programador tem, na vida real, de ler e analisar (muito!) c??digo
escrito por outros. No anexo \ref{sec:codigo} disponibiliza-se algum
c??digo \Haskell\ relativo aos problemas que se seguem. Esse anexo dever??
ser consultado e analisado ?? medida que isso for necess??rio.

\subsection{Stack}

O \stack{Stack} ?? um programa ??til para criar, gerir e manter projetos em \Haskell.
Um projeto criado com o Stack possui uma estrutura de pastas muito espec??fica:

\begin{itemize}
\item Os m??dulos auxiliares encontram-se na pasta \emph{src}.
\item O m??dulos principal encontra-se na pasta \emph{app}.
\item A lista de dep??ndencias externas encontra-se no ficheiro \emph{package.yaml}.
\end{itemize}

Pode aceder ao \GHCi\ utilizando o comando:
\begin{verbatim}
stack ghci
\end{verbatim}

Garanta que se encontra na pasta mais externa \textbf{do projeto}.
A primeira vez que correr este comando as dep??ndencias externas ser??o instaladas automaticamente.

Para gerar o PDF, garanta que se encontra na diretoria \emph{app}.

\Problema

Os \emph{tipos de dados alg??bricos} estudados ao longo desta disciplina oferecem
uma grande capacidade expressiva ao programador. Gra??as ?? sua flexibilidade,
torna-se trivial implementar \DSL s
e at?? mesmo \href{http://www.cse.chalmers.se/~ulfn/papers/thesis.pdf}{linguagens de programa????o}.

Paralelamente, um t??pico bastante estudado no ??mbito de \DL\
?? a deriva????o autom??tica de express??es matem??ticas, por exemplo, de derivadas.
Duas t??cnicas que podem ser utilizadas para o c??lculo de derivadas s??o:

\begin{itemize}
\item \emph{Symbolic differentiation}
\item \emph{Automatic differentiation}
\end{itemize}

\emph{Symbolic differentiation} consiste na aplica????o sucessiva de transforma????es
(leia-se: fun????es) que sejam congruentes com as regras de deriva????o. O resultado
final ser?? a express??o da derivada.

O leitor atento poder?? notar um problema desta t??cnica: a express??o
inicial pode crescer de forma descontrolada, levando a um c??lculo pouco eficiente.
\emph{Automatic differentiation} tenta resolver este problema,
calculando \textbf{o valor} da derivada da express??o em todos os passos.
Para tal, ?? necess??rio calcular o valor da express??o \textbf{e} o valor da sua derivada.

Vamos de seguida definir uma linguagem de express??es matem??ticas simples e
implementar as duas t??cnicas de deriva????o autom??tica.
Para isso, seja dado o seguinte tipo de dados,

\begin{code}
data ExpAr a = X
           | N a
           | Bin BinOp (ExpAr a) (ExpAr a)
           | Un UnOp (ExpAr a)
           deriving (Eq, Show)
\end{code}

\noindent
onde |BinOp| e |UnOp| representam opera????es bin??rias e un??rias, respectivamente:

\begin{code}
data BinOp = Sum
           | Product
           deriving (Eq, Show)

data UnOp = Negate
          | E
          deriving (Eq, Show)
\end{code}

\noindent
O construtor |E| simboliza o exponencial de base $e$.

Assim, cada express??o pode ser uma vari??vel, um n??mero, uma opera????o bin??ria
aplicada ??s devidas express??es, ou uma opera????o un??ria aplicada a uma express??o.
Por exemplo,
\begin{spec}
Bin Sum X (N 10)
\end{spec}
designa |x+10| na nota????o matem??tica habitual.

\begin{enumerate}
\item A defini????o das fun????es |inExpAr| e |baseExpAr| para este tipo ?? a seguinte:
\begin{code}
inExpAr = either (const X) num_ops where
  num_ops = either N ops
  ops     = either bin (uncurry Un)
  bin(op, (a, b)) = Bin op a b

baseExpAr f g h j k l z = f -|- (g -|- (h >< (j >< k) -|- l >< z))
\end{code}

  Defina as fun????es |outExpAr| e |recExpAr|,
  e teste as propriedades que se seguem.
  \begin{propriedade}
    |inExpAr| e |outExpAr| s??o testemunhas de um isomorfismo,
    isto ??,
    |inExpAr . outExpAr = id| e |outExpAr . idExpAr = id|:
\begin{code}
prop_in_out_idExpAr :: (Eq a) => ExpAr a -> Bool
prop_in_out_idExpAr = inExpAr . outExpAr .==. id

prop_out_in_idExpAr :: (Eq a) => OutExpAr a -> Bool
prop_out_in_idExpAr = outExpAr . inExpAr .==. id
\end{code}
    \end{propriedade}

  \item Dada uma express??o aritm??tica e um escalar para substituir o |X|,
	a fun????o

\begin{quote}
      |eval_exp :: Floating a => a -> (ExpAr a) -> a|
\end{quote}

\noindent calcula o resultado da express??o. Na p??gina \pageref{pg:P1}
    esta fun????o est?? expressa como um catamorfismo. Defina o respectivo gene
    e, de seguida, teste as propriedades:
    \begin{propriedade}
       A fun????o |eval_exp| respeita os elementos neutros das opera????es.
\begin{code}
prop_sum_idr :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_sum_idr a exp = eval_exp a exp .=?=. sum_idr where
  sum_idr = eval_exp a (Bin Sum exp (N 0))

prop_sum_idl :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_sum_idl a exp = eval_exp a exp .=?=. sum_idl where
  sum_idl = eval_exp a (Bin Sum (N 0) exp)

prop_product_idr :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_product_idr a exp = eval_exp a exp .=?=. prod_idr where
  prod_idr = eval_exp a (Bin Product exp (N 1))

prop_product_idl :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_product_idl a exp = eval_exp a exp .=?=. prod_idl where
  prod_idl = eval_exp a (Bin Product (N 1) exp)

prop_e_id :: (Floating a, Real a) => a -> Bool
prop_e_id a = eval_exp a (Un E (N 1)) == expd 1

prop_negate_id :: (Floating a, Real a) => a -> Bool
prop_negate_id a = eval_exp a (Un Negate (N 0)) == 0
\end{code}
    \end{propriedade}
    \begin{propriedade}
      Negar duas vezes uma express??o tem o mesmo valor que n??o fazer nada.
\begin{code}
prop_double_negate :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_double_negate a exp = eval_exp a exp .=?=. eval_exp a (Un Negate (Un Negate exp))
\end{code}
    \end{propriedade}

  \item ?? poss??vel otimizar o c??lculo do valor de uma express??o aritm??tica tirando proveito
  dos elementos absorventes de cada opera????o. Implemente os genes da fun????o
\begin{spec}
      optmize_eval :: (Floating a, Eq a) => a -> (ExpAr a) -> a
\end{spec}
  que se encontra na p??gina \pageref{pg:P1} expressa como um hilomorfismo\footnote{Qual ?? a vantagem de implementar a fun????o |optimize_eval| utilizando um hilomorfismo em vez de utilizar um catamorfismo com um gene "inteligente"?}
  e teste as propriedades:

    \begin{propriedade}
      A fun????o |optimize_eval| respeita a sem??ntica da fun????o |eval|.
\begin{code}
prop_optimize_respects_semantics :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_optimize_respects_semantics a exp = eval_exp a exp .=?=. optmize_eval a exp
\end{code}
    \end{propriedade}


\item Para calcular a derivada de uma express??o, ?? necess??rio aplicar transforma????es
?? express??o original que respeitem as regras das derivadas:\footnote{%
	Apesar da adi????o e multiplica????o gozarem da propriedade comutativa,
	h?? que ter em aten????o a ordem das opera????es por causa dos testes.}

\begin{itemize}
  \item Regra da soma:
\begin{eqnarray*}
	\frac{d}{dx}(f(x)+g(x))=\frac{d}{dx}(f(x))+\frac{d}{dx}(g(x))
\end{eqnarray*}
  \item Regra do produto:
\begin{eqnarray*}
	\frac{d}{dx}(f(x)g(x))=f(x)\cdot \frac{d}{dx}(g(x))+\frac{d}{dx}(f(x))\cdot g(x)
\end{eqnarray*}
\end{itemize}

  Defina o gene do catamorfismo que ocorre na fun????o
    \begin{quote}
      |sd :: Floating a => ExpAr a -> ExpAr a|
    \end{quote}
  que, dada uma express??o aritm??tica, calcula a sua derivada.
  Testes a fazer, de seguida:
    \begin{propriedade}
       A fun????o |sd| respeita as regras de deriva????o.
\begin{code}
prop_const_rule :: (Real a, Floating a) => a -> Bool
prop_const_rule a = sd (N a) == N 0

prop_var_rule :: Bool
prop_var_rule = sd X == N 1

prop_sum_rule :: (Real a, Floating a) => ExpAr a -> ExpAr a -> Bool
prop_sum_rule exp1 exp2 = sd (Bin Sum exp1 exp2) == sum_rule where
  sum_rule = Bin Sum (sd exp1) (sd exp2)

prop_product_rule :: (Real a, Floating a) => ExpAr a -> ExpAr a -> Bool
prop_product_rule exp1 exp2 = sd (Bin Product exp1 exp2) == prod_rule where
  prod_rule =Bin Sum (Bin Product exp1 (sd exp2)) (Bin Product (sd exp1) exp2)

prop_e_rule :: (Real a, Floating a) => ExpAr a -> Bool
prop_e_rule exp = sd (Un E exp) == Bin Product (Un E exp) (sd exp)

prop_negate_rule :: (Real a, Floating a) => ExpAr a -> Bool
prop_negate_rule exp = sd (Un Negate exp) == Un Negate (sd exp)
\end{code}
    \end{propriedade}

\item Como foi visto, \emph{Symbolic differentiation} n??o ?? a t??cnica
mais eficaz para o c??lculo do valor da derivada de uma express??o.
\emph{Automatic differentiation} resolve este problema c??lculando o valor
da derivada em vez de manipular a express??o original.

  Defina o gene do catamorfismo que ocorre na fun????o
    \begin{spec}
    ad :: Floating a => a -> ExpAr a -> a
    \end{spec}
  que, dada uma express??o aritm??tica e um ponto,
  calcula o valor da sua derivada nesse ponto,
  sem transformar manipular a express??o original.
  Testes a fazer, de seguida:

    \begin{propriedade}
       Calcular o valor da derivada num ponto |r| via |ad| ?? equivalente a calcular a derivada da express??o e avalia-la no ponto |r|.
\begin{code}
prop_congruent :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_congruent a exp = ad a exp .=?=. eval_exp a (sd exp)
\end{code}
    \end{propriedade}
\end{enumerate}

\Problema

Nesta disciplina estudou-se como fazer \pd{programa????o din??mica} por c??lculo,
recorrendo ?? lei de recursividade m??tua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, p??gina \pageref{eq:fokkinga}.}

Para o caso de fun????es sobre os n??meros naturais (|Nat0|, com functor |fF
X = 1 + X|) ?? f??cil derivar-se da lei que foi estudada uma
	\emph{regra de algibeira}
	\label{pg:regra}
que se pode ensinar a programadores que n??o tenham estudado
\cp{C??lculo de Programas}. Apresenta-se de seguida essa regra, tomando como exemplo o
c??lculo do ciclo-\textsf{for} que implementa a fun????o de Fibonacci, recordar
o sistema
\begin{spec}
fib 0 = 1
fib(n+1) = f n

f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-?? de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item	O corpo do ciclo |loop| ter?? tantos argumentos quanto o n??mero de fun????es mutuamente recursivas.
\item	Para as vari??veis escolhem-se os pr??prios nomes das fun????es, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros s??mbolos, mas numa primeira leitura
d?? jeito usarem-se tais nomes.}
\item	Para os resultados v??o-se buscar as express??es respectivas, retirando a vari??vel |n|.
\item	Em |init| coleccionam-se os resultados dos casos de base das fun????es, pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polin??mios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o m??todo estudado nas aulas\footnote{Sec????o 3.17 de \cite{Ol18} e t??pico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade m??tua} nos v??deos das aulas te??ricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas fun????es mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n

k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementa????o, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b)
\end{code}
O que se pede ent??o, nesta pergunta?
Dada a f??rmula que d?? o |n|-??simo \catalan{n??mero de Catalan},
\begin{eqnarray}
	C_n = \frac{(2n)!}{(n+1)! (n!) }
	\label{eq:cat}
\end{eqnarray}
derivar uma implementa????o de $C_n$ que n??o calcule factoriais nenhuns.
Isto ??, derivar um ciclo-\textsf{for}
\begin{spec}
cat = cdots . for loop init where cdots
\end{spec}
que implemente esta fun????o.

\begin{propriedade}
A fun????o proposta coincidem com a defini????o dada:
\begin{code}
prop_cat = (>=0) .==>. (catdef  .==. cat)
\end{code}
\end{propriedade}
%
\textbf{Sugest??o}: Come??ar por estudar muito bem o processo de c??lculo dado
no anexo \ref{sec:recmul} para o problema (semelhante) da fun????o exponencial.


\Problema

As \bezier{curvas de B??zier}, designa????o dada em honra ao engenheiro
\href{https://en.wikipedia.org/wiki/Pierre_B%C3%A9zier}{Pierre B??zier},
s??o curvas ub??quas na ??rea de computa????o gr??fica, anima????o e modela????o.
Uma curva de B??zier ?? uma curva param??trica, definida por um conjunto
$\{P_0,...,P_N\}$ de pontos de controlo, onde $N$ ?? a ordem da curva.

\begin{figure}[h!]
  \centering
  \includegraphics[width=0.8\textwidth]{cp2021t_media/Bezier_curves.png}
  \caption{Exemplos de curvas de B??zier retirados da \bezier{ Wikipedia}.}
\end{figure}

O algoritmo de \emph{De Casteljau} ?? um m??todo recursivo capaz de calcular
curvas de B??zier num ponto. Apesar de ser mais lento do que outras abordagens,
este algoritmo ?? numericamente mais est??vel, trocando velocidade por corre????o.

De forma sucinta, o valor de uma curva de B??zier de um s?? ponto $\{P_0\}$
(ordem $0$) ?? o pr??prio ponto $P_0$. O valor de uma curva de B??zier de ordem
$N$ ?? calculado atrav??s da interpola????o linear da curva de B??zier dos primeiros
$N-1$ pontos e da curva de B??zier dos ??ltimos $N-1$ pontos.

A interpola????o linear entre 2 n??meros, no intervalo $[0, 1]$, ?? dada pela
seguinte fun????o:

\begin{code}
linear1d :: Rational -> Rational -> OverTime Rational
linear1d a b = formula a b where
  formula :: Rational -> Rational -> Float -> Rational
  formula x y t = ((1.0 :: Rational) - (toRational t)) * x + (toRational t) * y
\end{code}
%
A interpola????o linear entre 2 pontos de dimens??o $N$ ?? calculada atrav??s
da interpola????o linear de cada dimens??o.

O tipo de dados |NPoint| representa um ponto com $N$ dimens??es.
\begin{code}
type NPoint = [Rational]
\end{code}
Por exemplo, um ponto de 2 dimens??es e um ponto de 3 dimens??es podem ser
representados, respetivamente, por:
\begin{spec}
p2d = [1.2, 3.4]
p3d = [0.2, 10.3, 2.4]
\end{spec}
%
O tipo de dados |OverTime a| representa um termo do tipo |a| num dado instante
(dado por um |Float|).
\begin{code}
type OverTime a = Float -> a
\end{code}
%
O anexo \ref{sec:codigo} tem definida a fun????o
    \begin{spec}
    calcLine :: NPoint -> (NPoint -> OverTime NPoint)
    \end{spec}
que calcula a interpola????o linear entre 2 pontos, e a fun????o
    \begin{spec}
    deCasteljau :: [NPoint] -> OverTime NPoint
    \end{spec}
que implementa o algoritmo respectivo.

\begin{enumerate}

\item Implemente |calcLine| como um catamorfismo de listas,
testando a sua defini????o com a propriedade:
    \begin{propriedade} Defini????o alternativa.
\begin{code}
prop_calcLine_def :: NPoint -> NPoint -> Float -> Bool
prop_calcLine_def p q d = calcLine p q d ==  zipWithM linear1d p q d
\end{code}
    \end{propriedade}

\item Implemente a fun????o |deCasteljau| como um hilomorfismo, testando agora a propriedade:
    \begin{propriedade}
      Curvas de B??zier s??o sim??tricas.
\begin{code}
prop_bezier_sym :: [[Rational]] -> Gen Bool
prop_bezier_sym l = all (< delta) . calc_difs . bezs <$> elements ps  where
  calc_difs = (\(x, y) -> zipWith (\w v -> if w >= v then w - v else v - w) x y)
  bezs t    = (deCasteljau l t, deCasteljau (reverse l) (fromRational (1 - (toRational t))))
  delta = 1e-2
\end{code}
    \end{propriedade}

  \item Corra a fun????o |runBezier| e aprecie o seu trabalho\footnote{%
        A representa????o em Gloss ?? uma adapta????o de um
        \href{https://github.com/hrldcpr/Bezier.hs}{projeto}
        de Harold Cooper.} clicando na janela que ?? aberta (que cont??m, a verde, um ponto
        inicila) com o bot??o esquerdo do rato para adicionar mais pontos.
        A tecla |Delete| apaga o ponto mais recente.

\end{enumerate}

\Problema

Seja dada a f??rmula que calcula a m??dia de uma lista n??o vazia $x$,
\begin{equation}
avg\ x = \frac 1 k\sum_{i=1}^{k} x_i
\end{equation}
onde $k=length\ x$. Isto ??, para sabermos a m??dia de uma lista precisamos de dois catamorfismos: o que faz o somat??rio e o que calcula o comprimento a lista.
Contudo, ?? facil de ver que
\begin{quote}
	$avg\ [a]=a$
\\
	$avg (a:x) = \frac 1 {k+1}(a+\sum_{i=1}^{k} x_i) = \frac{a+k(avg\ x)}{k+1}$ para $k=length\ x$
\end{quote}
Logo $avg$ est?? em recursividade m??tua com $length$ e o par de fun????es pode ser expresso por um ??nico catamorfismo, significando que a lista apenas ?? percorrida uma vez.

\begin{enumerate}

\item	Recorra ?? lei de recursividade m??tua para derivar a fun????o
|avg_aux = cata (either b q)| tal que
|avg_aux = split avg length| em listas n??o vazias.

\item	Generalize o racioc??nio anterior para o c??lculo da m??dia de todos os elementos de uma \LTree\ recorrendo a uma ??nica travessia da ??rvore (i.e.\ catamorfismo).

\end{enumerate}
Verifique as suas fun????es testando a propriedade seguinte:
\begin{propriedade}
A m??dia de uma lista n??o vazia e de uma \LTree\ com os mesmos elementos coincide,
a menos de um erro de 0.1 mil??simas:
\begin{code}
prop_avg = nonempty .==>. diff .<=. const 0.000001 where
   diff l = avg l - (avgLTree . genLTree) l
   genLTree = anaLTree lsplit
   nonempty = (>[])
\end{code}
\end{propriedade}

\Problema	(\textbf{NB}: Esta quest??o ?? \textbf{opcional} e funciona como \textbf{valoriza????o} apenas para os alunos que desejarem faz??-la.)

\vskip 1em \noindent
Existem muitas linguagens funcionais para al??m do \Haskell, que ?? a linguagem usada neste trabalho pr??tico. Uma delas ?? o \Fsharp\ da Microsoft. Na directoria \verb!fsharp! encontram-se os m??dulos \Cp, \Nat\ e \LTree\ codificados em \Fsharp. O que se pede ?? a biblioteca \BTree\ escrita na mesma linguagem.

Modo de execu????o: o c??digo que tiverem produzido nesta pergunta deve ser colocado entre o \verb!\begin{verbatim}! e o \verb!\end{verbatim}! da correspondente parte do anexo \ref{sec:resolucao}. Para al??m disso, os grupos podem demonstrar o c??digo na oral.

\newpage

\part*{Anexos}

\appendix

\section{Como exprimir c??lculos e diagramas em LaTeX/lhs2tex}
Como primeiro exemplo, estudar o texto fonte deste trabalho para obter o
efeito:\footnote{Exemplos tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
	|id = split f g|
%
\just\equiv{ universal property }
%
        |lcbr(
		p1 . id = f
	)(
		p2 . id = g
	)|
%
\just\equiv{ identity }
%
        |lcbr(
		p1 = f
	)(
		p2 = g
	)|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo ?? \emph{package} \LaTeX\
\href{https://ctan.org/pkg/xymatrix}{xymatrix}, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}



\section{Programa????o din??mica por recursividade m??ltipla}\label{sec:recmul}
Neste anexo d??o-se os detalhes da resolu????o do Exerc??cio \ref{ex:exp} dos apontamentos da
disciplina\footnote{Cf.\ \cite{Ol18}, p??gina \pageref{ex:exp}.},
onde se pretende implementar um ciclo que implemente
o c??lculo da aproxima????o at?? |i=n| da fun????o exponencial $exp\ x = e^x$,
via s??rie de Taylor:
\begin{eqnarray}
	exp\ x
& = &
	\sum_{i=0}^{\infty} \frac {x^i} {i!}
\end{eqnarray}
Seja $e\ x\ n = \sum_{i=0}^{n} \frac {x^i} {i!}$ a fun????o que d?? essa aproxima????o.
?? f??cil de ver que |e x 0 = 1| e que $|e x (n+1)| = |e x n| + \frac {x^{n+1}} {(n+1)!}$.
Se definirmos $|h x n| = \frac {x^{n+1}} {(n+1)!}$ teremos |e x| e |h x| em recursividade
m??tua. Se repetirmos o processo para |h x n| etc obteremos no total tr??s fun????es nessa mesma
situa????o:
\begin{spec}
e x 0 = 1
e x (n+1) = h x n + e x n

h x 0 = x
h x (n+1) = x/(s n) * h x n

s 0 = 2
s (n+1) = 1 + s n
\end{spec}
Segundo a \emph{regra de algibeira} descrita na p??gina \ref{pg:regra} deste enunciado,
ter-se-??, de imediato:
\begin{code}
e' x = prj . for loop init where
     init = (1,x,2)
     loop(e,h,s)=(h+e,x/s*h,1+s)
     prj(e,h,s) = e
\end{code}

\section{C??digo fornecido}\label{sec:codigo}

\subsection*{Problema 1}

\begin{code}
expd :: Floating a => a -> a
expd = Prelude.exp

type OutExpAr a = Either () (Either a (Either (BinOp, (ExpAr a, ExpAr a)) (UnOp, ExpAr a)))
\end{code}

\subsection*{Problema 2}
Defini????o da s??rie de Catalan usando factoriais (\ref{eq:cat}):
\begin{code}
catdef n = div (fac((2*n))) ((fac((n+1))*(fac n)))
\end{code}
Or??culo para inspec????o dos primeiros 26 n??meros de Catalan\footnote{Fonte:
\catalan{Wikipedia}.}:
\begin{code}
oracle = [
    1, 1, 2, 5, 14, 42, 132, 429, 1430, 4862, 16796, 58786, 208012, 742900, 2674440, 9694845,
    35357670, 129644790, 477638700, 1767263190, 6564120420, 24466267020,
    91482563640, 343059613650, 1289904147324, 4861946401452
    ]
\end{code}

\subsection*{Problema 3}
Algoritmo:
\begin{spec}
deCasteljau :: [NPoint] -> OverTime NPoint
deCasteljau [] = nil
deCasteljau [p] = const p
deCasteljau l = \pt -> (calcLine (p pt) (q pt)) pt where
  p = deCasteljau (init l)
  q = deCasteljau (tail l)
\end{spec}
Fun????o auxiliar:
\begin{spec}
calcLine :: NPoint -> (NPoint -> OverTime NPoint)
calcLine [] = const nil
calcLine(p:x) = curry g p (calcLine x) where
   g :: (Rational, NPoint -> OverTime NPoint) -> (NPoint -> OverTime NPoint)
   g (d,f) l = case l of
       []     -> nil
       (x:xs) -> \z -> concat $ (sequenceA [singl . linear1d d x, f xs]) z
\end{spec}
2D:
\begin{code}
bezier2d :: [NPoint] -> OverTime (Float, Float)
bezier2d [] = const (0, 0)
bezier2d l = \z -> (fromRational >< fromRational) . (\[x, y] -> (x, y)) $ ((deCasteljau l) z)
\end{code}
Modelo:
\begin{code}
data World = World { points :: [NPoint]
                   , time :: Float
                   }
initW :: World
initW = World [] 0

tick :: Float -> World -> World
tick dt world = world { time=(time world) + dt }

actions :: Event -> World -> World
actions (EventKey (MouseButton LeftButton) Down _ p) world =
  world {points=(points world) ++ [(\(x, y) -> map toRational [x, y]) p]}
actions (EventKey (SpecialKey KeyDelete) Down _ _) world =
    world {points = cond (== []) id init (points world)}
actions _ world = world

scaleTime :: World -> Float
scaleTime w = (1 + cos (time w)) / 2

bezier2dAtTime :: World -> (Float, Float)
bezier2dAtTime w = (bezier2dAt w) (scaleTime w)

bezier2dAt :: World -> OverTime (Float, Float)
bezier2dAt w = bezier2d (points w)

thicCirc :: Picture
thicCirc = ThickCircle 4 10

ps :: [Float]
ps = map fromRational ps' where
  ps' :: [Rational]
  ps' = [0, 0.01..1] -- interval
\end{code}
Gloss:
\begin{code}
picture :: World -> Picture
picture world = Pictures
  [ animateBezier (scaleTime world) (points world)
  , Color white . Line . map (bezier2dAt world) $ ps
  , Color blue . Pictures $ [Translate (fromRational x) (fromRational y) thicCirc | [x, y] <- points world]
  , Color green $ Translate cx cy thicCirc
  ] where
  (cx, cy) = bezier2dAtTime world
\end{code}
Anima????o:
\begin{code}
animateBezier :: Float -> [NPoint] -> Picture
animateBezier _ [] = Blank
animateBezier _ [_] = Blank
animateBezier t l = Pictures
  [ animateBezier t (init l)
  , animateBezier t (tail l)
  , Color red . Line $ [a, b]
  , Color orange $ Translate ax ay thicCirc
  , Color orange $ Translate bx by thicCirc
  ] where
  a@(ax, ay) = bezier2d (init l) t
  b@(bx, by) = bezier2d (tail l) t
\end{code}
Propriedades e \emph{main}:
\begin{code}
runBezier :: IO ()
runBezier = play (InWindow "B??zier" (600, 600) (0,  0))
  black 50 initW picture actions tick

runBezierSym :: IO ()
runBezierSym = quickCheckWith (stdArgs {maxSize = 20, maxSuccess = 200} ) prop_bezier_sym
\end{code}

Compila????o e execu????o dentro do interpretador:\footnote{Pode ser ??til em testes
envolvendo \gloss{Gloss}. Nesse caso, o teste em causa deve fazer parte de uma fun????o
|main|.}
\begin{code}
main = runBezier

run = do { system "ghc cp2021t" ; system "./cp2021t" }
\end{code}

\subsection*{QuickCheck}
C??digo para gera????o de testes:
\begin{code}
instance Arbitrary UnOp where
  arbitrary = elements [Negate, E]

instance Arbitrary BinOp where
  arbitrary = elements [Sum, Product]

instance (Arbitrary a) => Arbitrary (ExpAr a) where
  arbitrary = do
    binop <- arbitrary
    unop  <- arbitrary
    exp1  <- arbitrary
    exp2  <- arbitrary
    a     <- arbitrary

    frequency . map (id >< pure) $ [(20, X), (15, N a), (35, Bin binop exp1 exp2), (30, Un unop exp1)]


infixr 5 .=?=.
(.=?=.) :: Real a => a -> a -> Bool
(.=?=.) x y = (toRational x) == (toRational y)


\end{code}

\subsection*{Outras fun????es auxiliares}
%----------------- Outras defini????es auxiliares -------------------------------------------%
L??gicas:
\begin{code}
infixr 0 .==>.
(.==>.) :: (Testable prop) => (a -> Bool) -> (a -> prop) -> a -> Property
p .==>. f = \a -> p a ==> f a

infixr 0 .<==>.
(.<==>.) :: (a -> Bool) -> (a -> Bool) -> a -> Property
p .<==>. f = \a -> (p a ==> property (f a)) .&&. (f a ==> property (p a))

infixr 4 .==.
(.==.) :: Eq b => (a -> b) -> (a -> b) -> (a -> Bool)
f .==. g = \a -> f a == g a

infixr 4 .<=.
(.<=.) :: Ord b => (a -> b) -> (a -> b) -> (a -> Bool)
f .<=. g = \a -> f a <= g a

infixr 4 .&&&.
(.&&&.) :: (a -> Bool) -> (a -> Bool) -> (a -> Bool)
f .&&&. g = \a -> ((f a) && (g a))
\end{code}

%----------------- Solu????es dos alunos -----------------------------------------%

\section{Solu????es dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas solu????es para os exerc??cios
propostos, de acordo com o "layout" que se fornece. N??o podem ser
alterados os nomes ou tipos das fun????es dadas, mas pode ser adicionado
texto, disgramas e/ou outras fun????es auxiliares que sejam necess??rias.

Valoriza-se a escrita de \emph{pouco} c??digo que corresponda a solu????es
simples e elegantes.

\subsection*{Problema 1} \label{pg:P1}
S??o dadas:
\begin{code}
cataExpAr g = g . recExpAr (cataExpAr g) . outExpAr
anaExpAr g = inExpAr . recExpAr (anaExpAr g) . g
hyloExpAr h g = cataExpAr h . anaExpAr g

eval_exp :: Floating a => a -> (ExpAr a) -> a
eval_exp a = cataExpAr (g_eval_exp a)

optmize_eval :: (Floating a, Eq a) => a -> (ExpAr a) -> a
optmize_eval a = hyloExpAr (gopt a) clean


sd :: Floating a => ExpAr a -> ExpAr a
sd = p2 . cataExpAr sd_gen

ad :: Floating a => a -> ExpAr a -> a
ad v = p2 . cataExpAr (ad_gen v)
\end{code}

\\

\begin{eqnarray*}
\start
  |outExpAr . inExpAr = id|
%
\just\equiv{Defini????o de inExpAr; Fus??o-+; Cancelamento-+}
%
|lcbr(
  outExpAr . const X = id . i1
)(
  lcbr(
    outExpAr . N  = id . i2 . i1
  )(
    lcbr(
      outExpAr . bin  = id . i2 . i2 . i1
    )(
      outExpAr . uncurry Un = id . i2 . i2 . i2
    )
  )
)|
%
\just\equiv{ Igualdade extensional, Natural-id }
%
|lcbr(
  (outExpAr . const X) () = i1 ()
)(
  lcbr(
    (outExpAr . N) a  =  (i2 . i1) a
  )(
    lcbr(
      (outExpAr . bin) (op,(l,r)) = (i2 . i2 . i1) (op,(l,r))
    )(
      (outExpAr . uncurry Un) (op,a) = (i2 . i2 . i2) (op,a)
    )
  )
)|
%
\just\equiv{ Def-comp, Def-const, Def-|N|, Def-|bin|, Def-Uncurry, Def-|Un| }
%
|lcbr(
  outExpAr X = i1 ()
)(
  lcbr(
    outExpAr (N a) = i2 $ i1 a
  )(
    lcbr(
      outExpAr (Bin op l r)  = i2 $ i2 $ i1 (op,(l,r))
    )(
      outExpAr (Un op a) = i2 $ i2 $ i2 (op,a)
    )
  )
)|
\qed
\end{eqnarray*}


\begin{eqnarray*}
\xymatrix@@C=2cm{
    & ExpAr \ A\ar@@/^3pc/[r]^{outExpAr} \ar@@{{}{ }{}}@@/^1.8pc/[r]_{\cong}
    & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar@@/^3pc/[l]^{inExpAr}
}
\end{eqnarray*}


\begin{eqnarray*}
\start
|recExprAr f = id + (id + (id >< (f >< f) + id >< f ))|
%
\just\equiv{ Def-baseExpAr }
%
|recExprAr f = baseExpAr id id id f f id f|
\qed
\end{eqnarray*}

\begin{center}
\xymatrix@@C=2cm@@R=3cm{
    & ExpAr \ A\ar@@/^2pc/[r]^{outExpAr}\ar[d]_{|cata (g_eval a)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[d]^{recExpAr \ |cata (g_eval a)|}\ar@@/^2pc/[l]^{inExpAr}  \\
    & |Nat0|  & 1 + |Nat0| + BinOp \times |Nat0|^2 + UnOp \times |Nat0|\ar[l]_(0.6){g\_eval \ a}
}
\end{center}

\begin{center}
\xymatrix@@C=2cm@@R=3cm{
    & ExpAr \ A\ar@@/^2pc/[r]^{outExpAr} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar@@/^2pc/[l]^{inExpAr}  \\
    & ExpAr \ A\ar[r]^(0.25){clean} \ar[u]^{|ana (clean)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[u]_{recExpAr \ |ana(clean)|}
}
\end{center}

\begin{center}
\xymatrix@@C=2cm@@R=3cm{
    & ExpAr \ A\ar[r]^(0.25){clean} \ar[d]_{|ana (clean)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[d]^{recExpAr \ |ana(clean)|}\\
    & ExpAr \ A\ar@@/^2pc/[r]^{outExpAr}\ar[d]_{|cata (gopt a)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[d]^{recExpAr \ |cata (gopt a)|}\ar@@/^2pc/[l]^{inExpAr}  \\
    & |Nat0|  & 1 + |Nat0| + BinOp \times |Nat0|^2 + UnOp \times |Nat0|\ar[l]_(0.6){gopt \ a}
}
\end{center}

\begin{center}
\xymatrix@@C=2cm@@R=3cm{
    & ExpAr \ A\ar@@/^2pc/[r]^{outExpAr}\ar[d]_{|cata (sd_gen)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[d]^{|recExpAr (cata (sd_gen))|}\ar@@/^2pc/[l]^{|inExpAr|}  \\
    & (ExpAr A)^2   & 1 + A + BinOp \times ((ExpAr A)^2 \times (ExpAr A)^2) + UnOp \times (ExpAr A)^2\ar[l]_(0.73){sd\_gen}
}
\end{center}

\begin{center}
\xymatrix@@C=2cm@@R=3cm{
    & ExpAr \ A\ar@@/^2pc/[r]^{|outExpAr|}\ar[d]_{|cata (ad_gen a)|} & 1 + A + BinOp \times (ExpAr A)^2 + UnOp \times (ExpAr A)\ar[d]^{|recExpAr (cata (ad_gen a))|}\ar@@/^2pc/[l]^{|inExpAr|}  \\
    & |Nat0|^2   & 1 + A + BinOp \times (|Nat0|^2 \times |Nat0|^2) + UnOp \times (|Nat0|^2)\ar[l]_(0.73){ad\_gen \ a }
}
\end{center}



Definir:

\begin{code}
outExpAr X = i1 ()
outExpAr (N a) = i2 $ i1 a
outExpAr (Bin op l r) = i2 $ i2 $ i1 (op,(l,r))
outExpAr (Un op a) = i2 $ i2 $ i2 (op,a)


recExpAr f  = baseExpAr id id id f f id f


g_eval_exp x (Left ()) = x
g_eval_exp x (Right (Left a)) = a
g_eval_exp x (Right (Right (Left (Sum,(e,d))))) = e+d
g_eval_exp x (Right (Right (Left (Product,(e,d))))) = e*d
g_eval_exp x (Right (Right (Right (Negate,a)))) = negate a
g_eval_exp x (Right (Right (Right (E,a)))) = expd a


clean a = (outExpAr . h)  a where
    h (Bin Product (N 0) r) = N 0
    h (Bin Product r (N 0) ) = N 0
    h (Un E (N 0)) = N 1
    h (Un Negate (N 0)) = N 0
    h x = x


gopt a = g_eval_exp a
\end{code}

\begin{code}
sd_gen :: Floating a =>
    Either () (Either a (Either (BinOp, ((ExpAr a, ExpAr a),
    (ExpAr a, ExpAr a))) (UnOp, (ExpAr a, ExpAr a)))) -> (ExpAr a, ExpAr a)
sd_gen (Left ()) = (X, N 1)
sd_gen (Right (Left a)) = (N a, N 0)
sd_gen (Right (Right (Left (Sum,((e1,d1),(e2,d2)))))) = (Bin Sum e1 e2, Bin Sum d1 d2)
sd_gen (Right (Right (Left (Product,((e1,d1),(e2,d2))))))
    = (Bin Product e1 e2, Bin Sum (Bin Product e1 d2) (Bin Product d1 e2 ))
sd_gen (Right (Right (Right (Negate,(e,d))))) = (Un Negate e , Un Negate d)
sd_gen (Right (Right (Right (E,(e,d))))) = (Un E e , Bin Product (Un E e) d)
\end{code}

\begin{code}
ad_gen x (Left ()) = (x, 1)
ad_gen x (Right (Left a)) = (a, 0)
ad_gen x (Right (Right (Left (Sum,((e1,d1),(e2,d2)))))) = (e1+e2, d1+d2)
ad_gen x (Right (Right (Left (Product,((e1,d1),(e2,d2)))))) = (e1*e2, e1*d2 + e2*d1)
ad_gen x (Right (Right (Right (Negate,(e,d))))) = (negate e, negate d)
ad_gen x (Right (Right (Right (E,(e,d))))) = (expd e, d * (expd e))
\end{code}

\subsection*{Problema 2}
Definir
\begin{code}
loop = g where g(c,a,b) = (div (c*a) b, a+4, b+1)
inic = (1,2,2)
prj = p where p(c,_,_) = c
\end{code}
por forma a que
\begin{code}
cat = prj . (for loop inic)
\end{code}
seja a fun????o pretendida.
\textbf{NB}: usar divis??o inteira.
Apresentar de seguida a justifica????o da solu????o encontrada.
\begin{eqnarray}
    C_n = \frac{(2n)!}{(n+1)! (n!) }
    \label{eq:cat}
\end{eqnarray}

\begin{math}
\begin{array}{cccc}
 & C_{0} & = & 1\\
 & C_{n+1} & = & \frac{C_{n}a_{n}}{b_{n}}\\
\\
 & a_{n} & = & 4n+2\\
 & b_{n} & = & n+2\\
\\
 & a_{0} & = & 2\\
 & a_{n+1} & = & a_{n}+4\\
\\
 & b_{0} & = & 2\\
 & b_{n+1} & = & b_{n}+1\\
\\
\end{array}
\end{math}


\subsection*{Problema 3}
\begin{center}
\xymatrix@@C=3cm@@R=2cm{
    & |Rational|^*\ar@@/^2pc/[r]^{|outList|}\ar[d]_{|cataList (h)|} & 1 + |Rational| \times |Rational|^* \ar[d]^{id + id \times |cataList (h)|}\ar@@/^2pc/[l]^{|inList|}  \\
    & |OverTime| \ |Rational|^*   & 1 + |Rational| \times |OverTime| \ |Rational|^* \ar[l]_{|h = either f g|}
}
\end{center}

\\

\begin{center}
\xymatrix@@C=3cm@@R=3cm{
    & [|Rational|^*]\ar[r]^{coalg} \ar[d]_{|anaList (coalg)|} & [|Rational|^*] + [|Rational|^*] \times [|Rational|^*]\ar[d]^{id + |anaList(coalg)| \times |anaList(coalg)|}\\
    & LTree \ [|Rational|^*] \ar@@/^2pc/[r]^{|outLTree|}\ar[d]_{|cataLTree (alg)|} & [|Rational|^*] + LTree \ [|Rational|^*] \times LTree \ [|Rational|^*] \ar[d]^{id + |cataLTree (alg)| \times |cataLTree (alg)| }\ar@@/^2pc/[l]^{|inLTree|}  \\
    & |OverTime| \ |Rational|^*   & |Rational|^* + |OverTime| \ |Rational|^* \times |OverTime| \ |Rational|^* \ar[l]_(0.6){alg \ = \ |either a b|}
}
\end{center}


\begin{code}
calcLine :: NPoint -> (NPoint -> OverTime NPoint)
calcLine = cataList h where
    h = either f g where
        f _ _ = nil
        g _ [] =  nil
        g (d,f) (x:xs) =  \z -> concat $ (sequenceA [singl . linear1d d x, f xs]) z
\end{code}


\begin{code}
deCasteljau :: [NPoint] -> OverTime NPoint
deCasteljau = hyloAlgForm alg  coalg where
    coalg = c where
        c [] = i1 []
        c [a] = i1 [a]
        c l = i2  (init l, tail l)
    alg = either a b where
        a [] = nil
        a [x]  =  const x
        b (e,d) = \pt -> (calcLine (e pt) (d pt)) pt

hyloAlgForm = hyloLTree
\end{code}


Uma outra solu????o para o deCasteljau, criando um novo tipo de dados intermedio.
\begin{code}
deCasteljau' :: [NPoint] -> OverTime NPoint
deCasteljau' = hyloAlgForm' alg  coalg where
  coalg = (id -|- (id -|- (split init  tail)))  . outSL
  alg = either (const nil) a
  a = either const b
  b (e,d) = \pt -> (calcLine (e pt) (d pt)) pt

outSL [] = i1 ()
outSL [a] = i2 (i1 a)
outSL l = i2  (i2 l)

hyloAlgForm' = h where
    h a b = cataC a . anaC b


data Castel a = Empty | Single a | InitTail (Castel a, Castel a) deriving Show

inC = either (const Empty) (either Single InitTail)

outC Empty = i1 ()
outC (Single a) = i2 (i1 a)
outC (InitTail (e,d)) = i2 (i2 (e,d))

fC f = id -|- (id -|- f >< f )

cataC f = f . fC (cataC f) .  outC
anaC g = inC . fC (anaC g) . g
\end{code}


\subsection*{Problema 4}
\begin{center}
\xymatrix@@C=3cm@@R=2cm{
    & |Nat0|^*\ar@@/^2pc/[r]^{|outL|}\ar[d]_{|cataL (either b q) = avg_aux|} & |Nat0| + |Nat0| \times |Nat0|^* \ar[d]^{id + id \times |cataL (either b q)|}\ar@@/^2pc/[l]^{|inL|}  \\
    & |Nat0|\times \N  & |Nat0| + |Nat0|\times (|Nat0| \times \N) \ar[l]_{|either b q|}
}
\end{center}


\begin{eqnarray*}
\start
|split avg length = cataL (either b q)|
%
\just\equiv{ Universal-cata }
%
|split avg length . inL = (either b q) . recL (split avg length)|
%
\just\equiv{ Fus??o-+, Absor????o-+, Eq-+, Defini????o de |inL|, Defini????o de |recL|}
%
|lcbr(
  split avg length . singl = b . id
)(
  split avg length . cons = q . id >< split avg length
)|
%
\just\equiv{ Igualdade extensional, Natural-id }
%
|lcbr(
  (split avg length . singl) x = b x
)(
  (split avg length . cons) (x,xs) = (q . id >< split avg length) (x,xs)
)|
%
\just\equiv{ Def-comp, Natural-id, Def-$\times$, Def-split, Defini????o de singl, Defini????o de cons }
%
|lcbr(
  split avg length [x] = b x
)(
  split avg length (x:xs) = q (x, (avg xs, length xs))
)|
\qed
\end{eqnarray*}



Solu????o para listas n??o vazias:
\begin{code}
avg = p1.avg_aux
\end{code}

\begin{code}
inL = either singl cons
outL [a] = i1 a
outL (a:x) = i2 (a,x)
recL f = id -|- id >< f
cataL g = g . recL (cataL g) . outL

avg_aux = cataL (either b q) where
   b x = (x,1)
   q (x,(a,l)) = ((x + (a*l)) / (l+1) ,l+1)
\end{code}


\begin{center}
\xymatrix@@C=3cm@@R=2cm{
    & LTree \ |Nat0|\ar@@/^2pc/[r]^{|outLTree|}\ar[d]_{|cataLTree (gene)|} & |Nat0| + LTree \ |Nat0| \times LTree \ |Nat0| \ar[d]^{id + |cataLTree (gene)| \times |cataLTree (gene)|}\ar@@/^2pc/[l]^{|inLTree|}  \\
    & |Nat0|\times \N  & |Nat0| + (|Nat0| \times \N) \times (|Nat0| \times \N) \ar[l]_{gene \ = \ |either b q|}
}
\end{center}


\begin{math}
\start
|split avg length = cataLTree gene|
%
\just\equiv{ Universal-cata, gene = |either b q| }
%
|split avg length . inLTree = (either b q) . recLTree (split avg length)|
%
\just\equiv{ Fus??o-+, Absor????o-+, Eq-+, Defini????o de inL, Defini????o de recLTree}
%
|lcbr(
  split avg length . Leaf = b . id
)(
  split avg length . Fork = q . split avg length >< split avg length
)|
%
\just\equiv{ Igualdade extensional, Natural-id }
%
|lcbr(
  (split avg length . Leaf) a = b a
)(
  (split avg length . Fork) (LTree a, LTree a) = (q . split avg length >< split avg length) (LTree a, LTree a)
)|
%
\just\equiv{ Def-comp, Natural-id, Def-$\times$, Def-split, Defini????o de Leaf, Defini????o de Fork }
%
|lcbr(
  (split avg length) (Leaf a) = b a
)(
  (split avg length) (Fork (LTree a, LTree a)) = q ((avg (LTree a), length (LTree a)), (avg (LTree a), length (LTree a)))
)|
\qed
\end{math}


Solu????o para ??rvores de tipo \LTree:
\begin{code}
avgLTree = p1 . cataLTree (gene) where
  gene = either b q
  b a = (a,1)
  q((a1,l1),(a2,l2)) = (((a1*l1)+(a2*l2))/(l1+l2),l1+l2)
\end{code}



\subsection*{Problema 5}
Inserir em baixo o c??digo \Fsharp\ desenvolvido, entre \verb!\begin{verbatim}! e \verb!\end{verbatim}!:

\begin{verbatim}
\end{verbatim}

\section{Resolu????es Alternativas e Simplifica????es sugeridas por Alef}
%format outUnOp = "out_{" UnOp "}"
%format outBinOp = "out_{" BinOp "}"

%format out = "out_{A^{*}\times B^{*}}"

%format sl = "_{" [] "}"
%format (anaList (g)) = "\ana{"g"}" sl
%format (cataList (g)) = "\cata{" g "}" sl
%format (hyloList (f) (g)) = "{\llbracket}{" f "," g "}{\rrbracket}" sl
%format (baseList (f) (g)) = "B_{[]}(" f "," g ")"

%format sCastel = "_{Castel}"
%format (cataC (g)) = "\cata{" g "}" sCastel
%format (anaC (g)) = "\ana{" g "}" sCastel
%format inC = "in" sCastel
%format outC = "out" sCastel

%format NL = "_{"NList"}"
%format outL = "out" NL
%format recL = "rec" NL
%format (cataL (g)) = "\cata{"g"}" NL

%format ??? = "\BbbQ"

%format ??? = "+"

%format (cataCastel (g)) = "\cata{" g "}_{Castel}"
%format (anaCastel (g)) = "\ana{" g "}_{Castel}"
%format inCastel = "in_{" Castel "}"
%format outCastel = "out_{" Castel "}"
%format fC  = "T_{Castel}"

%format ExpAr = "\mathsf{ExpAr}"
%format sExpAr = "{_{"ExpAr"}}"
%format outExpAr = "out" sExpAr

Nessa se????o mostro uma forma alternativa que percebi
de resolver alguns problemas que n??o poderiam ser colocadas
na se????o principal por alguma raz??o, entre elas por
usarem extens??es que n??o estavam j?? no trabalho.

Tamb??m tem simplifica????es triviais que acho que,
para alguns pode facilitar o entendimento. S??o simplesmente
fun????es que j?? est??o no trabalho reescritas com uma sintaxe
mais simples em Haskell (muitas vezes usando lambda case).
Conversando com o Tiago, ele achou que seria
mais complicado explicar dessa forma. Como no final s??o equivalentes,
decidi deixar aqui caso algu??m ache mais f??cil ou simplesmente esteja
interessado em ver um pouco mais da sintaxe de Haskell, j?? que a ??ltima
vez que tivemos uma cadeira que usasse a linguagem diretamente foi no
1?? ano.

\subsection{Problema 1}
Para criar uma interpreta????o de um tipo |A| como um tipo |B|. Assim, por exemplo,
posso definir que uma express??o $x$ do tipo |ExpAr a| pode ser interpretada como
|Left ()| do tipo |OutExpAr a|.
\begin{code}
class Interpretation a b where
    to ??? a ??? b
\end{code}


A fim de diminuir o n??mero de par??ntese e facilitar a legibilidade defini as fun????es:

bimap de tuplos (|(,)|):
\begin{code}
infixr 6 ??
type a ?? b = (a, b)
(??) ??? (a ??? b) ??? (c ??? d) ??? (a, c) ??? (b, d)
(??) = (><)
\end{code}


bimap de |Either|:
\begin{code}
infixr 4 ???
(???) ??? (a ??? b) ??? (c ??? d) ??? a ??? c ??? b ??? d
(???) = (-|-)
\end{code}


\begin{code}
infixr 4 ???
type (???) = Either
(???) ??? (a ??? c) ??? (b ??? c) ??? a ??? b ??? c
(???) = either
\end{code}


Novamente, para simplificar a tipagem:
\begin{code}
type BinExp d = BinOp ?? ExpAr d ?? ExpAr d
\end{code}
Note que por conta de preced??ncia |BinExp d ??? BinOp ?? (ExpAr d ?? ExpAr d)|.

\begin{code}
type UnExp d = UnOp ?? ExpAr d
\end{code}


Isso ?? uma redefini????o do que o Professor definiu.
?? igual excepto os s??mbolos mais f??ceis de ler.
%format OutExpAr' = OutExpAr
\begin{code}
type OutExpAr' a = () ??? a ??? BinExp a ??? UnExp a
\end{code}


Vamos criar uma interpreta????o de |ExpAr a| como |OutExpAr a|.
Ou seja, essa interpreta????o ?? |outExpAr|.
\begin{code}
instance Interpretation (ExpAr a) (OutExpAr a) where
  to X             = i1 ()
  to (N a       )  = i2 $ i1 a
  to (Bin op l r)  = i2 $ i2 $ i1 (op, (l, r))
  to (Un op a   )  = i2 $ i2 $ i2 (op, a)
\end{code}


Como dito, temos
%format outExpAr' = outExpAr
\begin{code}
outExpAr' ??? ExpAr a ??? OutExpAr a
outExpAr' = to ??? ExpAr a ??? OutExpAr a
\end{code}

Agora vou interpretar os s??mbolos que representam as opera????es como
as fun????es que representam essas opera????es.


Interpretamos cada s??mbolo |BinOp| como uma fun????o |(c,c) ??? c|.
Por exemplo, o s??mbolo |Sum| ?? interpretado como a fun????o |add|.
\begin{code}
instance (Num c) ??? Interpretation BinOp ((c, c) ??? c) where
  to Sum      = add
  to Product  = mul
\end{code}


Na nossa linguagem mais usual:
\begin{code}
outBinOp ??? Num c ??? BinOp ??? (c ?? c) ??? c
outBinOp = to ??? (Num c) ??? BinOp ??? (c ?? c ??? c)
\end{code}


Interpretamos cada s??mbolo |UnOp| como uma fun????o |c???c| onde |c|
?? da classe |Floating|.
\begin{code}
instance (Floating c) ??? Interpretation UnOp (c ??? c) where
  to Negate  = negate
  to E       = Prelude.exp
\end{code}


Na nossa linguagem mais usual
\begin{code}
outUnOp ??? Floating c ??? UnOp ??? (c ??? c)
outUnOp = to ??? (Floating c) ??? UnOp ??? (c ??? c)
\end{code}

%format recExpAr' = recExpAr
%format g_eval_exp' = g_eval_exp

%if False
\begin{code}
recExpAr' ??? (a ??? e) ??? b ??? c ??? d ?? a ?? a ??? g ?? a ??? b ??? c ??? d ?? e ?? e ??? g ?? e
recExpAr' f = baseExpAr id id id f f id f
\end{code}
%endif

Gra??as a essas fun????es auxiliares (que acho intuitivas),
podemos simplificar a escrita de |g_eval_exp'|:
\begin{code}
g_eval_exp' ??? Floating c ??? c ??? b ??? c ??? BinOp ?? c ?? c ??? UnOp ?? c ??? c
g_eval_exp' a = const a ??? id ??? ap . (outBinOp ?? id) ??? ap . (outUnOp ?? id)
\end{code}


Sabemos que $e^0 = 1$, $-0 = 0$ e
$a = 0 ??? b = 0 ??? ab = 0$.
N??s optimizamos esses 4 casos:
%format clean' = clean
\begin{code}
clean' ??? (Eq a, Num a) ??? ExpAr a ??? OutExpAr a
clean' = \case
  (Un   E        (N 0)       )  ??? tag 1
  (Un   Negate   (N 0)       )  ??? tag 0
  (Bin  Product  (N 0)  _    )  ??? tag 0
  (Bin  Product  _      (N 0))  ??? tag 0
  a                             ??? outExpAr a
  where tag = i2 . i1
\end{code}

%format gopt' = gopt
%if False
\begin{code}
gopt' ??? Floating a ??? a ??? () ??? a ??? BinOp ?? a ?? a ??? UnOp ?? a ??? a
gopt' = g_eval_exp
\end{code}
%endif

Baseado na fun????o |dup| definida em \texttt{Cp.hs}:
\begin{code}
type Dup d = d ?? d
\end{code}


Mais dois sin??nimos:
\begin{code}
type Bin d  = BinOp ?? Dup d
type Un d   = UnOp ?? d
\end{code}

%{
%format e1
%format e2
%format d1
%format d2
%format un1  = "\circleddash"
%format un2 = "\boxminus"
%format ^^ = "\;"
%format '(???)' = "???"
%subst dummy = "{}"
%format bin_aux (f) (g) h = "{bin}_{aux}" ^^ f ^^ g ^^ h
%format un_aux f (g) h i = "{un}_{aux}" ^^ f ^^ g ^^ h ^^ i


A fim de criar c??digo mais sucinto extrai o que se
repetia nas fun????es |sd_gen| e |ad_gen| do Tiago.
\begin{code}
bin_aux ??? (t ??? t ??? t) ??? (t ??? t ??? t) ??? (BinOp, Dup (Dup t)) ??? Dup t
bin_aux (???) (???) (op, ((e1, d1), (e2, d2))) = case op of
  Sum      ??? (e1 ??? e2, d1 ??? d2)
  Product  ??? (e1 ??? e2, (e1 ??? d2) ??? (d1 ??? e2))

un_aux ??? (a ??? b) ??? (b ??? a ??? b) ??? (a ??? b) ??? (UnOp, Dup a) ??? Dup b
un_aux un1 (???) un2 (op, (e, d)) = case op of
  Negate  ??? (un1 e, un1 d)
  E       ??? (un2 e, (un2 e) ??? d)
\end{code}
%}

%format bin_aux = "{bin}_{aux}"
%format un_aux = "{un}_{aux}"


Agora podemos escrever:
%format sd_gen' = sd_gen
%format ad_gen' = ad_gen
\begin{code}
sd_gen' ??? Floating a ??? () ??? a ??? Bin (Dup (ExpAr a)) ??? Un (Dup (ExpAr a)) ??? Dup (ExpAr a)
sd_gen' = f ??? g ??? h ??? k where
  f    = const (X, N 1)
  g a  = (N a, N 0)
  h    = bin_aux (Bin Sum) (Bin Product)
  k    = un_aux (Un Negate) (Bin Product) (Un E)

ad_gen' ??? Floating a ??? a ??? () ??? a ??? (BinOp, Dup (Dup a)) ??? (UnOp, Dup a) ??? Dup a
ad_gen' x = f ??? g ??? h ??? k where
  f    = const (x, 1)
  g a  = (a, 0)
  h    = bin_aux (+) (*)
  k    = un_aux negate (*) expd
\end{code}

%if False
\subsection{Problema 2}
%format loop' = loop
%format prj' = prj
%format cat' = cat
%format inic' = inic
\begin{code}
loop' ??? Integral c ??? (c, c, c) ??? (c, c, c)
loop' = g where g (a, b, c) = (div (a * b) c, b + 4, c + 1)

prj' ??? (a, b, c) ??? a
prj' = p where p (a, _, _) = a

inic' ??? (Num a, Num b, Num c) ??? (a, b, c)
inic' = (1, 2, 2)

cat' ??? (Integral c1, Integral c2) ??? c1 ??? c2
cat' = prj' . for loop' inic'
\end{code}
%endif



\subsection{Problema 3}
%{
%format sequenceA'1 = sequenceA'
%format calcLine'1 = calcLine
%format (fmap (f)) = "T_{[]}" f
%format (fmap2 (f)) = "T" f
%format zipWithM'2 = zipWithM'
%format zipWithM'3 = zipWithM'
%format zipWithM''4 = zipWithM'
%format zipWithM''5 = zipWithM'
%format zipWithM''6 = zipWithM'
%format zipWithM''7 = zipWithM'
%format zipWithM''8 = zipWithM'
%format zipWithM''9 = zipWithM'
%format zipWithM''10 = zipWithM'
%format zipWithM''11 = zipWithM'
%format zipWithM''12 = zipWithM'
%format zipWithM''13 = zipWithM'
%format zipWithM''14 = zipWithM'
%format zipWithM''15 = zipWithM'
?? interessante ver que podemos ver |calcLine| como um hilomorfismo.

A ideia que levou a isso parte da defini????o alternativa
|calcLine = zipWithM linear1d|.


Sabemos que:
\begin{spec}
zipWithM ??? (Applicative m) ??? (a ??? b ??? m c) ??? [a] ??? [b] ??? m [c]
zipWithM f xs ys = sequenceA (zipWith f xs ys)
\end{spec}


Percebi que podia escrever uma fun????o (|curry zip|):
\begin{code}
zip' ??? [a] ?? [b] ??? [a ?? b]
zip' = anaList out
\end{code}


Desde que transforme os pares de lista de uma forma que respeite
o funcionamento de |zipWith| que ser?? descrito em seguida dessa defini????o:
\begin{code}
out ??? [a] ?? [b] ??? Either () ((a ?? b) ?? ([a] ?? [b]))
out = \case
  ([],_)            ??? i1 ()
  (_,[])            ??? i1 ()
  (a : as, b : bs)  ??? i2 ((a,b) , (as,bs))
\end{code}


|zipWith| pega uma fun????o (de aridade 2), por exemplo, $f$, e
duas listas (digamos $a$ e $b$) e devolve uma lista (digamos $c$)
onde $c[i] = f(a[i],b[i])$ para todo $0???i???|min(length a,length b)|$.


Ora, ent??o posso pegar uma fun????o curried e pegar uma par de listas.
Transformo o par de listas numa lista de pares com |out| e aplico a
fun????o argumento em cada um dos pares. Logo tenho a seguinte defini????o:
\begin{code}
zipWith' ??? ((a ?? b) ??? c) ??? ([a] ?? [b]) ??? [c]
zipWith' f = (fmap f) . zip'
\end{code}


A pr??xima etapa ?? baseada nas seguintes defini????es
\begin{spec}
sequenceA ??? Applicative f ??? t (f a) ??? f (t a)
sequenceA = traverse id

traverse ??? Applicative f ??? (a ??? f b) ??? t a ??? f (t b)
traverse f = sequenceA . fmap f
\end{spec}


Ora, vamos ver como |traverse| ?? definido para listas
\begin{spec}
instance Traversable [] where
    traverse f = foldr cons_f (pure [])
      where cons_f x ys = liftA2 (:) (f x) ys
\end{spec}


Vou criar um |sequenceA'| (ser?? uma vers??o menos gen??rica de |sequenceA|
uma vez que estamos sendo espec??ficos no trabalho com listas).
\begin{spec}
sequenceA = traverse id = foldr cons_f (pure []) where
  cons_f x ys = liftA2 (:) x ys
\end{spec}


J?? fizemos o catamorfismo para |foldr| nas aulas:
\begin{code}
foldrC :: (a -> b -> b) -> b -> [a] -> b
foldrC f u = cataList (either (const u) (uncurry f))
\end{code}


Ent??o temos:
\begin{code}
sequenceA'1 ??? Applicative f ??? [f a] ??? f [a]
sequenceA'1 = cataList (either b (uncurry g)) where
  b = (const (pure []))
  g x ys = liftA2 (:) x ys
\end{code}


Sabemos que, em |Applicative ((???) r)|, @pure = const@ e
|liftA2 q f g x = q (f x) (g x)|. Logo:
\begin{code}
sequenceA' ??? [a ??? b] ??? a ??? [b]
sequenceA' = cataList (either b (uncurry g)) where
  b = (const (const []))
  g x ys = (\z ??? x z : ys z)
\end{code}



Lembre que |zipWithM'| como vimos recebia duas listas. No nosso caso
essas duas listas (digamos |xs| e |ys|) est??o em um s?? argumento |t=(xs,ys)|
A seguir seguem uma s??rie de equival??ncias. Dentro de cada @{}@ est?? uma
explica????o/justificativa do que foi feito de uma passo para outro.
\def\commentbegin{\quad\{\ }
\def\commentend{\}}
\begin{code}
zipWithM'2 f t  = sequenceA' (zipWith' f t)

{- |(.) f g = \x -> f (g x)| -}

zipWithM'3 f    = sequenceA' . zipWith' f

{- Def-|zipWith'| -}

zipWithM''4 f   = sequenceA' . (fmap f . zip')

{- Assoc-comp -}

zipWithM''5 f   = (sequenceA' . fmap f) . zip'

{- Def-|sequenceA'| -}

zipWithM''6 f   = (cataList (either (const (const [])) (uncurry g)) . fmap f) . zip' where g x ys = (\z ??? x z : ys z)

{- Absor????o-cata -}

zipWithM''7 f   = cataList (either (const (const [])) (uncurry g) . (baseList f id)) . zip' where g x ys = (\z ??? x z : ys z)

{- Def-baseList -}

zipWithM''8 f   = cataList (either (const (const [])) (uncurry g) . (id ??? f ?? id)) . zip' where g x ys = (\z ??? x z : ys z)

{- Absor????o-|???|; Natural-const -}

zipWithM''9 f   = cataList (either (const (const [])) (uncurry g . (f ?? id))) . zip' where g x ys  = (\z ??? x z : ys z)

{- |(.) f g = \x -> f (g x)| -}

zipWithM''10 f  = cataList (either (const (const [])) (\(a,b) ??? (uncurry g) ((f ?? id) (a,b)))) . zip' where g x ys = (\z ??? x z : ys z)

{- Def-|??| -}

zipWithM''11 f  = cataList (either (const (const [])) (\(a,b) ??? g (f a, b))) . zip' where g (x, ys) = (\z ??? x z : ys z)

{- Deixe que |h= (\(a,b) ??? g (f a, b))|; Nota????o-|\| -}

zipWithM''12 f  = cataList (either (const (const [])) h) . zip' where h (a,b) = (\z ??? (f a) z: b z)

{- Def-|zip'|; Nota????o-|\| -}

zipWithM''13 f  = cataList (either (const (const [])) h) . (anaList out) where h (a,b) z = (f a) z : b z

{- catamorfismo ap??s anamorfismo ?? um hilomorfismo -}

zipWithM''14 f  = hyloList (either (const (const [])) h) out where h (a,b) z = (f a) z : b z

zipWithM''15 f  = hyloList (either (const (const [])) h) out where h (a,b) = cons . split (f a) b
\end{code}


Portanto, lembrando que |calcLine = zipWithM linear1d|
e tendo em mente que |calcLine ??? [???] ??? [???] ??? Float ??? [???]|,
mas |zipWithM''15 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]|
%format calcLine' = calcLine
\begin{code}
calcLine'1 = curry (zipWithM''15 (uncurry linear1d))

{- Def-|zipWithM''15| -}

calcLine' = curry (hyloList (either (const (const [])) h) out) where h (a,b) = cons . split (uncurry linear1d a) b
\end{code}

%if False
\begin{code}
calcLine'1 ??? [???] ??? [???] ??? Float ??? [???]
calcLine' ??? [???] ??? [???] ??? Float ??? [???]

zipWithM'2 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM'3 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]

zipWithM''4 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''5 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''6 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''7 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''8 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''9 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''10 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''11 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''12 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''13 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''14 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM''15 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]


zipWithM'4 =  sequenceA' ?? zipWith'
zipWithM'5 =  sequenceA' ?? zipWith'
zipWithM'6 =  sequenceA' ?? (fmap << zip')
zipWithM'7 =  (sequenceA' ?? fmap) << zip'
zipWithM'8 =  ((fmap) sequenceA' . fmap) << zip'
zipWithM'4 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM'5 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM'6 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM'7 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
zipWithM'8 ??? ((a ?? b) ??? c ??? d) ??? ([a] ?? [b]) ??? c ??? [d]
\end{code}
%endif
%}

%format deCasteljau'' = deCasteljau
%format outSL' = outSL
%format hyloAlgForm'' = hyloAlgForm
%format fC' = fC


%if False
\begin{code}
deCasteljau'' ??? [NPoint] ??? OverTime NPoint
deCasteljau'' = hyloAlgForm'' alg coalg where
   coalg = (id ??? id ??? split init tail) . outSL'
   alg = const nil ??? a
   a = const ??? b
   b (e,d) pt = calcLine' (e pt) (d pt) pt
\end{code}
%endif

\subsubsection{Nota????o case}

Nota????o lambda simplifica express??o das fun????es:
\begin{code}
outSL' ??? [a] ??? () ??? a ??? [a]
outSL' = \case
  []   ??? i1 ()
  [a]  ??? i2 (i1 a)
  l    ??? i2 (i2 l)
\end{code}


%if False
\begin{code}
hyloAlgForm'' ??? (() ??? b ??? c ?? c ??? c) ??? (a ??? d ??? b ??? a ?? a) ??? a ??? c
hyloAlgForm'' = h where
    h a b = cataCastel a . anaCastel b

newtype Castel' a = Castel' (() ??? a ??? Castel a ?? Castel a)
data Castel'' a = Empty' | Single' a | InitTail' (Castel a ?? Castel a) deriving Show

inCastel ??? b ??? a ??? Castel a ?? Castel a ??? Castel a
inCastel = const Empty ??? Single ??? InitTail
\end{code}
%endif


A nota????o case que acho mais simples mas requer uma extens??o n??o usada no trabalho.
\begin{code}
outCastel ??? Castel a ??? () ??? a ??? Castel a ?? Castel a
outCastel = \case
  Empty           ??? i1 ()
  Single a        ??? i2 (i1 a)
  InitTail (e,d)  ??? i2 (i2 (e,d))
\end{code}

%if False
\begin{code}
fC' ??? (a ??? d) ??? b1 ??? b2 ??? a ?? a ??? b1 ??? b2 ??? d ?? d
fC' f = id ??? id ??? f ?? f

cataCastel ??? (() ??? b ??? d ?? d ??? d) ??? Castel b ??? d
cataCastel f = f . fC (cataCastel f) . outCastel
anaCastel ??? (a1 ??? b ??? a2 ??? a1 ?? a1) ??? a1 ??? Castel a2
anaCastel g = inCastel . fC (anaCastel g) . g
\end{code}
%endif


\subsection{Problema 4}
%format outL' = outL
\subsubsection{Nota????o case}
Nota????o lambda facilita legibilidade:
\begin{code}
outL' ??? [a] ??? a ??? a ?? [a]
outL' = \case
  [a]   ??? i1 a
  (a:x) ??? i2 (a,x)
\end{code}

%format recL' = recL
%format cataL' = cataL
%if False
\begin{code}
recL' ??? (c ??? d) ??? (b1 ??? b2 ?? c) ??? b1 ??? b2 ?? d
recL'  f   = id ??? id ?? f

cataL' ??? (b ??? b ?? d ??? d) ??? [b] ??? d
cataL' g   = g . recL (cataL g) . outL
\end{code}
%endif

%{
%format a1
%format a2
%format l1
%format l2

%format avg_aux' = avg_aux
%format avgLTree' = avgLTree

%if False
\begin{code}
avg_aux' ??? Fractional b ??? [b] ??? (b ?? b)
avg_aux' = cataL (either b q) where
   b a = (a,1)
   q (h,(a,l)) = ((h + (a*l)) / (l+1) ,l+1)
\end{code}
%endif

%if False
\begin{code}
avgLTree' ??? Fractional b ??? LTree b ??? b
avgLTree' = p1 . cataLTree (either g q) where
  g a = (a,1)
  q((a1,l1),(a2,l2)) = (((a1*l1)+(a2*l2))/(l1+l2),l1+l2)
\end{code}
%endif
%}


%if False
\begin{code}
infixr 9 ??
(??) ??? (Functor f, Functor g) ??? (a ??? b) ??? f (g a) ??? f (g b)
(??) = fmap . fmap

(????) ??? (Functor f1, Functor g, Functor f2) ???(a ??? b) ??? f1 (g (f2 a)) ??? f1 (g (f2 b))
(????) = (??) . fmap

infixr 8 <<
(<<) ??? (a1 ??? b ??? c) ??? (a2 ??? b) ??? a1 ??? a2 ??? c
g << f = (. f) . g
\end{code}
%endif

%if False
\begin{code}
type ??? = Rational
to??? ??? Real a ??? a ??? ???
to??? = toRational
from??? ??? Fractional a ??? ??? ??? a
from??? = fromRational
\end{code}
%endif


%----------------- Fim do anexo com solu????es dos alunos ------------------------%

%----------------- ??ndice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2021t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
