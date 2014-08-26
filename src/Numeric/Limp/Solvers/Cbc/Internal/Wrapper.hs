-- One small step above the Foreign interface
module Numeric.Limp.Solvers.Cbc.Internal.Wrapper
    ( F.CbcModel
    , F.newModel
    , F.branchAndBound
    , F.setInteger
    , F.setObjSense

    , getColSolution
    , loadProblem
    ) where

import qualified Numeric.Limp.Solvers.Cbc.Internal.Foreign as F

import qualified Data.Vector.Storable as V
import Data.Vector.Storable (Vector)

getColSolution = F.getColSolution'

loadProblem
 :: F.CbcModel
 -> Vector Int -> Vector Int -> Vector Double
 -> Vector Double -> Vector Double
 -> Vector Double -> Vector Double -> Vector Double
 -> IO ()
loadProblem model starts indices values collb colub obj rowub rowlb
 = let ncols = V.length collb
       nrows = V.length rowlb
   in  do   check_len "colub = ncols" colub ncols
            check_len "rowub = nrows" rowub nrows

            check_len "obj   = ncols" obj   ncols

            -- check_len "indices = values" indices (V.length values)
            F.loadProblem model ncols nrows starts indices values collb colub obj rowub rowlb
 where
  check_len e v l
   | V.length v == l
   = return ()
   | otherwise
   = putStrLn
   $ "Numeric.Limp.Solvers.Cbc.Internal.Foreign:loadProblem_check wrong length! " ++ e ++ ": " ++ show (V.length v, l)

