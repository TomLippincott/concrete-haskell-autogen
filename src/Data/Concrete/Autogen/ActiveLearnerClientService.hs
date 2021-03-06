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

module Data.Concrete.Autogen.ActiveLearnerClientService where
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
import Data.Concrete.Autogen.Communication_Types as Communication_Types


import qualified Data.Concrete.Autogen.Service as Service
import Data.Concrete.Autogen.Learn_Types as Learn_Types
import qualified Data.Concrete.Autogen.ActiveLearnerClientService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data SubmitSort_args = SubmitSort_args  { submitSort_args_sessionId :: Uuid_Types.UUID
  , submitSort_args_unitIds :: (Vector.Vector Services_Types.AnnotationUnitIdentifier)
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable SubmitSort_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` submitSort_args_sessionId record   `H.hashWithSalt` submitSort_args_unitIds record  
instance QC.Arbitrary SubmitSort_args where 
  arbitrary = M.liftM SubmitSort_args (QC.arbitrary)
          `M.ap`(QC.arbitrary)
  shrink obj | obj == default_SubmitSort_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_SubmitSort_args{submitSort_args_sessionId = submitSort_args_sessionId obj} then P.Nothing else P.Just $ default_SubmitSort_args{submitSort_args_sessionId = submitSort_args_sessionId obj}
    , if obj == default_SubmitSort_args{submitSort_args_unitIds = submitSort_args_unitIds obj} then P.Nothing else P.Just $ default_SubmitSort_args{submitSort_args_unitIds = submitSort_args_unitIds obj}
    ]
from_SubmitSort_args :: SubmitSort_args -> T.ThriftVal
from_SubmitSort_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v63 -> P.Just (1, ("sessionId",Uuid_Types.from_UUID _v63))) $ submitSort_args_sessionId record
  , (\_v63 -> P.Just (2, ("unitIds",T.TList (T.T_STRUCT Services_Types.typemap_AnnotationUnitIdentifier) $ P.map (\_v65 -> Services_Types.from_AnnotationUnitIdentifier _v65) $ Vector.toList _v63))) $ submitSort_args_unitIds record
  ]
write_SubmitSort_args :: (T.Protocol p, T.Transport t) => p t -> SubmitSort_args -> P.IO ()
write_SubmitSort_args oprot record = T.writeVal oprot $ from_SubmitSort_args record
encode_SubmitSort_args :: (T.Protocol p, T.Transport t) => p t -> SubmitSort_args -> LBS.ByteString
encode_SubmitSort_args oprot record = T.serializeVal oprot $ from_SubmitSort_args record
to_SubmitSort_args :: T.ThriftVal -> SubmitSort_args
to_SubmitSort_args (T.TStruct fields) = SubmitSort_args{
  submitSort_args_sessionId = P.maybe (submitSort_args_sessionId default_SubmitSort_args) (\(_,_val67) -> (case _val67 of {T.TStruct _val68 -> (Uuid_Types.to_UUID (T.TStruct _val68)); _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  submitSort_args_unitIds = P.maybe (submitSort_args_unitIds default_SubmitSort_args) (\(_,_val67) -> (case _val67 of {T.TList _ _val69 -> (Vector.fromList $ P.map (\_v70 -> (case _v70 of {T.TStruct _val71 -> (Services_Types.to_AnnotationUnitIdentifier (T.TStruct _val71)); _ -> P.error "wrong type"})) _val69); _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_SubmitSort_args _ = P.error "not a struct"
read_SubmitSort_args :: (T.Transport t, T.Protocol p) => p t -> P.IO SubmitSort_args
read_SubmitSort_args iprot = to_SubmitSort_args <$> T.readVal iprot (T.T_STRUCT typemap_SubmitSort_args)
decode_SubmitSort_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> SubmitSort_args
decode_SubmitSort_args iprot bs = to_SubmitSort_args $ T.deserializeVal iprot (T.T_STRUCT typemap_SubmitSort_args) bs
typemap_SubmitSort_args :: T.TypeMap
typemap_SubmitSort_args = Map.fromList [(1,("sessionId",(T.T_STRUCT Uuid_Types.typemap_UUID))),(2,("unitIds",(T.T_LIST (T.T_STRUCT Services_Types.typemap_AnnotationUnitIdentifier))))]
default_SubmitSort_args :: SubmitSort_args
default_SubmitSort_args = SubmitSort_args{
  submitSort_args_sessionId = Uuid_Types.default_UUID,
  submitSort_args_unitIds = Vector.empty}
data SubmitSort_result = SubmitSort_result deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable SubmitSort_result where
  hashWithSalt salt record = salt  
instance QC.Arbitrary SubmitSort_result where 
  arbitrary = QC.elements [SubmitSort_result]
from_SubmitSort_result :: SubmitSort_result -> T.ThriftVal
from_SubmitSort_result record = T.TStruct $ Map.fromList $ M.catMaybes
  []
write_SubmitSort_result :: (T.Protocol p, T.Transport t) => p t -> SubmitSort_result -> P.IO ()
write_SubmitSort_result oprot record = T.writeVal oprot $ from_SubmitSort_result record
encode_SubmitSort_result :: (T.Protocol p, T.Transport t) => p t -> SubmitSort_result -> LBS.ByteString
encode_SubmitSort_result oprot record = T.serializeVal oprot $ from_SubmitSort_result record
to_SubmitSort_result :: T.ThriftVal -> SubmitSort_result
to_SubmitSort_result (T.TStruct fields) = SubmitSort_result{

  }
to_SubmitSort_result _ = P.error "not a struct"
read_SubmitSort_result :: (T.Transport t, T.Protocol p) => p t -> P.IO SubmitSort_result
read_SubmitSort_result iprot = to_SubmitSort_result <$> T.readVal iprot (T.T_STRUCT typemap_SubmitSort_result)
decode_SubmitSort_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> SubmitSort_result
decode_SubmitSort_result iprot bs = to_SubmitSort_result $ T.deserializeVal iprot (T.T_STRUCT typemap_SubmitSort_result) bs
typemap_SubmitSort_result :: T.TypeMap
typemap_SubmitSort_result = Map.fromList []
default_SubmitSort_result :: SubmitSort_result
default_SubmitSort_result = SubmitSort_result{
}
process_submitSort (seqid, iprot, oprot, handler) = do
  args <- read_SubmitSort_args iprot
  (X.catch
    (do
      Iface.submitSort handler (submitSort_args_sessionId args) (submitSort_args_unitIds args)
      let res = default_SubmitSort_result
      T.writeMessageBegin oprot ("submitSort", T.M_REPLY, seqid)
      write_SubmitSort_result oprot res
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot))
    ((\_ -> do
      T.writeMessageBegin oprot ("submitSort", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "submitSort" -> process_submitSort (seqid,iprot,oprot,handler)
  _ -> Service.proc_ handler (iprot,oprot) (name,typ,seqid)
process handler (iprot, oprot) = do
  (name, typ, seqid) <- T.readMessageBegin iprot
  proc_ handler (iprot,oprot) (name,typ,seqid)
  T.readMessageEnd iprot
  P.return P.True
