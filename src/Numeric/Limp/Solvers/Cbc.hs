module Numeric.Limp.Solvers.Cbc
    ( Error(..)
    , solve
    ) where
import qualified Numeric.Limp.Canon as C
import Numeric.Limp.Program
import Numeric.Limp.Rep

import qualified Numeric.Limp.Solvers.Cbc.Solve as S
import Numeric.Limp.Solvers.Cbc.Error

solve :: (Ord z, Ord r) => Program z r IntDouble -> Either Error (Assignment z r IntDouble)
solve p
 = let pc = C.program p
   in  S.solve pc

