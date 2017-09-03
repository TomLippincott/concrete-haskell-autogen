{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.LanguageIdentification where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Language_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ['_':f])) ''LanguageIdentification
