{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Summary where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Summarization_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Summary
