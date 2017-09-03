{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Sound where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Audio_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Sound
