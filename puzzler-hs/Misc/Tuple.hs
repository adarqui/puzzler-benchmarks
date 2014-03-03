module Misc.Tuple (
	swap,
	swap2,
	fst2,
	snd2,
	fst3,
	snd3,
	trd3,
	tups2TupMap,
	Tup(..),
	TupC(..),
	TupMap(..)
	) where


import qualified Data.Map as M

type Tup = (,)
type TupC a b = (,) a [b]
type TupMap a b = M.Map (a,b) Int

swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)


swap2 = swap


fst2 = fst
snd2 = snd


fst3 (a, _, _) = a
snd3 (_, b, _) = b
trd3 (_, _, c) = c


possibles :: [(a,[a])] -> [(a,a)]
possibles [] = []
possibles (a:as) = foldr ((++) . possible) [] as


possible :: (a,[a]) -> [(a,a)]
possible (_,[]) = []
possible (x,y:ys) = (x,y) : possible (x,ys)


tups2TupMap :: (Ord a) => [Tup a a] -> M.Map (Tup a a) Int
tups2TupMap l = M.fromListWith (+) $ [ (x,1) | x <- l ]


flattenTups l = [ take (snd x) (repeat (fst x)) | x <- l ]
