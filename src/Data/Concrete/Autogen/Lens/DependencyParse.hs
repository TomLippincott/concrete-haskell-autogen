{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.DependencyParse where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Structure_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''DependencyParse
