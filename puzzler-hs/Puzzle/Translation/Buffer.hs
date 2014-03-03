{-
 - String to edge mappings etc..
 - This allows us to work with our real edge data in it's most raw form, then translate it back out when replying to a client
 -}

module Puzzle.Translation.Buffer (
	edges2Mappings,
	SVertex(..),
	SEdge(..),
	SEdgeKV(..),
	SEdgeVK(..)
	) where

import qualified Data.Map as M
import Data.List
import Data.Graph
import Data.Maybe
import Graph.Graph


type SVertex = String
type SEdge = (SVertex, SVertex)
type SEdgeKV = M.Map Int String
type SEdgeVK = M.Map String Int

edges2Mappings :: [SEdge] -> (SEdgeKV, SEdgeVK, [Edge])
edges2Mappings es = (es_kv_map, es_vk_map, es_translated)
	where
		v_left = [ (fst x) | x <- es ]
		v_right = [ (snd x) | x <- es ]
		v_nub = nub $ v_left ++ v_right
		es_kv = snd $ mapAccumL (\x y -> (x+1, (x,y))) 0 v_nub
		es_vk = [ (snd x, fst x) | x <- es_kv ]
		es_kv_map = M.fromList es_kv
		es_vk_map = M.fromList es_vk
		es_translated = [ (fromJust (M.lookup (fst x) es_vk_map),fromJust (M.lookup (snd x) es_vk_map)) | x <- es ]
