{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.TaggedToken where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Structure_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''TaggedToken
