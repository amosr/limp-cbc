module Simple (simple) where

import Base
import Numeric.Limp.Rep
import Numeric.Limp.Program

-- Minimise     a + b
-- Subject to   a + 2b >= 3
-- Where        0 <= a <= 10 :: Z
--              0 <= b <= 10 :: R
problem1 :: Direction -> Program String String IntDouble
problem1 dir
 = program dir
           (z1 "a" .+. r1 "b" )
           (z1 "a" .+. r "b" 2 :>= con 3)
           [ lowerUpperZ 0 "a" 10
           , lowerUpperR 0 "b" 10 ]

-- As above, but swap coefficients on >= 3 constraint.
--
-- Minimise     a + b
-- Subject to   2a + b >= 3
-- Where        0 <= a <= 10 :: Z
--              0 <= b <= 10 :: R
problem2 :: Direction -> Program String String IntDouble
problem2 dir
 = program dir
           (z1 "a" .+. r1 "b" )
           (z "a" 2 .+. r1 "b" :>= con 3)
           [ lowerUpperZ 0 "a" 10
           , lowerUpperR 0 "b" 10 ]


-- Leave out the bounds on variables
--
-- Minimise     a + b
-- Subject to   a >= b
--              b >= a
--              a >= 3
--              b <= 10
-- Where        a :: Z
--              b :: R
problem3 :: Direction -> Program String String IntDouble
problem3 dir
 = program dir
           (z1 "a" .+. r1 "b")
           (   z1 "a" :>= r1 "b"
           :&& r1 "b" :>= z1 "a"
           :&& z1 "a" :>= con 3
           :&& r1 "b" :<= con 10)
           [ ]


simple :: IO ()
simple
 = do   solve_problem problem1
        solve_problem problem2
        solve_problem problem3

