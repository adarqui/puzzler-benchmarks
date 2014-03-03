module Misc.TestList (
	list_test
	) where

import Test.HUnit
import Data.Maybe
import Misc.List
import Misc.Tuple


test_shuffle = TestCase $ do
	assertEqual "shuffle [1,2,3] = [2,3,1]" [2,3,1] (shuffle [1,2,3])
	assertEqual "shuffle $ shuffle [1,2,3] = [3,1,2]" [3,1,2] (shuffle $ shuffle [1,2,3])


test_shuffles = TestCase $ do
	assertEqual "shuffles [1,2,3] 2 = [3,1,2]" [[2,3,1],[3,1,2]] (shuffles [1,2,3] 2)


test_dropElm = TestCase $ do
	assertEqual "dropElm [1,2,3] 3 = [1,2]" [1,2] (dropElm [1,2,3] 3)


test_headSafe = TestCase $ do
--	assertEqual "headSafe [] = Nothing" (Nothing) (headSafe [])
	assertEqual "headSafe [1] = Just 1" (Just 1) (headSafe [1])


list_test = do
	runTestTT list_tests


list_tests = TestList [
		TestLabel "test_shuffle" test_shuffle,
		TestLabel "test_shuffles" test_shuffles,
		TestLabel "test_dropElm" test_dropElm,
		TestLabel "test_headSafe" test_headSafe
	]
