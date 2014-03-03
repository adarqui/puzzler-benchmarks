module Puzzle.Solvers.VertexDMap (
	allSV4,
	allS4,
	allSV6,
	allSM6,
	allS6,
	allSV7,
	allS7,
	allSV8,
	allS8,
	allS9Count,
	allSV9Count,
	allSM9Count
	) where

import qualified Data.Map as M
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

allSV2 :: [Vertex] -> [Edge] -> IO (Maybe [[Vertex]])
allSV2 vl gel = do
	(mapM (\x -> allSM2 x (tups2VertexDMap gel) [x]) vl) >>=
		\x -> print ("RESULTS: " ++ show x) >>
		return (Just $ concat $ catMaybes x)

allSM2 :: Vertex -> VertexDMap -> [Vertex] -> IO (Maybe [[Vertex]])
allSM2 v m accum = do
	print $ "----------------------------------"
	print $ "size: " ++ (show (M.size m))
	print $ "toList: " ++ (show (M.toList m))
	print $ "accum: " ++ show accum
	if M.null m
		then return (Just [accum])
		else
			let l = M.lookup v m in
				if l == Nothing then
					return Nothing
				else
					mapM (\x -> allSM2 (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) (M.toList (fromJust l)) >>=
					\x -> return (Just $ concat $ catMaybes x)


killEdges vv xx mm = M.update (\x -> let z = kill vv x in if (M.null z) then Nothing else Just z) xx $ M.update (\x -> let z = kill xx x in if (M.null z) then Nothing else Just z) vv mm
kill a = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) a




allSV3 :: [Vertex] -> [Edge] -> IO (Maybe [[Vertex]])
allSV3 vl gel = do
	(mapM (\x -> allSM3 x (tups2VertexDMap gel) [x]) vl) >>=
		\x -> return (Just $ concat $ catMaybes x)

allSM3 :: Vertex -> VertexDMap -> [Vertex] -> IO (Maybe [[Vertex]])
allSM3 v m accum = do
	if M.null m
		then return (Just [accum])
		else
			let l = M.lookup v m in
				if l == Nothing then
					return Nothing
				else
					mapM (\x -> allSM3 (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) (M.toList (fromJust l)) >>=
					\x -> return (Just $ concat $ catMaybes x)


allS4 :: [Edge] -> IO (Maybe [[Vertex]])
allS4 gel = do
	(mapM (\x -> allSV4 [x] gel) (nub $! [ (fst x) | x <- gel]) ) >>=
		\x -> return (Just $! concat $! catMaybes x)


allSV4 :: [Vertex] -> [Edge] -> IO (Maybe [[Vertex]])
allSV4 vl gel = do
	(mapM (\x -> allSM4 x (tups2VertexDMap gel) [x]) vl) >>=
		\x -> return (Just $! concat $! catMaybes x)

allSM4 :: Vertex -> VertexDMap -> [Vertex] -> IO (Maybe [[Vertex]])
allSM4 v m accum = do
	if M.null m
		then return (Just [accum])
		else
			let l = M.lookup v m in
				if l == Nothing then
					return Nothing
				else
					mapM (\x -> allSM4 (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) (M.toList (fromJust l)) >>=
					\x -> return (Just $! concat $! catMaybes x)




allS6 :: [Edge] -> [[Vertex]]
allS6 gel = foldl' (\x y -> x ++ allSV6 [y] gel) [[]] (nub $! [ (fst x) | x <- gel ])


allSV6 :: [Vertex] -> [Edge] -> [[Vertex]]
allSV6 vl gel = foldl' (\x y -> x ++ allSM6 y (tups2VertexDMap gel) [y]) [[]] vl

allSM6 :: Vertex -> VertexDMap -> [Vertex] -> [[Vertex]]
allSM6 v m accum =
	if M.null m
		then [accum]
		else
			let l = M.lookup v m in
				if l == Nothing then
					[[]]
				else
					foldl' (\z x -> allSM6 (fst x) (killEdges v (fst x) m) (accum ++ fst x : []) ++ z) [[]] (M.toList (fromJust l))




allS7 :: [Edge] -> [[Vertex]]
allS7 gel = foldl' (\x y -> filter (not . null) $ x ++ allSV7 [y] gel) [[]] (nub $! [ (fst x) | x <- gel ])


allSV7 :: [Vertex] -> [Edge] -> [[Vertex]]
allSV7 vl gel = foldl' (\x y -> filter (not . null) $ x ++ allSM7 y (tups2VertexDMap gel) [y]) [[]] vl

allSM7 :: Vertex -> VertexDMap -> [Vertex] -> [[Vertex]]
allSM7 v m accum =
	if M.null m
		then [accum]
		else
			let l = M.lookup v m in
				if l == Nothing then
					[[]]
				else
					foldl' (\z x -> allSM7 (fst x) (killEdges v (fst x) m) (accum ++ fst x : []) ++ z) [[]] (M.toList (fromJust l))




allS8 :: [Edge] -> [[Vertex]]
allS8 gel = foldl' (\x y -> filter (not . null) $ x ++ allSV8 [y] gel) [[]] (nub $! [ (fst x) | x <- gel ])

allSV8 :: [Vertex] -> [Edge] -> [[Vertex]]
allSV8 vl gel = foldl' (\x y -> filter (not . null) $ x ++ allSM8 y (tups2VertexDMap gel) [y]) [[]] vl

allSM8 :: Vertex -> VertexDMap -> [Vertex] -> [[Vertex]]
allSM8 v m accum =
	if M.null m
		then [accum]
		else
			let l = M.lookup v m in
				if l == Nothing then
					[[]]
				else
					foldl' (\z x -> allSM8 (fst x) (killEdges v (fst x) m) (accum ++ fst x : []) ++ z) [[]] (M.toList (fromJust l))



-- counters
-- arbitrary map positions
--


allS9Count :: [Edge] -> Int
allS9Count gel = foldl' (\x y -> x + allSV9Count [y] gel) 0 (nub $! [ (fst x) | x <- gel ])

allSV9Count :: [Vertex] -> [Edge] -> Int
allSV9Count vl gel = foldl' (\x y -> x + allSM9Count y (tups2VertexDMap gel) [y]) 0 vl

allSM9Count :: Vertex -> VertexDMap -> [Vertex] -> Int
allSM9Count v m accum =
	if M.null m
		then 1
		else
			let l = M.lookup v m in
				if l == Nothing then
					1
				else
					foldl' (\z x -> z + allSM9Count (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) 1 (M.toList (fromJust l))



