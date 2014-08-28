module Numeric.Limp.Solvers.Cbc where
import qualified Numeric.Limp.Canon as C
import Numeric.Limp.Program
import Numeric.Limp.Rep

import qualified Numeric.Limp.Solvers.Cbc.Solve as S

solve :: (Ord z, Ord r) => Program z r IntDouble -> Either S.Error (Assignment z r IntDouble)
solve p
 = let pc = C.program p
   in  S.solve pc

