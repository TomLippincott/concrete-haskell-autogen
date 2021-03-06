{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.AnnotationUnitType where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Services_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''AnnotationUnitType
