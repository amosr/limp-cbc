{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-do-bind -fno-warn-unused-matches #-}
module Numeric.Limp.Solvers.Cbc.Internal.Foreign where

import Foreign
import Foreign.C

import Control.Applicative

import qualified Data.Vector.Storable as V
import Data.Vector.Storable (Vector)

import Unsafe.Coerce

#include "Cbc.h"


newtype CbcModel = CbcModel (ForeignPtr CbcModel)
{#pointer *CbcModel as CbcModelPtr -> CbcModel #}


foreign import ccall "&freeModel"
   cbcDeleteModel_funptr :: FunPtr (Ptr CbcModel -> IO ())

mkCbcModel :: CbcModelPtr -> IO CbcModel
mkCbcModel p
    = CbcModel <$> newForeignPtr cbcDeleteModel_funptr p

withCbcModel :: CbcModel -> (CbcModelPtr -> IO b) -> IO b
withCbcModel (CbcModel ptr) f
    = do    withForeignPtr ptr f

{#fun newModel as ^
    { } -> `CbcModel' mkCbcModel* #}

withVecI    :: Vector Int -> (Ptr CInt -> IO b) -> IO b
withVecI v f
 = V.unsafeWith (V.map fromIntegral v) f

withVecD    :: Vector Double -> (Ptr CDouble -> IO b) -> IO b
withVecD v f
 = V.unsafeWith v (f . castPtr)


{#fun loadProblem as ^
    { withCbcModel* `CbcModel'

    ,               `Int'               -- # rows
    ,               `Int'               -- # columns

    , withVecI*     `Vector Int'        -- starts
    , withVecI*     `Vector Int'        -- indices
    , withVecD*     `Vector Double'     -- values

    , withVecD*     `Vector Double'     -- col lower bounds
    , withVecD*     `Vector Double'     -- col upper bounds

    , withVecD*     `Vector Double'     -- objective coefficients
    , withVecD*     `Vector Double'     -- row lower bounds
    , withVecD*     `Vector Double'     -- row upper bounds
    }
    -> `()' #}


{#fun setInteger as ^
    { withCbcModel* `CbcModel'
    ,               `Int' }
    -> `()' #}


{#fun branchAndBound as ^
    { withCbcModel* `CbcModel' }
    -> `()' #}


getSolution :: CbcModel -> IO (Vector Double)
getSolution m@(CbcModel fp)
 = do   ncols <- fromIntegral <$> withCbcModel m {#call getNumCols#}
        vd    <- unsafeCoerce <$> withCbcModel m {#call getBestSolution#}
        arr <- V.generateM ncols (peekElemOff vd)

        -- The model owns the array, so ensure we keep it around until after we've read the whole array
        touchForeignPtr fp
        return arr


{#fun setObjSense as ^
    { withCbcModel* `CbcModel'
    ,               `Double' }
    -> `()' #}


{#fun setLogLevel as ^
    { withCbcModel* `CbcModel'
    ,               `Int' }
    -> `()' #}


{#fun isProvenInfeasible as ^
    { withCbcModel* `CbcModel' }
    -> `Bool' #}


{#fun pure getCoinDblMax as ^
    { } -> `Double' #}

