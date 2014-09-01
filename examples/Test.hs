module Main where

import Base
import Simple
import Infeasible
import Clustering
import Stupid


main :: IO ()
main
 = do   putStrLn "Simple"
        simple
        putStrLn "Infeasible"
        infeasible
        putStrLn "Clustering"
        clustering
        putStrLn "Stupid"
        stupid
