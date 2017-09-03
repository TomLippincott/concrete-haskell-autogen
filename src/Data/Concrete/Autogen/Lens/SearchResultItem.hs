{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.SearchResultItem where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Search_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''SearchResultItem
