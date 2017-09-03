{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.FetchResult where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Access_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''FetchResult
