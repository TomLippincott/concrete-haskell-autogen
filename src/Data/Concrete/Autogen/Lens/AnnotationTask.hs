{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.AnnotationTask where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Learn_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''AnnotationTask
