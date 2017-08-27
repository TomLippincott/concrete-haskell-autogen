{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.SummarizationCapability where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Summarization_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''SummarizationCapability
