{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.SummarySourceType where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Summarization_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''SummarySourceType
