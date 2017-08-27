{-# LANGUAGE TemplateHaskell #-}
module Data.Concrete.Autogen.Lens.EmailAddress where

import Control.Lens (makeLensesWith, classyRules_, lensField, mappingNamer, (&), (.~))
import Data.Concrete.Autogen.Email_Types

makeLensesWith (classyRules_ & lensField .~ mappingNamer (\f -> ["c" ++ dropWhile (\c -> c /= '_') f])) ''EmailAddress
