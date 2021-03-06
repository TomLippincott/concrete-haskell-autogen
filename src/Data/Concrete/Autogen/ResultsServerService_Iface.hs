{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.10.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module Data.Concrete.Autogen.ResultsServerService_Iface where
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T

import Data.Concrete.Autogen.Services_Types as Services_Types
import Data.Concrete.Autogen.Uuid_Types as Uuid_Types
import Data.Concrete.Autogen.Search_Types as Search_Types
import Data.Concrete.Autogen.Communication_Types as Communication_Types


import Data.Concrete.Autogen.Results_Types as Results_Types

import Data.Concrete.Autogen.Service_Iface as Service_Iface
class Service_Iface a => ResultsServerService_Iface a where
  registerSearchResult :: a -> Search_Types.SearchResult -> Services_Types.AnnotationTaskType -> P.IO ()
  getSearchResults :: a -> Services_Types.AnnotationTaskType -> I.Int32 -> P.IO (Vector.Vector Search_Types.SearchResult)
  getSearchResultsByUser :: a -> Services_Types.AnnotationTaskType -> LT.Text -> I.Int32 -> P.IO (Vector.Vector Search_Types.SearchResult)
  getLatestSearchResult :: a -> LT.Text -> P.IO Search_Types.SearchResult
  getSearchResult :: a -> Uuid_Types.UUID -> P.IO Search_Types.SearchResult
  startSession :: a -> Uuid_Types.UUID -> Services_Types.AnnotationTaskType -> P.IO Uuid_Types.UUID
  stopSession :: a -> Uuid_Types.UUID -> P.IO ()
  getNextChunk :: a -> Uuid_Types.UUID -> P.IO (Vector.Vector Services_Types.AnnotationUnitIdentifier)
  submitAnnotation :: a -> Uuid_Types.UUID -> Services_Types.AnnotationUnitIdentifier -> Communication_Types.Communication -> P.IO ()
