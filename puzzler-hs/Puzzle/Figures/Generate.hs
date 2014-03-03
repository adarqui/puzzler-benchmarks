module Puzzle.Figures.Generate (
	dot,
	line,
	triangle,
	square
	) where

import Data.Graph

dot a = [(a,a)]
line a b = [(a,b)]
triangle a b c = [(a,b),(b,c),(c,a)]
square a b c d = [(a,b),(b,c),(c,d),(d,a)]
