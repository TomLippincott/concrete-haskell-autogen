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

module Data.Concrete.Autogen.Cluster_Types where
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
import Data.Concrete.Autogen.Metadata_Types as Metadata_Types


data ClusterMember = ClusterMember  { clusterMember_communicationId :: Uuid_Types.UUID
  , clusterMember_setId :: Uuid_Types.UUID
  , clusterMember_elementId :: Uuid_Types.UUID
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable ClusterMember where
  hashWithSalt salt record = salt   `H.hashWithSalt` clusterMember_communicationId record   `H.hashWithSalt` clusterMember_setId record   `H.hashWithSalt` clusterMember_elementId record  
instance QC.Arbitrary ClusterMember where 
  arbitrary = M.liftM ClusterMember (QC.arbitrary)
          `M.ap`(QC.arbitrary)
          `M.ap`(QC.arbitrary)
  shrink obj | obj == default_ClusterMember = []
             | P.otherwise = M.catMaybes
    [ if obj == default_ClusterMember{clusterMember_communicationId = clusterMember_communicationId obj} then P.Nothing else P.Just $ default_ClusterMember{clusterMember_communicationId = clusterMember_communicationId obj}
    , if obj == default_ClusterMember{clusterMember_setId = clusterMember_setId obj} then P.Nothing else P.Just $ default_ClusterMember{clusterMember_setId = clusterMember_setId obj}
    , if obj == default_ClusterMember{clusterMember_elementId = clusterMember_elementId obj} then P.Nothing else P.Just $ default_ClusterMember{clusterMember_elementId = clusterMember_elementId obj}
    ]
from_ClusterMember :: ClusterMember -> T.ThriftVal
from_ClusterMember record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v2 -> P.Just (1, ("communicationId",Uuid_Types.from_UUID _v2))) $ clusterMember_communicationId record
  , (\_v2 -> P.Just (2, ("setId",Uuid_Types.from_UUID _v2))) $ clusterMember_setId record
  , (\_v2 -> P.Just (3, ("elementId",Uuid_Types.from_UUID _v2))) $ clusterMember_elementId record
  ]
