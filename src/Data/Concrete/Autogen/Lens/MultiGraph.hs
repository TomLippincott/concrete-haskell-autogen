{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.MultiGraph where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Graph_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''MultiGraph
