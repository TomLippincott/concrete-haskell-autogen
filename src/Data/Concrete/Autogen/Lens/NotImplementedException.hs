{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.NotImplementedException where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Services_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''NotImplementedException
