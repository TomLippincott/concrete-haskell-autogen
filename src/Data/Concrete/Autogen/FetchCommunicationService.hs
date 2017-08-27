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

module Data.Concrete.Autogen.FetchCommunicationService where
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

import Data.Concrete.Autogen.Communication_Types as Communication_Types
import Data.Concrete.Autogen.Services_Types as Services_Types


import qualified Data.Concrete.Autogen.Service as Service
import Data.Concrete.Autogen.Access_Types as Access_Types
import qualified Data.Concrete.Autogen.FetchCommunicationService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data Fetch_args = Fetch_args  { fetch_args_request :: FetchRequest
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Fetch_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` fetch_args_request record  
instance QC.Arbitrary Fetch_args where 
  arbitrary = M.liftM Fetch_args (QC.arbitrary)
  shrink obj | obj == default_Fetch_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_Fetch_args{fetch_args_request = fetch_args_request obj} then P.Nothing else P.Just $ default_Fetch_args{fetch_args_request = fetch_args_request obj}
    ]
from_Fetch_args :: Fetch_args -> T.ThriftVal
from_Fetch_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v23 -> P.Just (1, ("request",from_FetchRequest _v23))) $ fetch_args_request record
  ]
write_Fetch_args :: (T.Protocol p, T.Transport t) => p t -> Fetch_args -> P.IO ()
write_Fetch_args oprot record = T.writeVal oprot $ from_Fetch_args record
encode_Fetch_args :: (T.Protocol p, T.Transport t) => p t -> Fetch_args -> LBS.ByteString
encode_Fetch_args oprot record = T.serializeVal oprot $ from_Fetch_args record
to_Fetch_args :: T.ThriftVal -> Fetch_args
to_Fetch_args (T.TStruct fields) = Fetch_args{
  fetch_args_request = P.maybe (fetch_args_request default_Fetch_args) (\(_,_val25) -> (case _val25 of {T.TStruct _val26 -> (to_FetchRequest (T.TStruct _val26)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_Fetch_args _ = P.error "not a struct"
read_Fetch_args :: (T.Transport t, T.Protocol p) => p t -> P.IO Fetch_args
read_Fetch_args iprot = to_Fetch_args <$> T.readVal iprot (T.T_STRUCT typemap_Fetch_args)
decode_Fetch_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Fetch_args
decode_Fetch_args iprot bs = to_Fetch_args $ T.deserializeVal iprot (T.T_STRUCT typemap_Fetch_args) bs
typemap_Fetch_args :: T.TypeMap
typemap_Fetch_args = Map.fromList [(1,("request",(T.T_STRUCT typemap_FetchRequest)))]
default_Fetch_args :: Fetch_args
default_Fetch_args = Fetch_args{
  fetch_args_request = default_FetchRequest}
data Fetch_result = Fetch_result  { fetch_result_success :: FetchResult
  , fetch_result_ex :: P.Maybe Services_Types.ServicesException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Fetch_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` fetch_result_success record   `H.hashWithSalt` fetch_result_ex record  
instance QC.Arbitrary Fetch_result where 
  arbitrary = M.liftM Fetch_result (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_Fetch_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_Fetch_result{fetch_result_success = fetch_result_success obj} then P.Nothing else P.Just $ default_Fetch_result{fetch_result_success = fetch_result_success obj}
    , if obj == default_Fetch_result{fetch_result_ex = fetch_result_ex obj} then P.Nothing else P.Just $ default_Fetch_result{fetch_result_ex = fetch_result_ex obj}
    ]
from_Fetch_result :: Fetch_result -> T.ThriftVal
from_Fetch_result record = T.TStruct $ Map.fromList 
  (let exns = M.catMaybes [ (\_v29 -> (1, ("ex",Services_Types.from_ServicesException _v29))) <$> fetch_result_ex record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v29 -> P.Just (0, ("success",from_FetchResult _v29))) $ fetch_result_success record
    , (\_v29 -> (1, ("ex",Services_Types.from_ServicesException _v29))) <$> fetch_result_ex record
    ]
    )
