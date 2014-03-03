module Puzzle.Solvers.TestSinglet (
	singlet_test
	) where

import Test.HUnit
import Data.Graph
import Graph.Graph
import Puzzle.Figures.Predefined
import Puzzle.Solvers.Singlet



test_singlet = TestCase $ do
	mapM_ (\x -> assertEqual (feName x) ((feAnswer x),[]) (singletE (feEdges x) (feAnswer x))) getFigs
	mapM_ (\x -> assertEqual (feName x) ((feAnswer x),[]) (singletE' (feEdges x) (feAnswer x))) getFigs
	mapM_ (\x -> assertEqual (feName x) ((feAnswer x),[]) (singletE'' (feEdges x) (feAnswer x))) getFigs

test_singlet_fail = TestCase $ do
	mapM_ (\x -> assertEqual (feName x) 0 (length (fst (singletE (feEdges x) (feAnswer x))))) getFigsFail
	mapM_ (\x -> assertEqual (feName x) 0 (length (fst (singletE' (feEdges x) (feAnswer x))))) getFigsFail
	mapM_ (\x -> assertEqual (feName x) 0 (length (fst (singletE'' (feEdges x) (feAnswer x))))) getFigsFail

singlet_test = do
	runTestTT graph_tests


graph_tests = TestList [
		TestLabel "test_singlet" test_singlet,
		TestLabel "test_singlet_fail" test_singlet_fail
	]
