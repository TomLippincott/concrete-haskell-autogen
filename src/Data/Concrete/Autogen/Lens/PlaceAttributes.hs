{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.PlaceAttributes where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Twitter_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''PlaceAttributes
