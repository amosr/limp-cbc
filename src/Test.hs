module Main where

import Numeric.Limp.Rep
import Numeric.Limp.Program
import Numeric.Limp.Solvers.Cbc

import qualified Data.Vector.Storable as V
import Data.Vector.Storable (Vector)

problem :: Direction -> Program String String IntDouble
problem dir
 = Program (r1 "a" .+. r1 "b") dir
           (   r1 "a" :>= con 15
           :&& con 20 :>= r1 "a")
           [ ] -- lowerUpperZ 5 "a" 20
           -- , lowerUpperZ 10 "b" 30 ]

main
 = do   let a1 = solve $ problem Minimise
        putStrLn "*** Minimise *** "
        handle a1

        let a2 = solve $ problem Maximise
        putStrLn "*** Maximise *** "
        handle a2
 where
  handle as
   = case as of
      Left e
       ->    print e
      Right a
       -> do putStrLn $ "a " ++ show (rOf a "a")
             putStrLn $ "b " ++ show (rOf a "b")

{-
main
 = do   m <- newModel
        putStrLn "Ok: allocated?"
        setQuiet m
        putStrLn "Made it quiet"

        let v l = V.fromList l

        let starts = v [0, 1, 2]
            inds   = v [0, 0]
            vals   = v [1, 2]
            collb  = v [0, 0]
            colub  = v [10, 10]
            obj    = v [1, 1]
            rowlb  = v [0]
            rowub  = v [3.9]

        loadProblem m starts inds vals collb colub obj rowlb rowub
        putStrLn "loaded problem"

        setInteger  m 0
        setInteger  m 1
        putStrLn "set integer"

        setObjSense m (1)

        putStrLn "trying to solve"
        branchAndBound m
        putStrLn "solved?"
        
        vs <- getSolution m
        putStrLn "got solution: "
        print vs

-}
