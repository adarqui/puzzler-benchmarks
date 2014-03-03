-- Adjacency map

module Puzzle.Solvers.VectorAMap (
	solve
	) where

import qualified Data.Map as M
import qualified Data.Vector as V
import Control.Parallel
import Control.Monad
import Data.Maybe
import Data.List
import Data.Graph
import Graph.Graph
import Misc.List
import Misc.Tuple
import Misc.Monad
import Puzzle.Maps

solve :: [Edge] -> [[Vertex]]
solve es = foldl' (\x y -> filter (not . null) $ x ++ solveV [y] es) [[]] (nub $! [ (fst x) | x <- es ])

solveV :: [Vertex] -> [Edge] -> [[Vertex]]
solveV vs es = foldl' (\x y -> filter (not . null) $ x ++ solveM s (fst3 m) (snd3 m) y (trd3 m) [y]) [[]] vs
	where
		m = tups2VectorAMap es
		s = solutions es

solveM :: Int -> Int -> Int -> Vertex -> VectorAMap -> [Vertex] -> [[Vertex]]
solveM len size depth v am accum =
	if len == 0
		then [accum]
		else
			let l = am V.! v in
				if l <= 0 then
					[[]]
				else
					solveM (len-1) size depth l am accum
