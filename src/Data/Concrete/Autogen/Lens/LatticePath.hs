{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.LatticePath where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Structure_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''LatticePath
