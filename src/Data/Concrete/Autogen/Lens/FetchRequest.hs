{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.FetchRequest where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Access_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''FetchRequest
