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

module Data.Concrete.Autogen.Ex_Types where
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


data ConcreteThriftException = ConcreteThriftException  { concreteThriftException_message :: LT.Text
  , concreteThriftException_serEx :: P.Maybe LBS.ByteString
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance X.Exception ConcreteThriftException
instance H.Hashable ConcreteThriftException where
  hashWithSalt salt record = salt   `H.hashWithSalt` concreteThriftException_message record   `H.hashWithSalt` concreteThriftException_serEx record  
instance QC.Arbitrary ConcreteThriftException where 
  arbitrary = M.liftM ConcreteThriftException (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_ConcreteThriftException = []
             | P.otherwise = M.catMaybes
    [ if obj == default_ConcreteThriftException{concreteThriftException_message = concreteThriftException_message obj} then P.Nothing else P.Just $ default_ConcreteThriftException{concreteThriftException_message = concreteThriftException_message obj}
    , if obj == default_ConcreteThriftException{concreteThriftException_serEx = concreteThriftException_serEx obj} then P.Nothing else P.Just $ default_ConcreteThriftException{concreteThriftException_serEx = concreteThriftException_serEx obj}
    ]
from_ConcreteThriftException :: ConcreteThriftException -> T.ThriftVal
from_ConcreteThriftException record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v2 -> P.Just (1, ("message",T.TString $ E.encodeUtf8 _v2))) $ concreteThriftException_message record
  , (\_v2 -> (2, ("serEx",T.TBinary _v2))) <$> concreteThriftException_serEx record
  ]
write_ConcreteThriftException :: (T.Protocol p, T.Transport t) => p t -> ConcreteThriftException -> P.IO ()
write_ConcreteThriftException oprot record = T.writeVal oprot $ from_ConcreteThriftException record
encode_ConcreteThriftException :: (T.Protocol p, T.Transport t) => p t -> ConcreteThriftException -> LBS.ByteString
encode_ConcreteThriftException oprot record = T.serializeVal oprot $ from_ConcreteThriftException record
to_ConcreteThriftException :: T.ThriftVal -> ConcreteThriftException
to_ConcreteThriftException (T.TStruct fields) = ConcreteThriftException{
  concreteThriftException_message = P.maybe (P.error "Missing required field: message") (\(_,_val4) -> (case _val4 of {T.TString _val5 -> E.decodeUtf8 _val5; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  concreteThriftException_serEx = P.maybe (P.Nothing) (\(_,_val4) -> P.Just (case _val4 of {T.TBinary _val6 -> _val6; T.TString _val6 -> _val6; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_ConcreteThriftException _ = P.error "not a struct"
read_ConcreteThriftException :: (T.Transport t, T.Protocol p) => p t -> P.IO ConcreteThriftException
read_ConcreteThriftException iprot = to_ConcreteThriftException <$> T.readVal iprot (T.T_STRUCT typemap_ConcreteThriftException)
decode_ConcreteThriftException :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> ConcreteThriftException
decode_ConcreteThriftException iprot bs = to_ConcreteThriftException $ T.deserializeVal iprot (T.T_STRUCT typemap_ConcreteThriftException) bs
typemap_ConcreteThriftException :: T.TypeMap
typemap_ConcreteThriftException = Map.fromList [(1,("message",T.T_STRING)),(2,("serEx",T.T_BINARY))]
default_ConcreteThriftException :: ConcreteThriftException
default_ConcreteThriftException = ConcreteThriftException{
  concreteThriftException_message = "",
  concreteThriftException_serEx = P.Nothing}
