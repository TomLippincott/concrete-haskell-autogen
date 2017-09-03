{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.NITFInfo where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Nitf_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''NITFInfo
