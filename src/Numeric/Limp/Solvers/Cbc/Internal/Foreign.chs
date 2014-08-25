{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-do-bind -fno-warn-unused-matches #-}
module Numeric.Limp.Solvers.Cbc.Internal.Foreign where

import Foreign
-- import Foreign.C

import Control.Applicative

-- import Unsafe.Coerce

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
    = withForeignPtr ptr f

{#fun newModel as ^
    { } -> `CbcModel' mkCbcModel* #}


