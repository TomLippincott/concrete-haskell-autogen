{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Cluster where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Cluster_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Cluster
