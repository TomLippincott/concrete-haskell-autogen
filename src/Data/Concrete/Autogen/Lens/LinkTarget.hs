{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.LinkTarget where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Linking_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''LinkTarget
