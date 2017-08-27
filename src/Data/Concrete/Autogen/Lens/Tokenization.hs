{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Tokenization where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Structure_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''Tokenization
