{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.AnnotationMetadata where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Metadata_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''AnnotationMetadata
