{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.TextSpan where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Spans_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''TextSpan
