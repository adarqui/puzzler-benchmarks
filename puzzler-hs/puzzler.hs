import System.Environment
import qualified Data.Map as M
import qualified Data.Vector as V
import Control.Parallel.Strategies
import Data.Graph
import Data.List
import Data.Maybe
import Control.Monad

type VertexDMap = M.Map Vertex (M.Map Vertex Int)
type VectorAMap = V.Vector Int
type VectorCMap = V.Vector (V.Vector Int)
type VertexSMap = M.Map (Vertex, Vertex) (Int, Int)


fst2 = fst
snd2 = snd


fst3 (a, _, _) = a
snd3 (_, b, _) = b
trd3 (_, _, c) = c


killEdges vv xx mm = M.update (\x -> let z = kill vv x in if (M.null z) then Nothing else Just z) xx $ M.update (\x -> let z = kill xx x in if (M.null z) then Nothing else Just z) vv mm
kill a = M.update (\x -> if x > 1 then Just (x - 1) else Nothing) a


solve3c :: [Edge] -> [[Vertex]]
solve3c es = foldl' (\x y -> filter (not . null) $ x ++ solveV3c [y] es) [[]] (nub $! [(fst x) | x <- es ])

solveV3c :: [Vertex] -> [Edge] -> [[Vertex]]
solveV3c vs es = foldl' (\x y -> filter (not . null) $ x ++ solveM3c s (fst3 m) (snd3 m) y (trd3 m) [y]) [[]] vs
	where
		m = tups2VectorAMap es
		s = solutions es

solveM3c :: Int -> Int -> Int -> Vertex -> VectorAMap -> [Vertex] -> [[Vertex]]
solveM3c len size depth v am accum =
	if len == 0
		then [accum]
		else
			solveM3c (len-1) size depth v am accum



solve3cCount :: [Edge] -> Int
solve3cCount es = foldl' (\x y -> solveV3cCount [y] es) 0 (nub $! [(fst x) | x <- es ])

solveV3cCount :: [Vertex] -> [Edge] -> Int
solveV3cCount vs es = foldl' (\x y -> y + solveM3cCount s tot sz 0 m cm [y]) 0 vs
	where
		tupm = tups2VectorAMap es
		tot = fst3 tupm
		sz = snd3 tupm
		m = trd3 tupm
		cm = vectorAMapToCMap m sz
		s = solutions es

solveM3cCount :: Int -> Int -> Int -> Vertex -> VectorAMap -> VectorCMap -> [Vertex] -> Int
solveM3cCount len size depth v m cm accum =
	if len == 0
		then 1
		else
			foldl' (\z x ->
				solveM3cCount (len - 1) (size) (depth) v m cm accum)
				0 (V.toList (cm V.! v))
--			let l = V.
--			solveM3cCount (len-1) size depth v m cm accum




solve4cCount :: [Edge] -> IO Int
solve4cCount es = do
	c <- foldM (\x y -> solveV4cCount [y] es) 0 (nub $! [(fst x) | x <- es ])
	return c

solveV4cCount :: [Vertex] -> [Edge] -> IO Int
solveV4cCount vs es = do
	c <- foldM (\x y -> solveM4cCount s tot sz y 0 m cm [y]) 0 vs
	return c
	where
		tupm = tups2VectorAMap es
		tot = fst3 tupm
		sz = snd3 tupm
		m = trd3 tupm
		cm = vectorAMapToCMap m sz
		s = solutions es

-- BROKEN
solveM4cCount :: Int -> Int -> Int -> Vertex -> Vertex -> VectorAMap -> VectorCMap -> [Vertex] -> IO Int
solveM4cCount len size depth v e m cm accum = do
	(print ("v = " ++ show v ++ ", len = " ++ show len ++ " : " ++ show m))
{-
	if e > 0
	then
		print "e > 0" >>
		print pX >>
		print eX
	else
--		print $ "v = " ++ show v ++ ", len = " ++ show len ++ " : " ++ show m
		print "e <= 0" >>
		print pX >>
		print eX
-}
	if len == 0
		then print "FOUND!" >> return 1
		else
			foldM (\z x ->
				print "hi" >>
				solveM4cCount (len - 1) (size) (depth) x x m cm accum >>=
				return
				)
			0 (V.toList (cm V.! v)) >>= return
	where
		pX = xy2Flatx size (v, e)
		eX = m V.!? pX

