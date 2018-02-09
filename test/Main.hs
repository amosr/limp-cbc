{-# LANGUAGE FlexibleInstances, ScopedTypeVariables, TupleSections #-}
import Test.Tasty
import Test.Tasty.QuickCheck
import Test.QuickCheck.Property
import Data.IORef
import Data.Void
import Data.Either
import Numeric.Limp.Solvers.Cbc (solve, Error(..))
import Numeric.Limp.Program
import Numeric.Limp.Rep.IntDouble
import Numeric.Limp.Solvers.Cbc.MatrixRepr (matrixReprOfProgram)

import qualified Numeric.Limp.Canon as Canon
import qualified Numeric.Limp.Canon.Pretty as Canon

main :: IO ()
main = defaultMain limpTest

instance Arbitrary (Program Int Void IntDouble) where
  arbitrary = do
    let
      vars :: [Int]
      vars = [1 .. 10]
      bounds = map binary vars
      obj = LZ ((,1) <$> vars) 0
    constraints <- fmap mconcat . vectorOf 5 $ do
      vars1 <- sublistOf vars
      return $ LZ ((,1) <$> vars1) 0 :== c1
    return $ minimise obj constraints bounds

limpTest :: TestTree
limpTest = testProperty "limp" $ \(prog1 :: Program Int Void IntDouble) ->
  ioProperty $ do
    -- prevent CSE
    v <- newIORef prog1
    prog2 <- readIORef v
    let sol1 = solve prog1
        sol2 = solve prog2
        score1 = eval <$> sol1 <*> pure (_objective prog1)
        score2 = eval <$> sol2 <*> pure (_objective prog2)
        valid1 = checkProgram <$> sol1 <*> pure prog1
        valid2 = checkProgram <$> sol2 <*> pure prog2
    return $
      classify (isRight sol1) "feasible" $
      if score1 == score2
        then property True
        else property $
          MkResult (Just False) True
            ("\n" ++ show (score1,valid1,sol1) ++
             "\n" ++ show (score2,valid2,sol2) ++
             "\n\n" ++ ppr prog1)
            Nothing False Nothing mempty mempty mempty [show prog1]

ppr :: Program Int Void IntDouble -> String
ppr p0 = 
  let p  = Canon.program p0
      m  = matrixReprOfProgram p
      lp = Canon.ppr (("Z"++) . show) (("R"++) . show) p
  in  lp ++ "\n\n" ++ show m

{-
  (Right -9.223372036854776e18,Right (Assignment (fromList [(1,-9223372036854775808),(2,0),(3,0),(4,1),(5,1),(6,0),(7,0),(8,1),(9,0),(10,0)]) (fromList [])))
  (Right 3.0,Right (Assignment (fromList [(1,0),(2,0),(3,0),(4,1),(5,1),(6,0),(7,0),(8,1),(9,0),(10,0)]) (fromList [])))
  Minimize
  	1.0 Z1 + 1.0 Z2 + 1.0 Z3 + 1.0 Z4 + 1.0 Z5 + 1.0 Z6 + 1.0 Z7 + 1.0 Z8 + 1.0 Z9 + 1.0 Z10
  Subject to
  	-1.0 Z1 - 1.0 Z2 - 1.0 Z6 - 1.0 Z8 - 1.0 Z10 >= -1.0
  	-1.0 Z1 - 1.0 Z2 - 1.0 Z6 - 1.0 Z8 - 1.0 Z10 <= -1.0
  	-1.0 Z1 - 1.0 Z2 - 1.0 Z5 - 1.0 Z7 - 1.0 Z9 >= -1.0
  	-1.0 Z1 - 1.0 Z2 - 1.0 Z5 - 1.0 Z7 - 1.0 Z9 <= -1.0
  	-1.0 Z5 >= -1.0
  	-1.0 Z5 <= -1.0
  	-1.0 Z1 - 1.0 Z4 - 1.0 Z7 - 1.0 Z9 >= -1.0
  	-1.0 Z1 - 1.0 Z4 - 1.0 Z7 - 1.0 Z9 <= -1.0
  	-1.0 Z7 - 1.0 Z8 >= -1.0
  	-1.0 Z7 - 1.0 Z8 <= -1.0

  Bounds
  	0.0 <= Z1 <= 1.0
  	0.0 <= Z2 <= 1.0
  	0.0 <= Z3 <= 1.0
  	0.0 <= Z4 <= 1.0
  	0.0 <= Z5 <= 1.0
  	0.0 <= Z6 <= 1.0
  	0.0 <= Z7 <= 1.0
  	0.0 <= Z8 <= 1.0
  	0.0 <= Z9 <= 1.0
  	0.0 <= Z10 <= 1.0

  Generals
  Z1
  Z2
  Z3
  Z4
  Z5
  Z6
  Z7
  Z8
  Z9
  Z10
-}
