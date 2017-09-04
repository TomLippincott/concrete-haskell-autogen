{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.EdgeKind where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Graph_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''EdgeKind
