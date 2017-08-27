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

module Data.Concrete.Autogen.Services_Types where
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

import Data.Concrete.Autogen.Uuid_Types as Uuid_Types


data AnnotationTaskType = TRANSLATION|NER|TOPICID  deriving (P.Show, P.Eq, G.Generic, TY.Typeable, P.Ord, P.Bounded)
instance P.Enum AnnotationTaskType where
  fromEnum t = case t of
    TRANSLATION -> 1
    NER -> 2
    TOPICID -> 3
  toEnum t = case t of
    1 -> TRANSLATION
    2 -> NER
    3 -> TOPICID
    _ -> X.throw T.ThriftException
instance H.Hashable AnnotationTaskType where
  hashWithSalt salt = H.hashWithSalt salt P.. P.fromEnum
instance QC.Arbitrary AnnotationTaskType where
  arbitrary = QC.elements (P.enumFromTo P.minBound P.maxBound)
data AnnotationUnitType = COMMUNICATION|SENTENCE  deriving (P.Show, P.Eq, G.Generic, TY.Typeable, P.Ord, P.Bounded)
instance P.Enum AnnotationUnitType where
  fromEnum t = case t of
    COMMUNICATION -> 1
    SENTENCE -> 2
  toEnum t = case t of
    1 -> COMMUNICATION
    2 -> SENTENCE
    _ -> X.throw T.ThriftException
instance H.Hashable AnnotationUnitType where
  hashWithSalt salt = H.hashWithSalt salt P.. P.fromEnum
instance QC.Arbitrary AnnotationUnitType where
  arbitrary = QC.elements (P.enumFromTo P.minBound P.maxBound)
data ServicesException = ServicesException  { servicesException_message :: LT.Text
  , servicesException_serEx :: P.Maybe LBS.ByteString
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception ServicesException
instance H.Hashable ServicesException where
  hashWithSalt salt record = salt   `H.hashWithSalt` servicesException_message record   `H.hashWithSalt` servicesException_serEx record  
instance QC.Arbitrary ServicesException where 
  arbitrary = M.liftM ServicesException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_ServicesException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_ServicesException{servicesException_message = servicesException_message obj} then P.Nothing else P.Just $ default_ServicesException{servicesException_message = servicesException_message obj}
    , if obj == default_ServicesException{servicesException_serEx = servicesException_serEx obj} then P.Nothing else P.Just $ default_ServicesException{servicesException_serEx = servicesException_serEx obj}
    ]
from_ServicesException :: ServicesException -> T.ThriftVal
from_ServicesException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v2 -> P.Just (1, ("message",T.TString $ E.encodeUtf8 _v2))) $ servicesException_message record
  , (\_v2 -> (2, ("serEx",T.TBinary _v2))) <$> servicesException_serEx record
  ]
