module Puzzle.Solvers.Singlet (
	singletEMaybe,
	singletE,
	singletE',
	singletE''
	) where

import Control.Monad.Writer
import Control.Monad.Writer.Class
import Data.List
import Data.Graph
import Data.Array
import Data.Either
import qualified Data.Map as M
import Misc.Tuple
import Misc.List
import Graph.Graph


{-
 - g = graph
 - gel = graph edges
 - uel = user supplied edges
 - ue = user edge (ue:ues)
 - ues = user supplied edges, rest (ue:ues)
 - m = graph edges in a map
 - rel = result edges ([],[])
 -}

singletEMaybe :: (Ord a) => [Tup a a] -> [Tup a a] -> Maybe [Tup a a]
singletEMaybe gel uel = singletMMaybe (tups2TupMap gel) uel

singletMMaybe :: (Ord a) => TupMap a a -> [Tup a a] -> Maybe [Tup a a]
singletMMaybe m uel = singletCollapseMaybe m uel ([],[])

singletCollapseMaybe :: (Ord a) => TupMap a a -> [Tup a a] -> ([Tup a a],[Tup a a]) -> Maybe [Tup a a]
singletCollapseMaybe m [] rel@(rx,ry) = if M.size m > 0 then Nothing else Just rx
singletCollapseMaybe m uel@(ue:ues) rel@(rx,ry) = if (not (testJoint ue ues)) then Nothing else case (M.lookup ue m) of
      Nothing -> Nothing
      otherwise -> singletCollapseMaybe (reduce_m (swap ue) (reduce_m ue m)) ues (rx ++ [ue], ry)
	where reduce_m v = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) v



singletE :: (Ord a) => [Tup a a] -> [Tup a a] -> ([Tup a a],[Tup a a])
singletE gel uel = singletM (tups2TupMap gel) uel

singletM :: (Ord a) => TupMap a a -> [Tup a a] -> ([Tup a a],[Tup a a])
singletM m uel = singletCollapse m uel ([],[])

singletCollapse :: (Ord a) => TupMap a a -> [Tup a a] -> ([Tup a a],[Tup a a]) -> ([Tup a a],[Tup a a])
singletCollapse m [] rel@(rx,ry) = if M.size m > 0 then ([],M.keys m) else (rx,ry)
singletCollapse m uel@(ue:ues) rel@(rx,ry) = if (not (testJoint ue ues)) then ([],M.keys m) else case (M.lookup ue m) of
      Nothing -> ([],M.keys m)
      otherwise -> singletCollapse (reduce_m (swap ue) (reduce_m ue m)) ues (rx ++ [ue], ry)
	where reduce_m v = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) v




{-
 - Less-typed
 -}
singletE' :: (Ord a) => [(a,a)] -> [(a,a)] -> ([(a,a)],[(a,a)])
singletE' gel uel = singletM (tups2TupMap gel) uel

singletM' :: (Ord a, Ord b, Num b) => M.Map (a,a) b -> [(a,a)] -> ([(a,a)],[(a,a)])
singletM' m uel = singletCollapse' m uel ([],[])

singletCollapse' :: (Ord a, Ord b, Num b) => M.Map (a,a) b -> [(a,a)] -> ([(a,a)],[(a,a)]) -> ([(a,a)],[(a,a)])
singletCollapse' m [] rel@(rx,ry) = if M.size m > 0 then ([],M.keys m) else (rx,ry)
singletCollapse' m uel@(ue:ues) rel@(rx,ry) = if (not (testJoint ue ues)) then ([],M.keys m) else case (M.lookup ue m) of
      Nothing -> ([],M.keys m)
      otherwise -> singletCollapse' (reduce_m (swap ue) (reduce_m ue m)) ues (rx ++ [ue], ry)
	where reduce_m v = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) v




{-
 - Specific to Data.Graph
 -}
singletE'' :: Edges -> Edges -> (Edges,Edges)
singletE'' gel uel = singletM (tups2TupMap gel) uel

singletM'' :: M.Map Edge Int -> Edges -> (Edges,Edges)
singletM'' m uel = singletCollapse' m uel ([],[])

singletCollapse'' :: M.Map Edge Int -> Edges -> (Edges,Edges) -> (Edges,Edges)
singletCollapse'' m [] rel@(rx,ry) = if M.size m > 0 then ([],M.keys m) else (rx,ry)
singletCollapse'' m uel@(ue:ues) rel@(rx,ry) = if (not (testJoint ue ues)) then ([],M.keys m) else case (M.lookup ue m) of
      Nothing -> ([],M.keys m)
      otherwise -> singletCollapse'' (reduce_m (swap ue) (reduce_m ue m)) ues (rx ++ [ue], ry)
	where reduce_m v = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) v
