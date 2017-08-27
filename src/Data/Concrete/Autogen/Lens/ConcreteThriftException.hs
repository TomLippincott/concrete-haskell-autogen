{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.ConcreteThriftException where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Ex_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''ConcreteThriftException
