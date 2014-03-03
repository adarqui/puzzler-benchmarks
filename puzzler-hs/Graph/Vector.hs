module Graph.Vector (
	edges2VectorDMap,
	VectorDMap(..)
	) where


import qualified Data.Vector as V
import Data.Graph

type VectorDMap = V.Vector (V.Vector Int)

{- k v count -}
edges2VectorDMap :: [Edge] -> VectorDMap
edges2VectorDMap es = V.fromList $ [ V.fromList [ x | x <- replicate maxi 0 ] ]
	where
		elems = concat $ [ (fst x) : [(snd x)] | x <- es ]
		mini = minimum elems
		maxi = maximum elems
