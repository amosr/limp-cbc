module Infeasible (infeasible) where

import Base
import Numeric.Limp.Rep
import Numeric.Limp.Program

-- Minimise     1
-- Subject to   a >= b + 1
--              b >= a + 1
problem1 :: Direction -> Program V0 V2 IntDouble
problem1 dir
 = program dir
            c1
           (   r1 A :>= r1 B .+. c1
           :&& r1 B :>= r1 A .+. c1)
           []

infeasible :: IO ()
infeasible
 = do   solve_problem problem1

