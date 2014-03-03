module Graph.Graph (
	build2d,
	testJoint,
	gFromEdges,
	vFromEdges,
	vFromEdges',
	s2edge,
	edge2ec,
	edges2ecs,
	Graph.Graph.Edge(..),
	Ec(..),
	Ecs(..),
	Edges(..),
	) where

import qualified Data.Map as M
import qualified Data.Graph as G
import Data.Graph
import Data.Array
import Data.List
import Misc.Tuple
import Misc.List

type Ec = (Vertex,[Vertex])
type Ecs = [Ec]

type Edges = [G.Edge]
type Edge = G.Edge

s2edge :: String -> G.Edge
s2edge s = (read x :: Vertex, read y :: Vertex)
	where
		x = takeWhile (/= ' ') s
		y = tail $ dropWhile (/= ' ') s

build2d = buildG

testJoint :: (Eq a) => (a,a) -> [(a,a)] -> Bool
testJoint (x,y) [] = True
testJoint (x,y) (l:ls) = (y == fst l)


gFromEdges :: [G.Edge] -> Graph
gFromEdges el = buildG (minimum vl, maximum vl) el
	where
		vl = vFromEdges el


vFromEdges :: [G.Edge] -> [Vertex]
vFromEdges es = nub $! [ fst x | x <- es ]

vFromEdges' :: [G.Edge] -> [Vertex]
vFromEdges' es = nub $! [ snd x | x <- es ]

edge2ec :: G.Edge -> Ec
edge2ec (x,y) = (x,[y])


edges2ecs :: Edges -> Ecs
edges2ecs el = map edge2ec el



