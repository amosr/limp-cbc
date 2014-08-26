module Main where

import Numeric.Limp.Solvers.Cbc.Internal.Wrapper

import qualified Data.Vector.Storable as V
import Data.Vector.Storable (Vector)

main
 = do   m <- newModel
        putStrLn "Ok: allocated?"

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
        putStrLn "set integer"

        setObjSense m (-1)

        putStrLn "trying to solve"
        branchAndBound m
        putStrLn "solved?"
        
        vs <- getColSolution m
        putStrLn "got solution: "
        print vs

