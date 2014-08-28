module Numeric.Limp.Solvers.Cbc.MatrixRepr where
import Numeric.Limp.Canon
import Numeric.Limp.Rep

import Data.Either (isLeft)

import qualified Data.Map as M
import qualified Data.Set as S

import qualified Data.Vector.Storable as V
import Data.Vector.Storable (Vector)
import Numeric.Limp.Solvers.Cbc.Internal.Wrapper


-- | A half-sparse, half-dense matrix (tableau?) representation of a linear program.
-- Columns are variables, and constraints are rows.
data MatrixRepr
 = MatrixRepr
 { _starts   :: Vector Int
 -- ^ starting indices segment descriptor for indsvals.
 -- one per row (constraint).
 -- but for some reason, there's an extra one at the end.
 -- starts ! 0 == 0 && starts ! (length starts - 1) == length indsvals
 -- (I think)
 --
 , _inds     :: Vector Int
 , _vals     :: Vector Double
 -- ^ segmented array. each pair is an index of the column (variable), and the coefficient.
 -- the segment number is the row (constraint).
 -- ^ Coefficients of the constraints

 , _colLs    :: Vector Double
 , _colUs    :: Vector Double
 -- ^ Lower and upper bound for each variable

 , _obj      :: Vector Double
 -- ^ Coefficients of each variable in the objective function

 , _rowLs    :: Vector Double
 , _rowUs    :: Vector Double
 -- ^ Lower and upper bound for each constraint

 , _ints     :: Vector Int
 -- ^ Indices of each integer variable.
 }
 deriving Show


matrixReprOfProgram :: (Ord z, Ord r) => Program z r IntDouble -> MatrixRepr
matrixReprOfProgram p
 = MatrixRepr starts inds vals colLs colUs obj rowLs rowUs ints
 where

  starts
   = V.fromList
   $ scanl (+) 0
   $ map length nestedindvals

  inds = V.fromList $ map fst $ concat nestedindvals
  vals = V.fromList $ map snd $ concat nestedindvals

  nestedindvals = map getIndVals $ S.toList vs

  colLs = V.fromList $ map (fst . boundsOfVar) $ S.toList vs
  colUs = V.fromList $ map (snd . boundsOfVar) $ S.toList vs

  obj
   = case _objective p of
     Linear m
      -> V.fromList
       $ map (maybe 0 unwrapR . flip M.lookup m) $ S.toList vs

  rowLs = V.fromList $ map (fst . boundsOfCon) cons
  rowUs = V.fromList $ map (snd . boundsOfCon) cons

  ints = V.fromList $ map snd $ filter (isLeft . fst) $ S.toList vs `zip` [0..]


  vs = varsOfProgram p
  -- nvars = S.size vs
  -- ncons = length cons
  cons = case _constraints p of
         Constraint cs -> cs

  getIndVals v
   = concatMap (\(C1 _ (Linear m) _, ix) ->
                    case M.lookup v m of
                    Nothing -> []
                    Just mul -> [(ix, unwrapR mul)]) (cons `zip` [0..])


  boundsOfVar v
   = case M.lookup v $ _bounds p of
     Nothing    -> (lower Nothing, upper Nothing)
     Just (l,u) -> (lower l,       upper u)

  boundsOfCon (C1 l _ u) = (lower l, upper u)

  upper = maybe   getCoinDblMax  unwrapR
  lower = maybe (-getCoinDblMax) unwrapR


makeAssignment :: (Ord z, Ord r) => Program z r IntDouble -> Vector Double -> Assignment z r IntDouble
makeAssignment p values
 = go M.empty M.empty
 $ S.toList (varsOfProgram p) `zip` V.toList   values
 where
  go mz mr []
   = Assignment mz mr

  go mz mr ((Left z, val) : rest)
   = go (M.insert z (Z $ truncate val) mz) mr rest

  go mz mr ((Right r, val) : rest)
   = go mz (M.insert r (R $ val) mr) rest


