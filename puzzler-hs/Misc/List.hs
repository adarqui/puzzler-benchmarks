module Misc.List (
	shuffle,
	shuffles,
	dropElm,
	headSafe,
	tailSafe,
	pairSafe,
	mirrorCollapse,
	split
	) where

import qualified Data.Map as M


shuffle :: [a] -> [a]
shuffle (x:xs) = xs ++ [x]


shuffles :: [a] -> Int -> [[a]]
shuffles a n = take n $ shuffles' a


shuffles' :: [a] -> [[a]]
shuffles' a = shuffled : shuffles' shuffled
	where
		shuffled = shuffle a


-- Drops an element once
dropElm :: (Eq a) => [a] -> a -> [a]
dropElm [] v = []
dropElm (l:ls) v
	| l == v = ls
	| otherwise = l : dropElm ls v


headSafe :: [a] -> Maybe a
headSafe [] = Nothing
headSafe (a:as) = Just a


tailSafe :: [a] -> Maybe [a]
tailSafe [] = Nothing
tailSafe (x:[]) = Just []
tailSafe (x:xs) = Just xs


pairSafe :: [a] -> (Maybe a, Maybe [a])
pairSafe l = (headSafe l, tailSafe l)


mirrorCollapse :: (Eq a, Num a) => [a] -> Bool -> [a]
mirrorCollapse [] p = []
mirrorCollapse (x:[]) p = [x]
mirrorCollapse (x:y:xs) p = if x == y then y : mirrorCollapse xs True else x : mirrorCollapse (y:xs) False


split :: String -> Char -> [String]
split (l:ls) c = [ls]
