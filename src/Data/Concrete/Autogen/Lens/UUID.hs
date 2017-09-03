{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.UUID where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Uuid_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''UUID
