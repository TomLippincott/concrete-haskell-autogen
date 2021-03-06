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

module Data.Concrete.Autogen.Service where
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


import Data.Concrete.Autogen.Services_Types as Services_Types
import qualified Data.Concrete.Autogen.Service_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data About_args = About_args deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable About_args where
  hashWithSalt salt record = salt  
instance QC.Arbitrary About_args where 
  arbitrary = QC.elements [About_args]
from_About_args :: About_args -> T.ThriftVal
from_About_args record = T.TStruct $ Map.fromList $ M.catMaybes
  []
write_About_args :: (T.Protocol p, T.Transport t) => p t -> About_args -> P.IO ()
write_About_args oprot record = T.writeVal oprot $ from_About_args record
encode_About_args :: (T.Protocol p, T.Transport t) => p t -> About_args -> LBS.ByteString
encode_About_args oprot record = T.serializeVal oprot $ from_About_args record
to_About_args :: T.ThriftVal -> About_args
to_About_args (T.TStruct fields) = About_args{

  }
to_About_args _ = P.error "not a struct"
read_About_args :: (T.Transport t, T.Protocol p) => p t -> P.IO About_args
read_About_args iprot = to_About_args <$> T.readVal iprot (T.T_STRUCT typemap_About_args)
decode_About_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> About_args
decode_About_args iprot bs = to_About_args $ T.deserializeVal iprot (T.T_STRUCT typemap_About_args) bs
typemap_About_args :: T.TypeMap
typemap_About_args = Map.fromList []
default_About_args :: About_args
default_About_args = About_args{
}
data About_result = About_result  { about_result_success :: ServiceInfo
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable About_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` about_result_success record  
instance QC.Arbitrary About_result where 
  arbitrary = M.liftM About_result (QC.arbitrary)
  shrink obj | obj == default_About_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_About_result{about_result_success = about_result_success obj} then P.Nothing else P.Just $ default_About_result{about_result_success = about_result_success obj}
    ]
from_About_result :: About_result -> T.ThriftVal
from_About_result record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v43 -> P.Just (0, ("success",from_ServiceInfo _v43))) $ about_result_success record
  ]
write_About_result :: (T.Protocol p, T.Transport t) => p t -> About_result -> P.IO ()
write_About_result oprot record = T.writeVal oprot $ from_About_result record
encode_About_result :: (T.Protocol p, T.Transport t) => p t -> About_result -> LBS.ByteString
encode_About_result oprot record = T.serializeVal oprot $ from_About_result record
to_About_result :: T.ThriftVal -> About_result
to_About_result (T.TStruct fields) = About_result{
  about_result_success = P.maybe (about_result_success default_About_result) (\(_,_val45) -> (case _val45 of {T.TStruct _val46 -> (to_ServiceInfo (T.TStruct _val46)); _ -> P.error "wrong type"})) (Map.lookup (0) fields)
  }
to_About_result _ = P.error "not a struct"
read_About_result :: (T.Transport t, T.Protocol p) => p t -> P.IO About_result
read_About_result iprot = to_About_result <$> T.readVal iprot (T.T_STRUCT typemap_About_result)
decode_About_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> About_result
decode_About_result iprot bs = to_About_result $ T.deserializeVal iprot (T.T_STRUCT typemap_About_result) bs
typemap_About_result :: T.TypeMap
typemap_About_result = Map.fromList [(0,("success",(T.T_STRUCT typemap_ServiceInfo)))]
default_About_result :: About_result
default_About_result = About_result{
  about_result_success = default_ServiceInfo}
data Alive_args = Alive_args deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Alive_args where
  hashWithSalt salt record = salt  
instance QC.Arbitrary Alive_args where 
  arbitrary = QC.elements [Alive_args]
from_Alive_args :: Alive_args -> T.ThriftVal
from_Alive_args record = T.TStruct $ Map.fromList $ M.catMaybes
  []
write_Alive_args :: (T.Protocol p, T.Transport t) => p t -> Alive_args -> P.IO ()
write_Alive_args oprot record = T.writeVal oprot $ from_Alive_args record
encode_Alive_args :: (T.Protocol p, T.Transport t) => p t -> Alive_args -> LBS.ByteString
encode_Alive_args oprot record = T.serializeVal oprot $ from_Alive_args record
to_Alive_args :: T.ThriftVal -> Alive_args
to_Alive_args (T.TStruct fields) = Alive_args{

  }
to_Alive_args _ = P.error "not a struct"
read_Alive_args :: (T.Transport t, T.Protocol p) => p t -> P.IO Alive_args
read_Alive_args iprot = to_Alive_args <$> T.readVal iprot (T.T_STRUCT typemap_Alive_args)
decode_Alive_args :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Alive_args
decode_Alive_args iprot bs = to_Alive_args $ T.deserializeVal iprot (T.T_STRUCT typemap_Alive_args) bs
typemap_Alive_args :: T.TypeMap
typemap_Alive_args = Map.fromList []
default_Alive_args :: Alive_args
default_Alive_args = Alive_args{
}
data Alive_result = Alive_result  { alive_result_success :: P.Bool
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Alive_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` alive_result_success record  
instance QC.Arbitrary Alive_result where 
  arbitrary = M.liftM Alive_result (QC.arbitrary)
  shrink obj | obj == default_Alive_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_Alive_result{alive_result_success = alive_result_success obj} then P.Nothing else P.Just $ default_Alive_result{alive_result_success = alive_result_success obj}
    ]
