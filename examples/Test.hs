module Main where

import Base
import Simple
import Infeasible
import Clustering


main :: IO ()
main
 = do   putStrLn "Simple"
        simple
        putStrLn "Infeasible"
        infeasible
        putStrLn "Clustering"
        clustering
