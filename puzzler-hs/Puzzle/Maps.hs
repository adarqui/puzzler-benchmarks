module Puzzle.Maps (
	tupLRsort,
	tupLRwhich,
	tupAdd,
	tups2VectorAMap,
	vectorAMap2tups,
	tups2VertexSMap,
	tups2VertexDMap,
	solutions,
	kvReduce,
	xy2Flatx,
	xFlat2xy,
	VectorAMap(..),
	VertexDMap(..),
	) where


import qualified Data.Vector.Unboxed as U
import qualified Data.Vector as V
import qualified Data.Map as M
import Data.List
import Data.Graph
import Graph.Graph
import Misc.Tuple


type VectorAMap = V.Vector Int
type VertexSMap = M.Map (Vertex, Vertex) (Int, Int)
type VertexDMap = M.Map Vertex (M.Map Vertex Int)


data SupportedTuples = Int | Vertex deriving (Read, Show, Ord, Eq)


tupLRsort :: (Ord a) => (a,a) -> (a,a)
tupLRsort (a,b)
	| a > b = (b, a)
	| otherwise = (a, b)


tupLRwhich :: (Ord a, Num b) => (a,a) -> (b,b)
tupLRwhich (a,b)
	| a < b = (1, 0)
	| otherwise = (0, 1)


tupAdd :: (Num a) => (a,a) -> (a,a) -> (a,a)
tupAdd (a,b) (c,d) = (a+c,b+d)


kvReduce :: (Int, Int) -> Int
kvReduce (x,y) = ny
	where
		ntup = tupLRsort (x,y)
		nx = fst ntup
		ny = snd ntup
		dif = ny - nx



tups2VectorAMap :: [Edge] -> (Int, Int, VectorAMap)
tups2VectorAMap es = (size, l, vs')
	where
		x = vFromEdges es
		y = vFromEdges' es
		xy = x ++ y
		l = maximum xy + 1
		size = l * l
		vs = V.fromList $ take size $ repeat 0
		ves = V.fromList es
		vs' = V.foldl' (\x y -> let z = (x V.! (xy2Flatx l y)) in (V.//) x [(xy2Flatx l y,z+1)]) vs ves

vectorAMap2tups :: Int -> VectorAMap -> [Edge]
vectorAMap2tups l vm = V.ifoldl' (\x i y -> if y > 0 then (take y (repeat (xFlat2xy l i)) ++ x) else x) ([] :: [Edge]) vm

xy2Flatx l (x,y) = x * l + y
xFlat2xy l x = (x `div` l, x `rem` l)


tups2VertexDMap :: [Edge] -> VertexDMap
tups2VertexDMap el = M.map (\x -> M.fromListWith (+) [ (fst y, 1) | y <- x ] ) . M.fromListWith (++) $ [ (fst x, [(snd x, 1)]) | x <- el ]

tups2VertexSMap :: [Edge] -> VertexSMap
tups2VertexSMap el = M.fromListWith (\x y -> tupAdd x y) $ [ (tupLRsort x, tupLRwhich x) | x <- el ]


solutions :: [Edge] -> Int
solutions es = solutions' $ tups2VertexSMap es


solutions' :: VertexSMap -> Int
solutions' vs = M.fold (\x acc -> acc+(kvReduce x)) 1 vs
