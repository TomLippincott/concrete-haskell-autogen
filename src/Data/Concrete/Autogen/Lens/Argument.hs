{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.Argument where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Situations_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''Argument
