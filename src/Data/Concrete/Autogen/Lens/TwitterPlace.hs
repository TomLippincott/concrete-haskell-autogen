{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.TwitterPlace where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Twitter_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''TwitterPlace
