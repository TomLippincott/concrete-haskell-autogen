{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.ClusterMember where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Cluster_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''ClusterMember