from_Alive_result :: Alive_result -> T.ThriftVal
from_Alive_result record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v54 -> P.Just (0, ("success",T.TBool _v54))) $ alive_result_success record
  ]
write_Alive_result :: (T.Protocol p, T.Transport t) => p t -> Alive_result -> P.IO ()
write_Alive_result oprot record = T.writeVal oprot $ from_Alive_result record
encode_Alive_result :: (T.Protocol p, T.Transport t) => p t -> Alive_result -> LBS.ByteString
encode_Alive_result oprot record = T.serializeVal oprot $ from_Alive_result record
to_Alive_result :: T.ThriftVal -> Alive_result
to_Alive_result (T.TStruct fields) = Alive_result{
  alive_result_success = P.maybe (alive_result_success default_Alive_result) (\(_,_val56) -> (case _val56 of {T.TBool _val57 -> _val57; _ -> P.error "wrong type"})) (Map.lookup (0) fields)
  }
to_Alive_result _ = P.error "not a struct"
read_Alive_result :: (T.Transport t, T.Protocol p) => p t -> P.IO Alive_result
read_Alive_result iprot = to_Alive_result <$> T.readVal iprot (T.T_STRUCT typemap_Alive_result)
decode_Alive_result :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Alive_result
decode_Alive_result iprot bs = to_Alive_result $ T.deserializeVal iprot (T.T_STRUCT typemap_Alive_result) bs
typemap_Alive_result :: T.TypeMap
typemap_Alive_result = Map.fromList [(0,("success",T.T_BOOL))]
default_Alive_result :: Alive_result
default_Alive_result = Alive_result{
  alive_result_success = P.False}
process_about (seqid, iprot, oprot, handler) = do
  args <- read_About_args iprot
  (X.catch
    (do
      val <- Iface.about handler
      let res = default_About_result{about_result_success = val}
      T.writeMessageBegin oprot ("about", T.M_REPLY, seqid)
      write_About_result oprot res
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot))
    ((\_ -> do
      T.writeMessageBegin oprot ("about", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
process_alive (seqid, iprot, oprot, handler) = do
  args <- read_Alive_args iprot
  (X.catch
    (do
      val <- Iface.alive handler
      let res = default_Alive_result{alive_result_success = val}
      T.writeMessageBegin oprot ("alive", T.M_REPLY, seqid)
      write_Alive_result oprot res
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot))
    ((\_ -> do
      T.writeMessageBegin oprot ("alive", T.M_EXCEPTION, seqid)
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")
      T.writeMessageEnd oprot
      T.tFlush (T.getTransport oprot)) :: X.SomeException -> P.IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "about" -> process_about (seqid,iprot,oprot,handler)
  "alive" -> process_alive (seqid,iprot,oprot,handler)
  _ -> do
    _ <- T.readVal iprot (T.T_STRUCT Map.empty)
    T.writeMessageBegin oprot (name,T.M_EXCEPTION,seqid)
    T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN_METHOD ("Unknown function " ++ LT.unpack name))
    T.writeMessageEnd oprot
    T.tFlush (T.getTransport oprot)
process handler (iprot, oprot) = do
  (name, typ, seqid) <- T.readMessageBegin iprot
  proc_ handler (iprot,oprot) (name,typ,seqid)
  T.readMessageEnd iprot
  P.return P.True
