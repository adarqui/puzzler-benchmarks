module Puzzle.Figures.Cycles (
	cy1,
	cy2,
	cy3
	) where

import Data.List

cy1 a = [(a,a)]
cy2 a = [(a, a+1)]
cy3 a = cy2 a ++ cy2 (a+1) ++ [(a+2,a)]