write_ClusterMember :: (T.Protocol p, T.Transport t) => p t -> ClusterMember -> P.IO ()
write_ClusterMember oprot record = T.writeVal oprot $ from_ClusterMember record
encode_ClusterMember :: (T.Protocol p, T.Transport t) => p t -> ClusterMember -> LBS.ByteString
encode_ClusterMember oprot record = T.serializeVal oprot $ from_ClusterMember record
to_ClusterMember :: T.ThriftVal -> ClusterMember
to_ClusterMember (T.TStruct fields) = ClusterMember{
  clusterMember_communicationId = P.maybe (P.error "Missing required field: communicationId") (\(_,_val4) -> (case _val4 of {T.TStruct _val5 -> (Uuid_Types.to_UUID (T.TStruct _val5)); _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  clusterMember_setId = P.maybe (P.error "Missing required field: setId") (\(_,_val4) -> (case _val4 of {T.TStruct _val6 -> (Uuid_Types.to_UUID (T.TStruct _val6)); _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  clusterMember_elementId = P.maybe (P.error "Missing required field: elementId") (\(_,_val4) -> (case _val4 of {T.TStruct _val7 -> (Uuid_Types.to_UUID (T.TStruct _val7)); _ -> P.error "wrong type"})) (Map.lookup (3) fields)
  }
to_ClusterMember _ = P.error "not a struct"
read_ClusterMember :: (T.Transport t, T.Protocol p) => p t -> P.IO ClusterMember
read_ClusterMember iprot = to_ClusterMember <$> T.readVal iprot (T.T_STRUCT typemap_ClusterMember)
decode_ClusterMember :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> ClusterMember
decode_ClusterMember iprot bs = to_ClusterMember $ T.deserializeVal iprot (T.T_STRUCT typemap_ClusterMember) bs
typemap_ClusterMember :: T.TypeMap
typemap_ClusterMember = Map.fromList [(1,("communicationId",(T.T_STRUCT Uuid_Types.typemap_UUID))),(2,("setId",(T.T_STRUCT Uuid_Types.typemap_UUID))),(3,("elementId",(T.T_STRUCT Uuid_Types.typemap_UUID)))]
default_ClusterMember :: ClusterMember
default_ClusterMember = ClusterMember{
  clusterMember_communicationId = Uuid_Types.default_UUID,
  clusterMember_setId = Uuid_Types.default_UUID,
  clusterMember_elementId = Uuid_Types.default_UUID}
data Cluster = Cluster  { cluster_clusterMemberIndexList :: P.Maybe (Vector.Vector I.Int32)
  , cluster_confidenceList :: P.Maybe (Vector.Vector P.Double)
  , cluster_childIndexList :: P.Maybe (Vector.Vector I.Int32)
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Cluster where
  hashWithSalt salt record = salt   `H.hashWithSalt` cluster_clusterMemberIndexList record   `H.hashWithSalt` cluster_confidenceList record   `H.hashWithSalt` cluster_childIndexList record  
instance QC.Arbitrary Cluster where 
  arbitrary = M.liftM Cluster (M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_Cluster = []
             | P.otherwise = M.catMaybes
    [ if obj == default_Cluster{cluster_clusterMemberIndexList = cluster_clusterMemberIndexList obj} then P.Nothing else P.Just $ default_Cluster{cluster_clusterMemberIndexList = cluster_clusterMemberIndexList obj}
    , if obj == default_Cluster{cluster_confidenceList = cluster_confidenceList obj} then P.Nothing else P.Just $ default_Cluster{cluster_confidenceList = cluster_confidenceList obj}
    , if obj == default_Cluster{cluster_childIndexList = cluster_childIndexList obj} then P.Nothing else P.Just $ default_Cluster{cluster_childIndexList = cluster_childIndexList obj}
    ]
from_Cluster :: Cluster -> T.ThriftVal
from_Cluster record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v10 -> (1, ("clusterMemberIndexList",T.TList T.T_I32 $ P.map (\_v12 -> T.TI32 _v12) $ Vector.toList _v10))) <$> cluster_clusterMemberIndexList record
  , (\_v10 -> (2, ("confidenceList",T.TList T.T_DOUBLE $ P.map (\_v14 -> T.TDouble _v14) $ Vector.toList _v10))) <$> cluster_confidenceList record
  , (\_v10 -> (3, ("childIndexList",T.TList T.T_I32 $ P.map (\_v16 -> T.TI32 _v16) $ Vector.toList _v10))) <$> cluster_childIndexList record
  ]
write_Cluster :: (T.Protocol p, T.Transport t) => p t -> Cluster -> P.IO ()
write_Cluster oprot record = T.writeVal oprot $ from_Cluster record
encode_Cluster :: (T.Protocol p, T.Transport t) => p t -> Cluster -> LBS.ByteString
encode_Cluster oprot record = T.serializeVal oprot $ from_Cluster record
to_Cluster :: T.ThriftVal -> Cluster
to_Cluster (T.TStruct fields) = Cluster{
  cluster_clusterMemberIndexList = P.maybe (P.Nothing) (\(_,_val18) -> P.Just (case _val18 of {T.TList _ _val19 -> (Vector.fromList $ P.map (\_v20 -> (case _v20 of {T.TI32 _val21 -> _val21; _ -> P.error "wrong type"})) _val19); _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  cluster_confidenceList = P.maybe (P.Nothing) (\(_,_val18) -> P.Just (case _val18 of {T.TList _ _val22 -> (Vector.fromList $ P.map (\_v23 -> (case _v23 of {T.TDouble _val24 -> _val24; _ -> P.error "wrong type"})) _val22); _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  cluster_childIndexList = P.maybe (P.Nothing) (\(_,_val18) -> P.Just (case _val18 of {T.TList _ _val25 -> (Vector.fromList $ P.map (\_v26 -> (case _v26 of {T.TI32 _val27 -> _val27; _ -> P.error "wrong type"})) _val25); _ -> P.error "wrong type"})) (Map.lookup (3) fields)
  }
to_Cluster _ = P.error "not a struct"
read_Cluster :: (T.Transport t, T.Protocol p) => p t -> P.IO Cluster
read_Cluster iprot = to_Cluster <$> T.readVal iprot (T.T_STRUCT typemap_Cluster)
decode_Cluster :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Cluster
decode_Cluster iprot bs = to_Cluster $ T.deserializeVal iprot (T.T_STRUCT typemap_Cluster) bs
typemap_Cluster :: T.TypeMap
typemap_Cluster = Map.fromList [(1,("clusterMemberIndexList",(T.T_LIST T.T_I32))),(2,("confidenceList",(T.T_LIST T.T_DOUBLE))),(3,("childIndexList",(T.T_LIST T.T_I32)))]
default_Cluster :: Cluster
default_Cluster = Cluster{
  cluster_clusterMemberIndexList = P.Nothing,
  cluster_confidenceList = P.Nothing,
  cluster_childIndexList = P.Nothing}
data Clustering = Clustering  { clustering_uuid :: Uuid_Types.UUID
  , clustering_metadata :: Metadata_Types.AnnotationMetadata
  , clustering_clusterMemberList :: P.Maybe (Vector.Vector ClusterMember)
  , clustering_clusterList :: P.Maybe (Vector.Vector Cluster)
  , clustering_rootClusterIndexList :: P.Maybe (Vector.Vector I.Int32)
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable Clustering where
  hashWithSalt salt record = salt   `H.hashWithSalt` clustering_uuid record   `H.hashWithSalt` clustering_metadata record   `H.hashWithSalt` clustering_clusterMemberList record   `H.hashWithSalt` clustering_clusterList record   `H.hashWithSalt` clustering_rootClusterIndexList record  
instance QC.Arbitrary Clustering where 
  arbitrary = M.liftM Clustering (QC.arbitrary)
          `M.ap`(QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_Clustering = []
             | P.otherwise = M.catMaybes
    [ if obj == default_Clustering{clustering_uuid = clustering_uuid obj} then P.Nothing else P.Just $ default_Clustering{clustering_uuid = clustering_uuid obj}
    , if obj == default_Clustering{clustering_metadata = clustering_metadata obj} then P.Nothing else P.Just $ default_Clustering{clustering_metadata = clustering_metadata obj}
    , if obj == default_Clustering{clustering_clusterMemberList = clustering_clusterMemberList obj} then P.Nothing else P.Just $ default_Clustering{clustering_clusterMemberList = clustering_clusterMemberList obj}
    , if obj == default_Clustering{clustering_clusterList = clustering_clusterList obj} then P.Nothing else P.Just $ default_Clustering{clustering_clusterList = clustering_clusterList obj}
    , if obj == default_Clustering{clustering_rootClusterIndexList = clustering_rootClusterIndexList obj} then P.Nothing else P.Just $ default_Clustering{clustering_rootClusterIndexList = clustering_rootClusterIndexList obj}
    ]
from_Clustering :: Clustering -> T.ThriftVal
from_Clustering record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v30 -> P.Just (1, ("uuid",Uuid_Types.from_UUID _v30))) $ clustering_uuid record
  , (\_v30 -> P.Just (2, ("metadata",Metadata_Types.from_AnnotationMetadata _v30))) $ clustering_metadata record
  , (\_v30 -> (3, ("clusterMemberList",T.TList (T.T_STRUCT typemap_ClusterMember) $ P.map (\_v32 -> from_ClusterMember _v32) $ Vector.toList _v30))) <$> clustering_clusterMemberList record
  , (\_v30 -> (4, ("clusterList",T.TList (T.T_STRUCT typemap_Cluster) $ P.map (\_v34 -> from_Cluster _v34) $ Vector.toList _v30))) <$> clustering_clusterList record
  , (\_v30 -> (5, ("rootClusterIndexList",T.TList T.T_I32 $ P.map (\_v36 -> T.TI32 _v36) $ Vector.toList _v30))) <$> clustering_rootClusterIndexList record
  ]
write_Clustering :: (T.Protocol p, T.Transport t) => p t -> Clustering -> P.IO ()
write_Clustering oprot record = T.writeVal oprot $ from_Clustering record
encode_Clustering :: (T.Protocol p, T.Transport t) => p t -> Clustering -> LBS.ByteString
encode_Clustering oprot record = T.serializeVal oprot $ from_Clustering record
to_Clustering :: T.ThriftVal -> Clustering
to_Clustering (T.TStruct fields) = Clustering{
  clustering_uuid = P.maybe (P.error "Missing required field: uuid") (\(_,_val38) -> (case _val38 of {T.TStruct _val39 -> (Uuid_Types.to_UUID (T.TStruct _val39)); _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  clustering_metadata = P.maybe (P.error "Missing required field: metadata") (\(_,_val38) -> (case _val38 of {T.TStruct _val40 -> (Metadata_Types.to_AnnotationMetadata (T.TStruct _val40)); _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  clustering_clusterMemberList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val41 -> (Vector.fromList $ P.map (\_v42 -> (case _v42 of {T.TStruct _val43 -> (to_ClusterMember (T.TStruct _val43)); _ -> P.error "wrong type"})) _val41); _ -> P.error "wrong type"})) (Map.lookup (3) fields),
  clustering_clusterList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val44 -> (Vector.fromList $ P.map (\_v45 -> (case _v45 of {T.TStruct _val46 -> (to_Cluster (T.TStruct _val46)); _ -> P.error "wrong type"})) _val44); _ -> P.error "wrong type"})) (Map.lookup (4) fields),
  clustering_rootClusterIndexList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val47 -> (Vector.fromList $ P.map (\_v48 -> (case _v48 of {T.TI32 _val49 -> _val49; _ -> P.error "wrong type"})) _val47); _ -> P.error "wrong type"})) (Map.lookup (5) fields)
  }
to_Clustering _ = P.error "not a struct"
read_Clustering :: (T.Transport t, T.Protocol p) => p t -> P.IO Clustering
read_Clustering iprot = to_Clustering <$> T.readVal iprot (T.T_STRUCT typemap_Clustering)
decode_Clustering :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> Clustering
decode_Clustering iprot bs = to_Clustering $ T.deserializeVal iprot (T.T_STRUCT typemap_Clustering) bs
typemap_Clustering :: T.TypeMap
typemap_Clustering = Map.fromList [(1,("uuid",(T.T_STRUCT Uuid_Types.typemap_UUID))),(2,("metadata",(T.T_STRUCT Metadata_Types.typemap_AnnotationMetadata))),(3,("clusterMemberList",(T.T_LIST (T.T_STRUCT typemap_ClusterMember)))),(4,("clusterList",(T.T_LIST (T.T_STRUCT typemap_Cluster)))),(5,("rootClusterIndexList",(T.T_LIST T.T_I32)))]
default_Clustering :: Clustering
default_Clustering = Clustering{
  clustering_uuid = Uuid_Types.default_UUID,
  clustering_metadata = Metadata_Types.default_AnnotationMetadata,
  clustering_clusterMemberList = P.Nothing,
  clustering_clusterList = P.Nothing,
  clustering_rootClusterIndexList = P.Nothing}