write_Fetch_result :: (T.Protocol p, T.Transport t) => p t -> Fetch_result -> P.IO ()
write_Fetch_result oprot record = T.writeVal oprot $ from_Fetch_result record
encode_Fetch_result :: (T.Protocol p, T.Transport t) => p t -> Fetch_result -> LBS.ByteString
encode_Fetch_result oprot record = T.serializeVal oprot $ from_Fetch_result record
to_Fetch_result :: T.ThriftVal -> Fetch_result
to_Fetch_result (T.TStruct fields) = Fetch_result{
  fetch_result_success = P.maybe (fetch_result_success default_Fetch_result) (\(_,_val31) -> (case _val31 of {T.TStruct _val32 -> (to_FetchResult (T.TStruct _val32)); _ -> P.error "wrong type"})) (Map.lookup (0) fields),
  fetch_result_ex = P.maybe (P.Nothing) (\(_,_val31) -> P.Just (case _val31 of {T.TStruct _val33 -> (Services_Types.to_ServicesException (T.TStruct _val33)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_Fetch_result _ = P.error "not a struct"
read_Fetch_result :: (T.Transport t, T.Protocol p) => p t -> P.IO Fetch_result
read_Fetch_result iprot = to_Fetch_result <$> T.readVal iprot (T.T_STRUCT typemap_Fetch_result)
decode_Fetch_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Fetch_result
decode_Fetch_result iprot bs = to_Fetch_result $ T.deserializeVal iprot (T.T_STRUCT typemap_Fetch_result) bs
typemap_Fetch_result :: T.TypeMap
typemap_Fetch_result = Map.fromList [(0,("success",(T.T_STRUCT typemap_FetchResult))),(1,("ex",(T.T_STRUCT Services_Types.typemap_ServicesException)))]
default_Fetch_result :: Fetch_result
default_Fetch_result = Fetch_result{
  fetch_result_success = default_FetchResult,
  fetch_result_ex = P.Nothing}
data GetCommunicationIDs_args = GetCommunicationIDs_args  { getCommunicationIDs_args_offset :: I.Int64
  , getCommunicationIDs_args_count :: I.Int64
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetCommunicationIDs_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` getCommunicationIDs_args_offset record   `H.hashWithSalt` getCommunicationIDs_args_count record  
instance QC.Arbitrary GetCommunicationIDs_args where 
  arbitrary = M.liftM GetCommunicationIDs_args (QC.arbitrary)
          `M.ap`(QC.arbitrary)
  shrink obj | obj == default_GetCommunicationIDs_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetCommunicationIDs_args{getCommunicationIDs_args_offset = getCommunicationIDs_args_offset obj} then P.Nothing else P.Just $ default_GetCommunicationIDs_args{getCommunicationIDs_args_offset = getCommunicationIDs_args_offset obj}
    , if obj == default_GetCommunicationIDs_args{getCommunicationIDs_args_count = getCommunicationIDs_args_count obj} then P.Nothing else P.Just $ default_GetCommunicationIDs_args{getCommunicationIDs_args_count = getCommunicationIDs_args_count obj}
    ]
from_GetCommunicationIDs_args :: GetCommunicationIDs_args -> T.ThriftVal
from_GetCommunicationIDs_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v36 -> P.Just (1, ("offset",T.TI64 _v36))) $ getCommunicationIDs_args_offset record
  , (\_v36 -> P.Just (2, ("count",T.TI64 _v36))) $ getCommunicationIDs_args_count record
  ]
write_GetCommunicationIDs_args :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationIDs_args -> P.IO ()
write_GetCommunicationIDs_args oprot record = T.writeVal oprot $ from_GetCommunicationIDs_args record
encode_GetCommunicationIDs_args :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationIDs_args -> LBS.ByteString
encode_GetCommunicationIDs_args oprot record = T.serializeVal oprot $ from_GetCommunicationIDs_args record
to_GetCommunicationIDs_args :: T.ThriftVal -> GetCommunicationIDs_args
to_GetCommunicationIDs_args (T.TStruct fields) = GetCommunicationIDs_args{
  getCommunicationIDs_args_offset = P.maybe (getCommunicationIDs_args_offset default_GetCommunicationIDs_args) (\(_,_val38) -> (case _val38 of {T.TI64 _val39 -> _val39; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  getCommunicationIDs_args_count = P.maybe (getCommunicationIDs_args_count default_GetCommunicationIDs_args) (\(_,_val38) -> (case _val38 of {T.TI64 _val40 -> _val40; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_GetCommunicationIDs_args _ = P.error "not a struct"
read_GetCommunicationIDs_args :: (T.Transport t, T.Protocol p) => p t -> P.IO GetCommunicationIDs_args
read_GetCommunicationIDs_args iprot = to_GetCommunicationIDs_args <$> T.readVal iprot (T.T_STRUCT typemap_GetCommunicationIDs_args)
decode_GetCommunicationIDs_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> GetCommunicationIDs_args
decode_GetCommunicationIDs_args iprot bs = to_GetCommunicationIDs_args $ T.deserializeVal iprot (T.T_STRUCT typemap_GetCommunicationIDs_args) bs
typemap_GetCommunicationIDs_args :: T.TypeMap
typemap_GetCommunicationIDs_args = Map.fromList [(1,("offset",T.T_I64)),(2,("count",T.T_I64))]
default_GetCommunicationIDs_args :: GetCommunicationIDs_args
default_GetCommunicationIDs_args = GetCommunicationIDs_args{
  getCommunicationIDs_args_offset = 0,
  getCommunicationIDs_args_count = 0}
data GetCommunicationIDs_result = GetCommunicationIDs_result  { getCommunicationIDs_result_success :: (Vector.Vector LT.Text)
  , getCommunicationIDs_result_ex :: P.Maybe Services_Types.NotImplementedException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetCommunicationIDs_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` getCommunicationIDs_result_success record   `H.hashWithSalt` getCommunicationIDs_result_ex record  
instance QC.Arbitrary GetCommunicationIDs_result where 
  arbitrary = M.liftM GetCommunicationIDs_result (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_GetCommunicationIDs_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetCommunicationIDs_result{getCommunicationIDs_result_success = getCommunicationIDs_result_success obj} then P.Nothing else P.Just $ default_GetCommunicationIDs_result{getCommunicationIDs_result_success = getCommunicationIDs_result_success obj}
    , if obj == default_GetCommunicationIDs_result{getCommunicationIDs_result_ex = getCommunicationIDs_result_ex obj} then P.Nothing else P.Just $ default_GetCommunicationIDs_result{getCommunicationIDs_result_ex = getCommunicationIDs_result_ex obj}
    ]
from_GetCommunicationIDs_result :: GetCommunicationIDs_result -> T.ThriftVal
from_GetCommunicationIDs_result record = T.TStruct $ Map.fromList 
  (let exns = M.catMaybes [ (\_v43 -> (1, ("ex",Services_Types.from_NotImplementedException _v43))) <$> getCommunicationIDs_result_ex record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v43 -> P.Just (0, ("success",T.TList T.T_STRING $ P.map (\_v45 -> T.TString $ E.encodeUtf8 _v45) $ Vector.toList _v43))) $ getCommunicationIDs_result_success record
    , (\_v43 -> (1, ("ex",Services_Types.from_NotImplementedException _v43))) <$> getCommunicationIDs_result_ex record
    ]
    )
write_GetCommunicationIDs_result :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationIDs_result -> P.IO ()
write_GetCommunicationIDs_result oprot record = T.writeVal oprot $ from_GetCommunicationIDs_result record
encode_GetCommunicationIDs_result :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationIDs_result -> LBS.ByteString
encode_GetCommunicationIDs_result oprot record = T.serializeVal oprot $ from_GetCommunicationIDs_result record
to_GetCommunicationIDs_result :: T.ThriftVal -> GetCommunicationIDs_result
to_GetCommunicationIDs_result (T.TStruct fields) = GetCommunicationIDs_result{
  getCommunicationIDs_result_success = P.maybe (getCommunicationIDs_result_success default_GetCommunicationIDs_result) (\(_,_val47) -> (case _val47 of {T.TList _ _val48 -> (Vector.fromList $ P.map (\_v49 -> (case _v49 of {T.TString _val50 -> E.decodeUtf8 _val50; _ -> P.error "wrong type"})) _val48); _ -> P.error "wrong type"})) (Map.lookup (0) fields),
  getCommunicationIDs_result_ex = P.maybe (P.Nothing) (\(_,_val47) -> P.Just (case _val47 of {T.TStruct _val51 -> (Services_Types.to_NotImplementedException (T.TStruct _val51)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_GetCommunicationIDs_result _ = P.error "not a struct"
read_GetCommunicationIDs_result :: (T.Transport t, T.Protocol p) => p t -> P.IO GetCommunicationIDs_result
read_GetCommunicationIDs_result iprot = to_GetCommunicationIDs_result <$> T.readVal iprot (T.T_STRUCT typemap_GetCommunicationIDs_result)
decode_GetCommunicationIDs_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> GetCommunicationIDs_result
decode_GetCommunicationIDs_result iprot bs = to_GetCommunicationIDs_result $ T.deserializeVal iprot (T.T_STRUCT typemap_GetCommunicationIDs_result) bs
typemap_GetCommunicationIDs_result :: T.TypeMap
typemap_GetCommunicationIDs_result = Map.fromList [(0,("success",(T.T_LIST T.T_STRING))),(1,("ex",(T.T_STRUCT Services_Types.typemap_NotImplementedException)))]
default_GetCommunicationIDs_result :: GetCommunicationIDs_result
default_GetCommunicationIDs_result = GetCommunicationIDs_result{
  getCommunicationIDs_result_success = Vector.empty,
  getCommunicationIDs_result_ex = P.Nothing}
data GetCommunicationCount_args = GetCommunicationCount_args deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetCommunicationCount_args where
  hashWithSalt salt record = salt  
instance QC.Arbitrary GetCommunicationCount_args where 
  arbitrary = QC.elements [GetCommunicationCount_args]
from_GetCommunicationCount_args :: GetCommunicationCount_args -> T.ThriftVal
from_GetCommunicationCount_args record = T.TStruct $ Map.fromList $ M.catMaybes
  []
write_GetCommunicationCount_args :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationCount_args -> P.IO ()
write_GetCommunicationCount_args oprot record = T.writeVal oprot $ from_GetCommunicationCount_args record
encode_GetCommunicationCount_args :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationCount_args -> LBS.ByteString
encode_GetCommunicationCount_args oprot record = T.serializeVal oprot $ from_GetCommunicationCount_args record
to_GetCommunicationCount_args :: T.ThriftVal -> GetCommunicationCount_args
to_GetCommunicationCount_args (T.TStruct fields) = GetCommunicationCount_args{

  }
to_GetCommunicationCount_args _ = P.error "not a struct"
read_GetCommunicationCount_args :: (T.Transport t, T.Protocol p) => p t -> P.IO GetCommunicationCount_args
read_GetCommunicationCount_args iprot = to_GetCommunicationCount_args <$> T.readVal iprot (T.T_STRUCT typemap_GetCommunicationCount_args)
decode_GetCommunicationCount_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> GetCommunicationCount_args
decode_GetCommunicationCount_args iprot bs = to_GetCommunicationCount_args $ T.deserializeVal iprot (T.T_STRUCT typemap_GetCommunicationCount_args) bs
typemap_GetCommunicationCount_args :: T.TypeMap
typemap_GetCommunicationCount_args = Map.fromList []
default_GetCommunicationCount_args :: GetCommunicationCount_args
default_GetCommunicationCount_args = GetCommunicationCount_args{
}
data GetCommunicationCount_result = GetCommunicationCount_result  { getCommunicationCount_result_success :: I.Int64
  , getCommunicationCount_result_ex :: P.Maybe Services_Types.NotImplementedException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetCommunicationCount_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` getCommunicationCount_result_success record   `H.hashWithSalt` getCommunicationCount_result_ex record  
instance QC.Arbitrary GetCommunicationCount_result where 
  arbitrary = M.liftM GetCommunicationCount_result (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_GetCommunicationCount_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetCommunicationCount_result{getCommunicationCount_result_success = getCommunicationCount_result_success obj} then P.Nothing else P.Just $ default_GetCommunicationCount_result{getCommunicationCount_result_success = getCommunicationCount_result_success obj}
    , if obj == default_GetCommunicationCount_result{getCommunicationCount_result_ex = getCommunicationCount_result_ex obj} then P.Nothing else P.Just $ default_GetCommunicationCount_result{getCommunicationCount_result_ex = getCommunicationCount_result_ex obj}
    ]
from_GetCommunicationCount_result :: GetCommunicationCount_result -> T.ThriftVal
from_GetCommunicationCount_result record = T.TStruct $ Map.fromList 
  (let exns = M.catMaybes [ (\_v59 -> (1, ("ex",Services_Types.from_NotImplementedException _v59))) <$> getCommunicationCount_result_ex record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v59 -> P.Just (0, ("success",T.TI64 _v59))) $ getCommunicationCount_result_success record
    , (\_v59 -> (1, ("ex",Services_Types.from_NotImplementedException _v59))) <$> getCommunicationCount_result_ex record
    ]
    )
write_GetCommunicationCount_result :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationCount_result -> P.IO ()
write_GetCommunicationCount_result oprot record = T.writeVal oprot $ from_GetCommunicationCount_result record
encode_GetCommunicationCount_result :: (T.Protocol p, T.Transport t) => p t -> GetCommunicationCount_result -> LBS.ByteString
encode_GetCommunicationCount_result oprot record = T.serializeVal oprot $ from_GetCommunicationCount_result record
to_GetCommunicationCount_result :: T.ThriftVal -> GetCommunicationCount_result
to_GetCommunicationCount_result (T.TStruct fields) = GetCommunicationCount_result{
  getCommunicationCount_result_success = P.maybe (getCommunicationCount_result_success default_GetCommunicationCount_result) (\(_,_val61) -> (case _val61 of {T.TI64 _val62 -> _val62; _ -> P.error "wrong type"})) (Map.lookup (0) fields),
  getCommunicationCount_result_ex = P.maybe (P.Nothing) (\(_,_val61) -> P.Just (case _val61 of {T.TStruct _val63 -> (Services_Types.to_NotImplementedException (T.TStruct _val63)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_GetCommunicationCount_result _ = P.error "not a struct"
read_GetCommunicationCount_result :: (T.Transport t, T.Protocol p) => p t -> P.IO GetCommunicationCount_result
read_GetCommunicationCount_result iprot = to_GetCommunicationCount_result <$> T.readVal iprot (T.T_STRUCT typemap_GetCommunicationCount_result)
decode_GetCommunicationCount_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> GetCommunicationCount_result
decode_GetCommunicationCount_result iprot bs = to_GetCommunicationCount_result $ T.deserializeVal iprot (T.T_STRUCT typemap_GetCommunicationCount_result) bs
typemap_GetCommunicationCount_result :: T.TypeMap
typemap_GetCommunicationCount_result = Map.fromList [(0,("success",T.T_I64)),(1,("ex",(T.T_STRUCT Services_Types.typemap_NotImplementedException)))]
default_GetCommunicationCount_result :: GetCommunicationCount_result
default_GetCommunicationCount_result = GetCommunicationCount_result{
  getCommunicationCount_result_success = 0,
  getCommunicationCount_result_ex = P.Nothing}
process_fetch (seqid, iprot, oprot, handler) = do
  args <- read_Fetch_args iprot
  (X.catch
    (X.catch
      (do
        val <- Iface.fetch handler (fetch_args_request args)
        let res = default_Fetch_result{fetch_result_success = val}
        T.writeMessageBegin oprot ("fetch", T.M_REPLY, seqid)
        write_Fetch_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot))
      (\e  -> do
        let res = default_Fetch_result{fetch_result_ex = P.Just e}
        T.writeMessageBegin oprot ("fetch", T.M_REPLY, seqid)
        write_Fetch_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot)))
    ((\_ -> do
      T.writeMessageBegin oprot ("fetch", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
process_getCommunicationIDs (seqid, iprot, oprot, handler) = do
  args <- read_GetCommunicationIDs_args iprot
  (X.catch
    (X.catch
      (do
        val <- Iface.getCommunicationIDs handler (getCommunicationIDs_args_offset args) (getCommunicationIDs_args_count args)
        let res = default_GetCommunicationIDs_result{getCommunicationIDs_result_success = val}
        T.writeMessageBegin oprot ("getCommunicationIDs", T.M_REPLY, seqid)
        write_GetCommunicationIDs_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot))
      (\e  -> do
        let res = default_GetCommunicationIDs_result{getCommunicationIDs_result_ex = P.Just e}
        T.writeMessageBegin oprot ("getCommunicationIDs", T.M_REPLY, seqid)
        write_GetCommunicationIDs_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot)))
    ((\_ -> do
      T.writeMessageBegin oprot ("getCommunicationIDs", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
process_getCommunicationCount (seqid, iprot, oprot, handler) = do
  args <- read_GetCommunicationCount_args iprot
  (X.catch
    (X.catch
      (do
        val <- Iface.getCommunicationCount handler
        let res = default_GetCommunicationCount_result{getCommunicationCount_result_success = val}
        T.writeMessageBegin oprot ("getCommunicationCount", T.M_REPLY, seqid)
        write_GetCommunicationCount_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot))
      (\e  -> do
        let res = default_GetCommunicationCount_result{getCommunicationCount_result_ex = P.Just e}
        T.writeMessageBegin oprot ("getCommunicationCount", T.M_REPLY, seqid)
        write_GetCommunicationCount_result oprot res
        T.writeMessageEnd oprot
        T.tFlush (T.getTransport oprot)))
    ((\_ -> do
      T.writeMessageBegin oprot ("getCommunicationCount", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "fetch" -> process_fetch (seqid,iprot,oprot,handler)
  "getCommunicationIDs" -> process_getCommunicationIDs (seqid,iprot,oprot,handler)
  "getCommunicationCount" -> process_getCommunicationCount (seqid,iprot,oprot,handler)
  _ -> Service.proc_ handler (iprot,oprot) (name,typ,seqid)
process handler (iprot, oprot) = do
  (name, typ, seqid) <- T.readMessageBegin iprot
  proc_ handler (iprot,oprot) (name,typ,seqid)
  T.readMessageEnd iprot
  P.return P.True
