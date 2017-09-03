{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Linking where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Linking_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Linking