{-
	if M.null m
		then 1
	else
		let l = M.lookup v m in
			if l == Nothing then
				0
			else
				foldl' (\z x -> z + solveM6count (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) 0 (M.toList (fromJust l))
-}

solve6 :: [Edge] -> [[Vertex]]
solve6 gel = foldl' (\x y -> filter (not . null) $ x ++ solveV6 [y] gel) [[]] (nub $! [
 (fst x) | x <- gel ])


solveV6 :: [Vertex] -> [Edge] -> [[Vertex]]
solveV6 vl gel = foldl' (\x y -> filter (not . null) $ x ++ solveM6 y (tups2VertexDMap gel) [y]) [[]] vl


solveM6 :: Vertex -> VertexDMap -> [Vertex] -> [[Vertex]]
solveM6 v m accum =
	if M.null m
		then [accum]
		else
			let l = M.lookup v m in
				if l == Nothing then
					[[]]
				else
					foldl' (\z x -> solveM6 (fst x) (killEdges v (fst x) m) (accum ++fst x : []) ++ z) [[]] (M.toList (fromJust l))


solve6count :: [Edge] -> Int
solve6count gel = foldl' (\x y -> x + solveV6count [y] gel) 0 (nub $! [ (fst x) | x <-gel ])


solveV6count :: [Vertex] -> [Edge] -> Int
solveV6count vl gel = foldl' (\x y -> x + solveM6count y (tups2VertexDMap gel) [y]) 0 vl


solveM6count :: Vertex -> VertexDMap -> [Vertex] -> Int
solveM6count v m accum =
	if M.null m
		then 1
	else
		let l = M.lookup v m in
			if l == Nothing then
				0
			else
				foldl' (\z x -> z + solveM6count (fst x) (killEdges v (fst x) m) (accum ++ fst x : [])) 0 (M.toList (fromJust l))


tups2VertexDMap :: [Edge] -> VertexDMap
tups2VertexDMap el = M.map (\x -> M.fromListWith (+) [ (fst y, 1) | y <- x ] ) . M.fromListWith (++) $ [ (fst x, [(snd x, 1)]) | x <- el ]


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


tups2VertexSMap :: [Edge] -> VertexSMap
tups2VertexSMap el = M.fromListWith (\x y -> tupAdd x y) $ [ (tupLRsort x, tupLRwhich x) | x <- el ]


vectorAMapToCMap :: VectorAMap -> Int -> VectorCMap
vectorAMapToCMap vam size = V.map (\x -> vectorAMapToCMapInterval vam size (fst x) (snd x)) $ V.fromList [ (size*y-size,size*y) | y <- [1..size] ]


vectorAMapToCMapInterval :: VectorAMap -> Int -> Int -> Int -> V.Vector Int
vectorAMapToCMapInterval vam size start end = V.fromList [ snd (xFlat2xy size x) | x <- v ]
	where
		l = V.toList vam
		y = [start..end-1]
		v = [ x | x <- y, l !! x > 0 && x > start ]



xy2Flatx l (x,y) = x * l + y
xFlat2xy l x = (x `div` l, x `rem` l)


vFromEdges :: [Edge] -> [Vertex]
vFromEdges es = nub $! [ fst x | x <- es ]

vFromEdges' :: [Edge] -> [Vertex]
vFromEdges' es = nub $! [ snd x | x <- es ]


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


s2edge :: String -> Edge
s2edge s = (read x :: Vertex, read y :: Vertex)
	where
		x = takeWhile (/= ' ') s
		y = tail $ dropWhile (/= ' ') s


solutions :: [Edge] -> Int
solutions es = solutions' $ tups2VertexSMap es


solutions' :: VertexSMap -> Int
solutions' vs = M.fold (\x acc -> acc+(kvReduce x)) 1 vs


parseArgs :: [String] -> [Edge]
parseArgs argv = map s2edge argv


main :: IO ()
main = do
	argv <- getArgs
	let idx = head $ argv
	let edges = parseArgs $ tail $ argv
--	print $ idx ++ " " ++ show edges
	let x = case idx of
		"3l" -> length $ solve3c edges
		"3c" -> solve3cCount edges
		"6l" -> length $ solve6 edges
		"6c" -> solve6count edges
		"60" -> foldl (\x y -> x + y) 0 $ parMap rseq (\x -> solveV6count [x] edges) [1..12]
		otherwise -> 0
	print $ "successes: " ++ show x
	return ()
