{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.CommunicationSet where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Communication_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''CommunicationSet
