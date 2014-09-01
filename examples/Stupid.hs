-- Stupid examples that might just fail
module Stupid (stupid) where

import Base
import Numeric.Limp.Rep
import Numeric.Limp.Program

problem1 :: Direction -> Program String String IntDouble
problem1 dir
 = program dir
           c1
           CTrue
           []

stupid :: IO ()
stupid
 = do   solve_problem problem1


