{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NPlusKPatterns             #-}

-- =============================================================================
-- ADDED BY ALEF
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE NoMonomorphismRestriction  #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# OPTIONS_HADDOCK show-extensions #-}
-- =============================================================================

{-# LANGUAGE FlexibleContexts           #-}
module Solucoes where

import           Control.Applicative                hiding ((<|>))
import           Control.Monad
import           Cp
import           Data.List                          hiding (find)
import           Graphics.Gloss
import           Graphics.Gloss.Interface.Pure.Game
import           LTree
import           List                               hiding (fac)
import           Nat
import           System.Process
import           Test.QuickCheck                    hiding (choose, collect,
                                                     (><))
import qualified Test.QuickCheck                    as QuickCheck

-- | = Problemas

-- | == Problema 1

-- =============================================================================
-- | === Código Fornecido
data ExpAr a
  = X
  | N a
  | Bin BinOp (ExpAr a) (ExpAr a)
  | Un UnOp (ExpAr a)
  deriving (Eq, Show)

data BinOp
  = Sum
  | Product
  deriving (Eq, Show)

data UnOp
  = Negate
  | E
  deriving (Eq, Show)
-- -----------------------------------------------------------------------------
inExpAr :: b ∐ a ∐ BinExp a ∐ UnExp a -> ExpAr a
-- | @'inExpAr'@ ≡ @'const' X '∐' 'N' '∐' bin '∐' ('Un' '＾') where bin (op, (a, b)) = 'Bin' op a b@
inExpAr = either (const X) num_ops
 where
  num_ops = either N ops
  ops     = either bin (uncurry Un)
  bin (op, (a, b)) = Bin op a b

baseExpAr ::
  (a -> b) ->
  (c -> d) ->
  (e -> f) ->
  (g -> h) ->
  (i -> j) ->
  (k -> l) ->
  (m -> n) ->
  a ∐ c ∐ e × g × i ∐ k × m ->
  b ∐ d ∐ f × h × j ∐ l × n
-- | @'baseExpAr'@ ≡ @f g h j k l z = f '⊕' g '⊕' h '×' j '×' k '⊕' l × z@
baseExpAr f g h j k l z = f -|- (g -|- (h >< (j >< k) -|- l >< z))

cataExpAr :: (() ∐ c ∐ BinOp × e × e ∐ UnOp × e -> e) -> ExpAr c -> e
cataExpAr g = g . recExpAr (cataExpAr g) . outExpAr

anaExpAr :: (a -> b ∐ c ∐ BinOp × a × a ∐ UnOp × a) -> a -> ExpAr c
anaExpAr g = inExpAr . recExpAr (anaExpAr g) . g

hyloExpAr ::
  (() ∐ c ∐ BinOp × d × d ∐ UnOp × d -> d) ->
  (a -> b ∐ c ∐ BinOp × a × a ∐ UnOp × a) -> a -> d
hyloExpAr h g = cataExpAr h . anaExpAr g
-- -----------------------------------------------------------------------------
expd :: Floating a => a -> a
expd = Prelude.exp
-- -----------------------------------------------------------------------------
eval_exp :: Floating a => a -> (ExpAr a) -> a
eval_exp a = cataExpAr (g_eval_exp a)

optmize_eval :: (Floating a, Eq a) => a -> (ExpAr a) -> a
optmize_eval a = hyloExpAr (gopt a) clean

sd :: Floating a => ExpAr a -> ExpAr a
sd = p2 . cataExpAr sd_gen

ad :: Floating a => a -> ExpAr a -> a
ad v = p2 . cataExpAr (ad_gen v)
-- =============================================================================
-- | === Solução

infixr 6 ×
type a × b = (a, b)
-- | bimap for tuple
(×) :: (a -> b) -> (c -> d) -> (a, c) -> (b, d)
(×) = (><)
-- -----------------------------------------------------------------------------
infixr 4 ⊕
-- | bimap for either
(⊕) :: (a -> b) -> (c -> d) -> a ∐ c ->  b ∐ d
(⊕) = (-|-)
-- -----------------------------------------------------------------------------
infixr 4 ∐
type (∐) = Either
(∐) :: (a -> c) -> (b -> c) -> a ∐ b -> c
(∐) = either
-- -----------------------------------------------------------------------------
type BinExp d = BinOp × ExpAr d × ExpAr d -- ≡ BinOp × (ExpAr d × ExpAr d)
type UnExp d = UnOp × ExpAr d
type OutExpAr a = () ∐ a ∐ BinExp a ∐ UnExp a
-- -----------------------------------------------------------------------------
class Injective a b where
    to :: forall b1 a1. (b1 ~ b, a1 ~ a) => a -> b
-- -----------------------------------------------------------------------------
instance Injective (ExpAr a) (OutExpAr a) where
  to X            = Left ()
  to (N a)        = Right $ Left a
  to (Bin op l r) = Right $ Right $ Left (op, (l, r))
  to (Un op a)    = Right $ Right $ Right (op, a)

outExpAr :: ExpAr a -> OutExpAr a
outExpAr = to :: ExpAr a -> OutExpAr a
-- -----------------------------------------------------------------------------
recExpAr :: (a -> e) -> b ∐ c ∐ d × a × a ∐ g × a -> b ∐ c ∐ d × e × e ∐ g × e
recExpAr f = baseExpAr id id id f f id f
-- -----------------------------------------------------------------------------
instance (Num c) => Injective BinOp ((c, c) -> c) where
  to Sum     = add
  to Product = mul

instance (Floating c) => Injective UnOp (c -> c) where
  to Negate = negate
  to E      = Prelude.exp

g_eval_exp :: Floating c => c -> b ∐ c ∐ BinOp × c × c ∐ UnOp × c -> c
g_eval_exp a = const a ∐ id ∐ Cp.ap . (toBin × id) ∐ Cp.ap . (toUn × id)
 where
  toBin = to :: (Num c) => BinOp -> (c × c -> c)
  toUn = to :: (Floating c) => UnOp -> (c -> c)
-- -----------------------------------------------------------------------------
clean :: (Eq a, Num a) => ExpAr a -> OutExpAr a
clean q = case q of
  (Un E (N 0))          -> tag 1
  (Un Negate (N 0))     -> tag 0
  (Bin Product (N 0) _) -> tag 0
  (Bin Product _ (N 0)) -> tag 0
  a                     -> (to :: ExpAr a -> OutExpAr a) a
  where tag = i2 . i1
-- -----------------------------------------------------------------------------
gopt :: Floating a => a -> () ∐ a ∐ BinOp × a × a ∐ UnOp × a -> a
gopt = undefined
-- -----------------------------------------------------------------------------
type Dup d = d × d
type Bin d = BinOp × d × d
type Un d = UnOp × d

bin_aux :: (t -> t -> t) -> (t -> t -> t) -> (BinOp, Dup (Dup t)) -> Dup t
bin_aux f g (op,((e1,d1),(e2,d2))) = case op of
    Sum     -> (e1 `f` e2, d1 `f` d2)
    Product -> (e1 `g` e2, f (g e1 d2) (g d1 e2))

un_aux :: (t1 -> t2) -> (t2 -> t1 -> t2) -> (t1 -> t2) -> (UnOp, Dup t1) -> Dup t2
un_aux f g h (op, (e,d)) = case op of
    Negate -> (f e, f d)
    E      -> (h e, g (h e) d)

sd_gen :: Floating a => () ∐ a ∐ Bin (Dup (ExpAr a)) ∐ Un (Dup (ExpAr a)) -> Dup (ExpAr a)
sd_gen = f ∐ g ∐ h ∐ k where
  f = const (X, N 1)
  g a = (N a, N 0)
  h = bin_aux (Bin Sum) (Bin Product)
  k = un_aux (Un Negate) (Bin Product) (Un E)
-- -----------------------------------------------------------------------------
ad_gen :: Floating a => a -> () ∐ a ∐ (BinOp, Dup (Dup a)) ∐ (UnOp, Dup a)  -> Dup a
ad_gen x = f ∐ g ∐ h ∐ k where
  f = const (x,1)
  g a = (a, 0)
  h = bin_aux (+) (*)
  k = un_aux negate (*) expd
-- ========================================================================== --
-- | === Propriedades

-- do {quickCheck prop_in_out_idExpAr; quickCheck prop_out_in_idExpAr; quickCheck prop_sum_idr; quickCheck prop_sum_idl; quickCheck prop_product_idr; quickCheck prop_product_idl ; quickCheck prop_e_id; quickCheck prop_negate_id; quickCheck prop_double_negate; quickCheck prop_optimize_respects_semantics; quickCheck prop_const_rule; quickCheck prop_var_rule}

prop_in_out_idExpAr :: (Eq a) => ExpAr a -> Bool
prop_in_out_idExpAr = inExpAr . outExpAr .==. id

prop_out_in_idExpAr :: (Eq a) => OutExpAr a -> Bool
prop_out_in_idExpAr = outExpAr . inExpAr .==. id

prop_sum_idr :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_sum_idr a exp = eval_exp a exp .=?=. sum_idr
  where sum_idr = eval_exp a (Bin Sum exp (N 0))

prop_sum_idl :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_sum_idl a exp = eval_exp a exp .=?=. sum_idl
  where sum_idl = eval_exp a (Bin Sum (N 0) exp)

prop_product_idr :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_product_idr a exp = eval_exp a exp .=?=. prod_idr
  where prod_idr = eval_exp a (Bin Product exp (N 1))

prop_product_idl :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_product_idl a exp = eval_exp a exp .=?=. prod_idl
  where prod_idl = eval_exp a (Bin Product (N 1) exp)

prop_e_id :: (Floating a, Real a) => a -> Bool
prop_e_id a = eval_exp a (Un E (N 1)) == expd 1

prop_negate_id :: (Floating a, Real a) => a -> Bool
prop_negate_id a = eval_exp a (Un Negate (N 0)) == 0

prop_double_negate :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_double_negate a exp =
  eval_exp a exp .=?=. eval_exp a (Un Negate (Un Negate exp))

prop_optimize_respects_semantics :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_optimize_respects_semantics a exp = eval_exp a exp .=?=. optmize_eval a exp

prop_const_rule :: (Real a, Floating a) => a -> Bool
prop_const_rule a = sd (N a) == N 0

prop_var_rule :: Bool
prop_var_rule = sd X == N 1

prop_sum_rule :: (Real a, Floating a) => ExpAr a -> ExpAr a -> Bool
prop_sum_rule exp1 exp2 = sd (Bin Sum exp1 exp2) == sum_rule
  where sum_rule = Bin Sum (sd exp1) (sd exp2)

prop_product_rule :: (Real a, Floating a) => ExpAr a -> ExpAr a -> Bool
prop_product_rule exp1 exp2 = sd (Bin Product exp1 exp2) == prod_rule
 where
  prod_rule = Bin Sum (Bin Product exp1 (sd exp2)) (Bin Product (sd exp1) exp2)

prop_e_rule :: (Real a, Floating a) => ExpAr a -> Bool
prop_e_rule exp = sd (Un E exp) == Bin Product (Un E exp) (sd exp)

prop_negate_rule :: (Real a, Floating a) => ExpAr a -> Bool
prop_negate_rule exp = sd (Un Negate exp) == Un Negate (sd exp)

prop_congruent :: (Floating a, Real a) => a -> ExpAr a -> Bool
prop_congruent a exp = ad a exp .=?=. eval_exp a (sd exp)
-- =============================================================================
-- | == Problema 2

-- =============================================================================
-- | === Código Fornecido
fib' :: (Integral c, Num b) => c -> b
fib' = p1 . for loop init
 where
  loop (fib, f) = (f, fib + f)
  init = (1, 1)

f' :: (Integral c, Num b) => b -> b -> b -> c -> b
f' a b c = p1 . for loop init
 where
  loop (f, k) = (f + k, k + 2 * a)
  init = (c, a + b)

catdef :: Integer -> Integer
catdef n = div (fac ((2 * n))) ((fac ((n + 1)) * (fac n)))

oracle :: Num a => [a]
oracle =
  [ 1
  , 1
  , 2
  , 5
  , 14
  , 42
  , 132
  , 429
  , 1430
  , 4862
  , 16796
  , 58786
  , 208012
  , 742900
  , 2674440
  , 9694845
  , 35357670
  , 129644790
  , 477638700
  , 1767263190
  , 6564120420
  , 24466267020
  , 91482563640
  , 343059613650
  , 1289904147324
  , 4861946401452
  ]
-- =============================================================================
-- | === Propriedades
prop_cat = (>= 0) .==>. (catdef .==. cat)
-- =============================================================================
-- | === Solução
loop :: Integral c => (c, c, c) -> (c, c, c)
loop = g where g(a,b,c) = (div (a*b) c, b+4, c+1)

inic :: (Num a, Num b, Num c) => (a, b, c)
inic = (1,2,2)

prj :: (a, b, c) -> a
prj = p where p(a,_,_) = a

cat :: (Integral c1, Integral c2) => c1 -> c2
cat = prj . for loop inic
-- =============================================================================
-- | == Problema 3

-- =============================================================================
-- | === Código Fornecido
linear1d :: Rational -> Rational -> OverTime Rational
linear1d a b = formula a b
 where
  formula :: Rational -> Rational -> Float -> Rational
  formula x y t = ((1.0 :: Rational) - (toRational t)) * x + (toRational t) * y

type NPoint = [Rational]
type OverTime a = Float -> a
-- =============================================================================
-- | === Propriedades
prop_calcLine_def :: NPoint -> NPoint -> Float -> Bool
prop_calcLine_def p q d = calcLine p q d == zipWithM linear1d p q d

prop_bezier_sym :: [[Rational]] -> Gen Bool
prop_bezier_sym l = all (< delta) . calc_difs . bezs <$> elements ps
 where
  calc_difs =
    (\(x, y) -> zipWith (\w v -> if w >= v then w - v else v - w) x y)
  bezs t =
    ( deCasteljau l           t
    , deCasteljau (reverse l) (fromRational (1 - (toRational t)))
    )
  delta = 1e-2
-- =============================================================================
-- | === Solução
type ℚ = Rational
toℚ :: Real a => a -> Rational
toℚ = toRational
fromℚ :: Fractional a => Rational -> a
fromℚ = fromRational

{- | Spec

 @
 'calcLine' :: 'NPoint' -> ('NPoint' -> 'OverTime' 'NPoint')
 'calcLine' [] = 'const' 'nil'
 'calcLine' (p : x) = 'curry' g p ('calcLine' x)
  where
   g :: (ℚ, 'NPoint' -> 'OverTime' 'NPoint') -> ('NPoint' -> 'OverTime' 'NPoint')
   g (d, f) l = case l of
     [] -> 'nil'
     (x : xs) -> 'concat' . 'sequenceA' ['singl' . 'linear1d' d x, f xs]
 @
-}
calcLine :: NPoint -> (NPoint -> OverTime NPoint)
calcLine = cataList h where h = undefined

{- | Spec

 @
'deCasteljau' :: ['NPoint'] -> 'OverTime' 'NPoint'
'deCasteljau' [] = 'nil'
'deCasteljau' [p] = 'const' p
'deCasteljau' l = \pt -> 'calcLine' (p pt) (q pt) pt
 where
  p = 'deCasteljau' ('init' l)
  q = 'deCasteljau' ('tail' l)
 @
-}
deCasteljau :: [NPoint] -> OverTime NPoint
deCasteljau = hyloAlgForm alg coalg
 where
  coalg = undefined
  alg   = undefined

hyloAlgForm = undefined
-- =============================================================================
-- | == Problema 4

-- =============================================================================
-- | === Propriedades
prop_avg :: (Ord b, Fractional b) => [b] -> Property
prop_avg = nonempty .==>. diff .<=. const 0.000001
 where
  diff l = avg l - (avgLTree . genLTree) l
  genLTree = anaLTree lsplit
  nonempty = (> [])

avg :: Fractional b => [b] -> b
avg = p1 . avg_aux
-- =============================================================================
-- | === Solução
avg_aux :: Fractional b => [b] -> (b, b)
avg_aux= cataList (either b q) where
   b () = (0,0)
   q (h,(a,l)) = ((a*l + h)/(l+1) ,l+1)

avgLTree = p1 . cataLTree gene where gene = undefined
-- =============================================================================
-- | = Programação dinâmica por recursividade múltipla
e' :: (Fractional c1, Integral c2) => c1 -> c2 -> c1
e' x = prj . for loop init
 where
  init = (1, x, 2)
  loop (e, h, s) = (h + e, x / s * h, 1 + s)
  prj (e, h, s) = e
-- =============================================================================
-- | = Código Extra para Problema 3

-- =============================================================================
-- | === 2D
bezier2d :: [NPoint] -> OverTime (Float, Float)
bezier2d [] = const (0, 0)
bezier2d l  = \z ->
  (fromRational >< fromRational) . (\[x, y] -> (x, y)) $ ((deCasteljau l) z)
-- =============================================================================
-- | === Modelo
data World = World
  { points :: [NPoint]
  , time   :: Float
  }

initW :: World
initW = World [] 0

tick :: Float -> World -> World
tick dt world = world { time = (time world) + dt }

actions :: Event -> World -> World
actions (EventKey (MouseButton LeftButton) Down _ p) world =
  world { points = (points world) ++ [(\(x, y) -> map toRational [x, y]) p] }
actions (EventKey (SpecialKey KeyDelete) Down _ _) world =
  world { points = cond (== []) id init (points world) }
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
ps = map fromRational ps'
 where
  ps' :: [Rational]
  ps' = [0, 0.01 .. 1] -- interval
-- =============================================================================
-- | === Gloss
picture :: World -> Picture
picture world = Pictures
  [ animateBezier (scaleTime world) (points world)
  , Color white . Line . map (bezier2dAt world) $ ps
  , Color blue
  . Pictures
  $ [ Translate (fromRational x) (fromRational y) thicCirc
    | [x, y] <- points world
    ]
  , Color green $ Translate cx cy thicCirc
  ]
  where (cx, cy) = bezier2dAtTime world
-- =============================================================================
-- | === Animação
animateBezier :: Float -> [NPoint] -> Picture
animateBezier _ []  = Blank
animateBezier _ [_] = Blank
animateBezier t l   = Pictures
  [ animateBezier t (init l)
  , animateBezier t (tail l)
  , Color red . Line $ [a, b]
  , Color orange $ Translate ax ay thicCirc
  , Color orange $ Translate bx by thicCirc
  ]
 where
  a@(ax, ay) = bezier2d (init l) t
  b@(bx, by) = bezier2d (tail l) t
-- =============================================================================
-- | === Propriedades e main
runBezier :: IO ()
runBezier =
  play (InWindow "Bézier" (600, 600) (0, 0)) black 50 initW picture actions tick

runBezierSym :: IO ()
runBezierSym =
  quickCheckWith (stdArgs { maxSize = 20, maxSuccess = 200 }) prop_bezier_sym
-- =============================================================================
-- | ==== Compilação e execução dentro do interpretador
main :: IO ()
main = runBezier

run = do
  system "ghc cp2021t"
  system "./cp2021t"

-- | == QuickCheck
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

    frequency
      . map (id >< pure)
      $ [(20, X), (15, N a), (35, Bin binop exp1 exp2), (30, Un unop exp1)]

-- | == Outras funções auxiliares
infixr 5 .=?=.
(.=?=.) :: Real a => a -> a -> Bool
(.=?=.) x y = (toRational x) == (toRational y)

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
