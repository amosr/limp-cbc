module Numeric.Limp.Solvers.Cbc.Solve where
import Numeric.Limp.Canon
import Numeric.Limp.Rep

import Numeric.Limp.Solvers.Cbc.Error
import Numeric.Limp.Solvers.Cbc.MatrixRepr

import qualified Data.Vector.Storable as V
import Numeric.Limp.Solvers.Cbc.Internal.Wrapper

import System.IO.Unsafe

solve :: (Ord z, Ord r) => Program z r IntDouble -> Either Error (Assignment z r IntDouble)
solve p
 = let mr = matrixReprOfProgram p
   in  unsafePerformIO $ do
            m <- newModel

            setQuiet m

            loadProblem m (_starts mr) (_inds mr)  (_vals mr)
                          (_colLs mr)  (_colUs mr) (_obj mr)
                          (_rowLs mr)  (_rowUs mr)

            V.forM_ (_ints mr) $ setInteger m

            setObjSense m 1

            branchAndBound m

            infeasible <- isProvenInfeasible m
            -- TODO get other statuses
            case infeasible of
             True
              ->    return $ Left  $ Infeasible

             False
              -> do vs <- getSolution m
                    return $ Right $ makeAssignment p vs
