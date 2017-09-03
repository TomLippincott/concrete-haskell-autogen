{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Annotation where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Learn_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Annotation