write_ServicesException :: (T.Protocol p, T.Transport t) => p t -> ServicesException -> P.IO ()
write_ServicesException oprot record = T.writeVal oprot $ from_ServicesException record
encode_ServicesException :: (T.Protocol p, T.Transport t) => p t -> ServicesException -> LBS.ByteString
encode_ServicesException oprot record = T.serializeVal oprot $ from_ServicesException record
to_ServicesException :: T.ThriftVal -> ServicesException
to_ServicesException (T.TStruct fields) = ServicesException{
  servicesException_message = P.maybe (P.error "Missing required field: message") (\(_,_val4) -> (case _val4 of {T.TString _val5 -> E.decodeUtf8 _val5; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  servicesException_serEx = P.maybe (P.Nothing) (\(_,_val4) -> P.Just (case _val4 of {T.TBinary _val6 -> _val6; T.TString _val6 -> _val6; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_ServicesException _ = P.error "not a struct"
read_ServicesException :: (T.Transport t, T.Protocol p) => p t -> P.IO ServicesException
read_ServicesException iprot = to_ServicesException <$> T.readVal iprot (T.T_STRUCT typemap_ServicesException)
decode_ServicesException :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> ServicesException
decode_ServicesException iprot bs = to_ServicesException $ T.deserializeVal iprot (T.T_STRUCT typemap_ServicesException) bs
typemap_ServicesException :: T.TypeMap
typemap_ServicesException = Map.fromList [(1,("message",T.T_STRING)),(2,("serEx",T.T_BINARY))]
default_ServicesException :: ServicesException
default_ServicesException = ServicesException{
  servicesException_message = "",
  servicesException_serEx = P.Nothing}
data NotImplementedException = NotImplementedException  { notImplementedException_message :: LT.Text
  , notImplementedException_serEx :: P.Maybe LBS.ByteString
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception NotImplementedException
instance H.Hashable NotImplementedException where
  hashWithSalt salt record = salt   `H.hashWithSalt` notImplementedException_message record   `H.hashWithSalt` notImplementedException_serEx record  
instance QC.Arbitrary NotImplementedException where 
  arbitrary = M.liftM NotImplementedException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_NotImplementedException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NotImplementedException{notImplementedException_message = notImplementedException_message obj} then P.Nothing else P.Just $ default_NotImplementedException{notImplementedException_message = notImplementedException_message obj}
    , if obj == default_NotImplementedException{notImplementedException_serEx = notImplementedException_serEx obj} then P.Nothing else P.Just $ default_NotImplementedException{notImplementedException_serEx = notImplementedException_serEx obj}
    ]
from_NotImplementedException :: NotImplementedException -> T.ThriftVal
from_NotImplementedException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v9 -> P.Just (1, ("message",T.TString $ E.encodeUtf8 _v9))) $ notImplementedException_message record
  , (\_v9 -> (2, ("serEx",T.TBinary _v9))) <$> notImplementedException_serEx record
  ]
write_NotImplementedException :: (T.Protocol p, T.Transport t) => p t -> NotImplementedException -> P.IO ()
write_NotImplementedException oprot record = T.writeVal oprot $ from_NotImplementedException record
encode_NotImplementedException :: (T.Protocol p, T.Transport t) => p t -> NotImplementedException -> LBS.ByteString
encode_NotImplementedException oprot record = T.serializeVal oprot $ from_NotImplementedException record
to_NotImplementedException :: T.ThriftVal -> NotImplementedException
to_NotImplementedException (T.TStruct fields) = NotImplementedException{
  notImplementedException_message = P.maybe (P.error "Missing required field: message") (\(_,_val11) -> (case _val11 of {T.TString _val12 -> E.decodeUtf8 _val12; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  notImplementedException_serEx = P.maybe (P.Nothing) (\(_,_val11) -> P.Just (case _val11 of {T.TBinary _val13 -> _val13; T.TString _val13 -> _val13; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_NotImplementedException _ = P.error "not a struct"
read_NotImplementedException :: (T.Transport t, T.Protocol p) => p t -> P.IO NotImplementedException
read_NotImplementedException iprot = to_NotImplementedException <$> T.readVal iprot (T.T_STRUCT typemap_NotImplementedException)
decode_NotImplementedException :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> NotImplementedException
decode_NotImplementedException iprot bs = to_NotImplementedException $ T.deserializeVal iprot (T.T_STRUCT typemap_NotImplementedException) bs
typemap_NotImplementedException :: T.TypeMap
typemap_NotImplementedException = Map.fromList [(1,("message",T.T_STRING)),(2,("serEx",T.T_BINARY))]
default_NotImplementedException :: NotImplementedException
default_NotImplementedException = NotImplementedException{
  notImplementedException_message = "",
  notImplementedException_serEx = P.Nothing}
data AsyncContactInfo = AsyncContactInfo  { asyncContactInfo_host :: LT.Text
  , asyncContactInfo_port :: I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable AsyncContactInfo where
  hashWithSalt salt record = salt   `H.hashWithSalt` asyncContactInfo_host record   `H.hashWithSalt` asyncContactInfo_port record  
instance QC.Arbitrary AsyncContactInfo where 
  arbitrary = M.liftM AsyncContactInfo (QC.arbitrary)
          `M.ap`(QC.arbitrary)
  shrink obj | obj == default_AsyncContactInfo = []
             | P.otherwise = M.catMaybes
    [ if obj == default_AsyncContactInfo{asyncContactInfo_host = asyncContactInfo_host obj} then P.Nothing else P.Just $ default_AsyncContactInfo{asyncContactInfo_host = asyncContactInfo_host obj}
    , if obj == default_AsyncContactInfo{asyncContactInfo_port = asyncContactInfo_port obj} then P.Nothing else P.Just $ default_AsyncContactInfo{asyncContactInfo_port = asyncContactInfo_port obj}
    ]
from_AsyncContactInfo :: AsyncContactInfo -> T.ThriftVal
from_AsyncContactInfo record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v16 -> P.Just (1, ("host",T.TString $ E.encodeUtf8 _v16))) $ asyncContactInfo_host record
  , (\_v16 -> P.Just (2, ("port",T.TI32 _v16))) $ asyncContactInfo_port record
  ]
write_AsyncContactInfo :: (T.Protocol p, T.Transport t) => p t -> AsyncContactInfo -> P.IO ()
write_AsyncContactInfo oprot record = T.writeVal oprot $ from_AsyncContactInfo record
encode_AsyncContactInfo :: (T.Protocol p, T.Transport t) => p t -> AsyncContactInfo -> LBS.ByteString
encode_AsyncContactInfo oprot record = T.serializeVal oprot $ from_AsyncContactInfo record
to_AsyncContactInfo :: T.ThriftVal -> AsyncContactInfo
to_AsyncContactInfo (T.TStruct fields) = AsyncContactInfo{
  asyncContactInfo_host = P.maybe (P.error "Missing required field: host") (\(_,_val18) -> (case _val18 of {T.TString _val19 -> E.decodeUtf8 _val19; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  asyncContactInfo_port = P.maybe (P.error "Missing required field: port") (\(_,_val18) -> (case _val18 of {T.TI32 _val20 -> _val20; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_AsyncContactInfo _ = P.error "not a struct"
read_AsyncContactInfo :: (T.Transport t, T.Protocol p) => p t -> P.IO AsyncContactInfo
read_AsyncContactInfo iprot = to_AsyncContactInfo <$> T.readVal iprot (T.T_STRUCT typemap_AsyncContactInfo)
decode_AsyncContactInfo :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> AsyncContactInfo
decode_AsyncContactInfo iprot bs = to_AsyncContactInfo $ T.deserializeVal iprot (T.T_STRUCT typemap_AsyncContactInfo) bs
typemap_AsyncContactInfo :: T.TypeMap
typemap_AsyncContactInfo = Map.fromList [(1,("host",T.T_STRING)),(2,("port",T.T_I32))]
default_AsyncContactInfo :: AsyncContactInfo
default_AsyncContactInfo = AsyncContactInfo{
  asyncContactInfo_host = "",
  asyncContactInfo_port = 0}
data AnnotationUnitIdentifier = AnnotationUnitIdentifier  { annotationUnitIdentifier_communicationId :: LT.Text
  , annotationUnitIdentifier_sentenceId :: P.Maybe Uuid_Types.UUID
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable AnnotationUnitIdentifier where
  hashWithSalt salt record = salt   `H.hashWithSalt` annotationUnitIdentifier_communicationId record   `H.hashWithSalt` annotationUnitIdentifier_sentenceId record  
instance QC.Arbitrary AnnotationUnitIdentifier where 
  arbitrary = M.liftM AnnotationUnitIdentifier (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_AnnotationUnitIdentifier = []
             | P.otherwise = M.catMaybes
    [ if obj == default_AnnotationUnitIdentifier{annotationUnitIdentifier_communicationId = annotationUnitIdentifier_communicationId obj} then P.Nothing else P.Just $ default_AnnotationUnitIdentifier{annotationUnitIdentifier_communicationId = annotationUnitIdentifier_communicationId obj}
    , if obj == default_AnnotationUnitIdentifier{annotationUnitIdentifier_sentenceId = annotationUnitIdentifier_sentenceId obj} then P.Nothing else P.Just $ default_AnnotationUnitIdentifier{annotationUnitIdentifier_sentenceId = annotationUnitIdentifier_sentenceId obj}
    ]
from_AnnotationUnitIdentifier :: AnnotationUnitIdentifier -> T.ThriftVal
from_AnnotationUnitIdentifier record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v23 -> P.Just (1, ("communicationId",T.TString $ E.encodeUtf8 _v23))) $ annotationUnitIdentifier_communicationId record
  , (\_v23 -> (2, ("sentenceId",Uuid_Types.from_UUID _v23))) <$> annotationUnitIdentifier_sentenceId record
  ]
write_AnnotationUnitIdentifier :: (T.Protocol p, T.Transport t) => p t -> AnnotationUnitIdentifier -> P.IO ()
write_AnnotationUnitIdentifier oprot record = T.writeVal oprot $ from_AnnotationUnitIdentifier record
encode_AnnotationUnitIdentifier :: (T.Protocol p, T.Transport t) => p t -> AnnotationUnitIdentifier -> LBS.ByteString
encode_AnnotationUnitIdentifier oprot record = T.serializeVal oprot $ from_AnnotationUnitIdentifier record
to_AnnotationUnitIdentifier :: T.ThriftVal -> AnnotationUnitIdentifier
to_AnnotationUnitIdentifier (T.TStruct fields) = AnnotationUnitIdentifier{
  annotationUnitIdentifier_communicationId = P.maybe (P.error "Missing required field: communicationId") (\(_,_val25) -> (case _val25 of {T.TString _val26 -> E.decodeUtf8 _val26; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  annotationUnitIdentifier_sentenceId = P.maybe (P.Nothing) (\(_,_val25) -> P.Just (case _val25 of {T.TStruct _val27 -> (Uuid_Types.to_UUID (T.TStruct _val27)); _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_AnnotationUnitIdentifier _ = P.error "not a struct"
read_AnnotationUnitIdentifier :: (T.Transport t, T.Protocol p) => p t -> P.IO AnnotationUnitIdentifier
read_AnnotationUnitIdentifier iprot = to_AnnotationUnitIdentifier <$> T.readVal iprot (T.T_STRUCT typemap_AnnotationUnitIdentifier)
decode_AnnotationUnitIdentifier :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> AnnotationUnitIdentifier
decode_AnnotationUnitIdentifier iprot bs = to_AnnotationUnitIdentifier $ T.deserializeVal iprot (T.T_STRUCT typemap_AnnotationUnitIdentifier) bs
typemap_AnnotationUnitIdentifier :: T.TypeMap
typemap_AnnotationUnitIdentifier = Map.fromList [(1,("communicationId",T.T_STRING)),(2,("sentenceId",(T.T_STRUCT Uuid_Types.typemap_UUID)))]
default_AnnotationUnitIdentifier :: AnnotationUnitIdentifier
default_AnnotationUnitIdentifier = AnnotationUnitIdentifier{
  annotationUnitIdentifier_communicationId = "",
  annotationUnitIdentifier_sentenceId = P.Nothing}
data ServiceInfo = ServiceInfo  { serviceInfo_name :: LT.Text
  , serviceInfo_version :: LT.Text
  , serviceInfo_description :: P.Maybe LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable ServiceInfo where
  hashWithSalt salt record = salt   `H.hashWithSalt` serviceInfo_name record   `H.hashWithSalt` serviceInfo_version record   `H.hashWithSalt` serviceInfo_description record  
instance QC.Arbitrary ServiceInfo where 
  arbitrary = M.liftM ServiceInfo (QC.arbitrary)
          `M.ap`(QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_ServiceInfo = []
             | P.otherwise = M.catMaybes
    [ if obj == default_ServiceInfo{serviceInfo_name = serviceInfo_name obj} then P.Nothing else P.Just $ default_ServiceInfo{serviceInfo_name = serviceInfo_name obj}
    , if obj == default_ServiceInfo{serviceInfo_version = serviceInfo_version obj} then P.Nothing else P.Just $ default_ServiceInfo{serviceInfo_version = serviceInfo_version obj}
    , if obj == default_ServiceInfo{serviceInfo_description = serviceInfo_description obj} then P.Nothing else P.Just $ default_ServiceInfo{serviceInfo_description = serviceInfo_description obj}
    ]
from_ServiceInfo :: ServiceInfo -> T.ThriftVal
from_ServiceInfo record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v30 -> P.Just (1, ("name",T.TString $ E.encodeUtf8 _v30))) $ serviceInfo_name record
  , (\_v30 -> P.Just (2, ("version",T.TString $ E.encodeUtf8 _v30))) $ serviceInfo_version record
  , (\_v30 -> (3, ("description",T.TString $ E.encodeUtf8 _v30))) <$> serviceInfo_description record
  ]
write_ServiceInfo :: (T.Protocol p, T.Transport t) => p t -> ServiceInfo -> P.IO ()
write_ServiceInfo oprot record = T.writeVal oprot $ from_ServiceInfo record
encode_ServiceInfo :: (T.Protocol p, T.Transport t) => p t -> ServiceInfo -> LBS.ByteString
encode_ServiceInfo oprot record = T.serializeVal oprot $ from_ServiceInfo record
to_ServiceInfo :: T.ThriftVal -> ServiceInfo
to_ServiceInfo (T.TStruct fields) = ServiceInfo{
  serviceInfo_name = P.maybe (P.error "Missing required field: name") (\(_,_val32) -> (case _val32 of {T.TString _val33 -> E.decodeUtf8 _val33; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  serviceInfo_version = P.maybe (P.error "Missing required field: version") (\(_,_val32) -> (case _val32 of {T.TString _val34 -> E.decodeUtf8 _val34; _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  serviceInfo_description = P.maybe (P.Nothing) (\(_,_val32) -> P.Just (case _val32 of {T.TString _val35 -> E.decodeUtf8 _val35; _ -> P.error "wrong type"})) (Map.lookup (3) fields)
  }
to_ServiceInfo _ = P.error "not a struct"
read_ServiceInfo :: (T.Transport t, T.Protocol p) => p t -> P.IO ServiceInfo
read_ServiceInfo iprot = to_ServiceInfo <$> T.readVal iprot (T.T_STRUCT typemap_ServiceInfo)
decode_ServiceInfo :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> ServiceInfo
decode_ServiceInfo iprot bs = to_ServiceInfo $ T.deserializeVal iprot (T.T_STRUCT typemap_ServiceInfo) bs
typemap_ServiceInfo :: T.TypeMap
typemap_ServiceInfo = Map.fromList [(1,("name",T.T_STRING)),(2,("version",T.T_STRING)),(3,("description",T.T_STRING))]
default_ServiceInfo :: ServiceInfo
default_ServiceInfo = ServiceInfo{
  serviceInfo_name = "",
  serviceInfo_version = "",
  serviceInfo_description = P.Nothing}
