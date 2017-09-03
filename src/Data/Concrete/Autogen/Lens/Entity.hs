{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Entity where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Entities_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Entity
