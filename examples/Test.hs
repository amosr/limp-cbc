module Main where

import Numeric.Limp.Rep
import Numeric.Limp.Program
import Numeric.Limp.Solvers.Cbc

problem1 :: Direction -> Program String String IntDouble
problem1 dir
 = Program (z1 "a" .+. r1 "b" ) dir
           (z1 "a" .+. r "b" 2 :>= con 3)
           [ lowerUpperZ 0 "a" 10
           , lowerUpperR 0 "b" 10 ]

problem2 :: Direction -> Program String String IntDouble
problem2 dir
 = Program (z1 "a" .+. r "b" 2 ) dir
           (   z1 "a" :>= con 15
           :&& con 20 :>= r1 "b")
           [ lowerUpperZ 5 "a" 50
           , lowerUpperR 10 "b" 30 ]

main :: IO ()
main
 = do   prob problem1
        prob problem2
 where
  prob problem
   = do   let a1 = solve $ problem Minimise
          putStrLn "*** Minimise *** "
          handle a1

          let a2 = solve $ problem Maximise
          putStrLn "*** Maximise *** "
          handle a2

  handle as
   = case as of
      Left e
       ->    print e
      Right a
       -> do putStrLn $ "a " ++ show (zOf a "a")
             putStrLn $ "b " ++ show (rOf a "b")

