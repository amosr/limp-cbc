module Base where

import Numeric.Limp.Rep
import Numeric.Limp.Program
import Numeric.Limp.Solvers.Cbc

data V0

deriving instance Ord  V0
deriving instance Eq   V0
deriving instance Show V0

data V2 = A | B
    deriving (Ord, Eq, Show)


solve_problem :: (Show z, Show r, Ord z, Ord r) => (Direction -> Program z r IntDouble) -> IO ()
solve_problem problem
 = do   let a1 = solve $ problem Minimise
        putStrLn "*** Minimise *** "
        show_result a1

        let a2 = solve $ problem Maximise
        putStrLn "*** Maximise *** "
        show_result a2

show_result :: (Show z, Show r, Ord z, Ord r) => Either Error (Assignment z r IntDouble) -> IO ()
show_result as
 = case as of
    Left e
     -> do putStrLn "Error:"
           print e
    Right a
     -> do putStrLn "Success:"
           print a

