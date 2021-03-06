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

module Data.Concrete.Autogen.Nitf_Types where
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


data NITFInfo = NITFInfo  { nITFInfo_alternateURL :: P.Maybe LT.Text
  , nITFInfo_articleAbstract :: P.Maybe LT.Text
  , nITFInfo_authorBiography :: P.Maybe LT.Text
  , nITFInfo_banner :: P.Maybe LT.Text
  , nITFInfo_biographicalCategoryList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_columnName :: P.Maybe LT.Text
  , nITFInfo_columnNumber :: P.Maybe I.Int32
  , nITFInfo_correctionDate :: P.Maybe I.Int64
  , nITFInfo_correctionText :: P.Maybe LT.Text
  , nITFInfo_credit :: P.Maybe LT.Text
  , nITFInfo_dayOfWeek :: P.Maybe LT.Text
  , nITFInfo_descriptorList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_featurePage :: P.Maybe LT.Text
  , nITFInfo_generalOnlineDescriptorList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_guid :: P.Maybe I.Int32
  , nITFInfo_kicker :: P.Maybe LT.Text
  , nITFInfo_leadParagraphList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_locationList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_nameList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_newsDesk :: P.Maybe LT.Text
  , nITFInfo_normalizedByline :: P.Maybe LT.Text
  , nITFInfo_onlineDescriptorList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_onlineHeadline :: P.Maybe LT.Text
  , nITFInfo_onlineLeadParagraph :: P.Maybe LT.Text
  , nITFInfo_onlineLocationList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_onlineOrganizationList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_onlinePeople :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_onlineSectionList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_onlineTitleList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_organizationList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_page :: P.Maybe I.Int32
  , nITFInfo_peopleList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_publicationDate :: P.Maybe I.Int64
  , nITFInfo_publicationDayOfMonth :: P.Maybe I.Int32
  , nITFInfo_publicationMonth :: P.Maybe I.Int32
  , nITFInfo_publicationYear :: P.Maybe I.Int32
  , nITFInfo_section :: P.Maybe LT.Text
  , nITFInfo_seriesName :: P.Maybe LT.Text
  , nITFInfo_slug :: P.Maybe LT.Text
  , nITFInfo_taxonomicClassifierList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_titleList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_typesOfMaterialList :: P.Maybe (Vector.Vector LT.Text)
  , nITFInfo_url :: P.Maybe LT.Text
  , nITFInfo_wordCount :: P.Maybe I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable NITFInfo where
  hashWithSalt salt record = salt   `H.hashWithSalt` nITFInfo_alternateURL record   `H.hashWithSalt` nITFInfo_articleAbstract record   `H.hashWithSalt` nITFInfo_authorBiography record   `H.hashWithSalt` nITFInfo_banner record   `H.hashWithSalt` nITFInfo_biographicalCategoryList record   `H.hashWithSalt` nITFInfo_columnName record   `H.hashWithSalt` nITFInfo_columnNumber record   `H.hashWithSalt` nITFInfo_correctionDate record   `H.hashWithSalt` nITFInfo_correctionText record   `H.hashWithSalt` nITFInfo_credit record   `H.hashWithSalt` nITFInfo_dayOfWeek record   `H.hashWithSalt` nITFInfo_descriptorList record   `H.hashWithSalt` nITFInfo_featurePage record   `H.hashWithSalt` nITFInfo_generalOnlineDescriptorList record   `H.hashWithSalt` nITFInfo_guid record   `H.hashWithSalt` nITFInfo_kicker record   `H.hashWithSalt` nITFInfo_leadParagraphList record   `H.hashWithSalt` nITFInfo_locationList record   `H.hashWithSalt` nITFInfo_nameList record   `H.hashWithSalt` nITFInfo_newsDesk record   `H.hashWithSalt` nITFInfo_normalizedByline record   `H.hashWithSalt` nITFInfo_onlineDescriptorList record   `H.hashWithSalt` nITFInfo_onlineHeadline record   `H.hashWithSalt` nITFInfo_onlineLeadParagraph record   `H.hashWithSalt` nITFInfo_onlineLocationList record   `H.hashWithSalt` nITFInfo_onlineOrganizationList record   `H.hashWithSalt` nITFInfo_onlinePeople record   `H.hashWithSalt` nITFInfo_onlineSectionList record   `H.hashWithSalt` nITFInfo_onlineTitleList record   `H.hashWithSalt` nITFInfo_organizationList record   `H.hashWithSalt` nITFInfo_page record   `H.hashWithSalt` nITFInfo_peopleList record   `H.hashWithSalt` nITFInfo_publicationDate record   `H.hashWithSalt` nITFInfo_publicationDayOfMonth record   `H.hashWithSalt` nITFInfo_publicationMonth record   `H.hashWithSalt` nITFInfo_publicationYear record   `H.hashWithSalt` nITFInfo_section record   `H.hashWithSalt` nITFInfo_seriesName record   `H.hashWithSalt` nITFInfo_slug record   `H.hashWithSalt` nITFInfo_taxonomicClassifierList record   `H.hashWithSalt` nITFInfo_titleList record   `H.hashWithSalt` nITFInfo_typesOfMaterialList record   `H.hashWithSalt` nITFInfo_url record   `H.hashWithSalt` nITFInfo_wordCount record  
instance QC.Arbitrary NITFInfo where 
  arbitrary = M.liftM NITFInfo (M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_NITFInfo = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NITFInfo{nITFInfo_alternateURL = nITFInfo_alternateURL obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_alternateURL = nITFInfo_alternateURL obj}
    , if obj == default_NITFInfo{nITFInfo_articleAbstract = nITFInfo_articleAbstract obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_articleAbstract = nITFInfo_articleAbstract obj}
    , if obj == default_NITFInfo{nITFInfo_authorBiography = nITFInfo_authorBiography obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_authorBiography = nITFInfo_authorBiography obj}
    , if obj == default_NITFInfo{nITFInfo_banner = nITFInfo_banner obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_banner = nITFInfo_banner obj}
    , if obj == default_NITFInfo{nITFInfo_biographicalCategoryList = nITFInfo_biographicalCategoryList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_biographicalCategoryList = nITFInfo_biographicalCategoryList obj}
    , if obj == default_NITFInfo{nITFInfo_columnName = nITFInfo_columnName obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_columnName = nITFInfo_columnName obj}
    , if obj == default_NITFInfo{nITFInfo_columnNumber = nITFInfo_columnNumber obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_columnNumber = nITFInfo_columnNumber obj}
    , if obj == default_NITFInfo{nITFInfo_correctionDate = nITFInfo_correctionDate obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_correctionDate = nITFInfo_correctionDate obj}
    , if obj == default_NITFInfo{nITFInfo_correctionText = nITFInfo_correctionText obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_correctionText = nITFInfo_correctionText obj}
    , if obj == default_NITFInfo{nITFInfo_credit = nITFInfo_credit obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_credit = nITFInfo_credit obj}
    , if obj == default_NITFInfo{nITFInfo_dayOfWeek = nITFInfo_dayOfWeek obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_dayOfWeek = nITFInfo_dayOfWeek obj}
    , if obj == default_NITFInfo{nITFInfo_descriptorList = nITFInfo_descriptorList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_descriptorList = nITFInfo_descriptorList obj}
    , if obj == default_NITFInfo{nITFInfo_featurePage = nITFInfo_featurePage obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_featurePage = nITFInfo_featurePage obj}
    , if obj == default_NITFInfo{nITFInfo_generalOnlineDescriptorList = nITFInfo_generalOnlineDescriptorList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_generalOnlineDescriptorList = nITFInfo_generalOnlineDescriptorList obj}
    , if obj == default_NITFInfo{nITFInfo_guid = nITFInfo_guid obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_guid = nITFInfo_guid obj}
    , if obj == default_NITFInfo{nITFInfo_kicker = nITFInfo_kicker obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_kicker = nITFInfo_kicker obj}
    , if obj == default_NITFInfo{nITFInfo_leadParagraphList = nITFInfo_leadParagraphList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_leadParagraphList = nITFInfo_leadParagraphList obj}
    , if obj == default_NITFInfo{nITFInfo_locationList = nITFInfo_locationList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_locationList = nITFInfo_locationList obj}
    , if obj == default_NITFInfo{nITFInfo_nameList = nITFInfo_nameList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_nameList = nITFInfo_nameList obj}
    , if obj == default_NITFInfo{nITFInfo_newsDesk = nITFInfo_newsDesk obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_newsDesk = nITFInfo_newsDesk obj}
    , if obj == default_NITFInfo{nITFInfo_normalizedByline = nITFInfo_normalizedByline obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_normalizedByline = nITFInfo_normalizedByline obj}
    , if obj == default_NITFInfo{nITFInfo_onlineDescriptorList = nITFInfo_onlineDescriptorList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineDescriptorList = nITFInfo_onlineDescriptorList obj}
    , if obj == default_NITFInfo{nITFInfo_onlineHeadline = nITFInfo_onlineHeadline obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineHeadline = nITFInfo_onlineHeadline obj}
    , if obj == default_NITFInfo{nITFInfo_onlineLeadParagraph = nITFInfo_onlineLeadParagraph obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineLeadParagraph = nITFInfo_onlineLeadParagraph obj}
    , if obj == default_NITFInfo{nITFInfo_onlineLocationList = nITFInfo_onlineLocationList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineLocationList = nITFInfo_onlineLocationList obj}
    , if obj == default_NITFInfo{nITFInfo_onlineOrganizationList = nITFInfo_onlineOrganizationList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineOrganizationList = nITFInfo_onlineOrganizationList obj}
    , if obj == default_NITFInfo{nITFInfo_onlinePeople = nITFInfo_onlinePeople obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlinePeople = nITFInfo_onlinePeople obj}
    , if obj == default_NITFInfo{nITFInfo_onlineSectionList = nITFInfo_onlineSectionList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineSectionList = nITFInfo_onlineSectionList obj}
    , if obj == default_NITFInfo{nITFInfo_onlineTitleList = nITFInfo_onlineTitleList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_onlineTitleList = nITFInfo_onlineTitleList obj}
    , if obj == default_NITFInfo{nITFInfo_organizationList = nITFInfo_organizationList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_organizationList = nITFInfo_organizationList obj}
    , if obj == default_NITFInfo{nITFInfo_page = nITFInfo_page obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_page = nITFInfo_page obj}
    , if obj == default_NITFInfo{nITFInfo_peopleList = nITFInfo_peopleList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_peopleList = nITFInfo_peopleList obj}
    , if obj == default_NITFInfo{nITFInfo_publicationDate = nITFInfo_publicationDate obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_publicationDate = nITFInfo_publicationDate obj}
    , if obj == default_NITFInfo{nITFInfo_publicationDayOfMonth = nITFInfo_publicationDayOfMonth obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_publicationDayOfMonth = nITFInfo_publicationDayOfMonth obj}
    , if obj == default_NITFInfo{nITFInfo_publicationMonth = nITFInfo_publicationMonth obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_publicationMonth = nITFInfo_publicationMonth obj}
    , if obj == default_NITFInfo{nITFInfo_publicationYear = nITFInfo_publicationYear obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_publicationYear = nITFInfo_publicationYear obj}
    , if obj == default_NITFInfo{nITFInfo_section = nITFInfo_section obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_section = nITFInfo_section obj}
    , if obj == default_NITFInfo{nITFInfo_seriesName = nITFInfo_seriesName obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_seriesName = nITFInfo_seriesName obj}
    , if obj == default_NITFInfo{nITFInfo_slug = nITFInfo_slug obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_slug = nITFInfo_slug obj}
    , if obj == default_NITFInfo{nITFInfo_taxonomicClassifierList = nITFInfo_taxonomicClassifierList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_taxonomicClassifierList = nITFInfo_taxonomicClassifierList obj}
    , if obj == default_NITFInfo{nITFInfo_titleList = nITFInfo_titleList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_titleList = nITFInfo_titleList obj}
    , if obj == default_NITFInfo{nITFInfo_typesOfMaterialList = nITFInfo_typesOfMaterialList obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_typesOfMaterialList = nITFInfo_typesOfMaterialList obj}
    , if obj == default_NITFInfo{nITFInfo_url = nITFInfo_url obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_url = nITFInfo_url obj}
    , if obj == default_NITFInfo{nITFInfo_wordCount = nITFInfo_wordCount obj} then P.Nothing else P.Just $ default_NITFInfo{nITFInfo_wordCount = nITFInfo_wordCount obj}
    ]
from_NITFInfo :: NITFInfo -> T.ThriftVal
from_NITFInfo record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v2 -> (1, ("alternateURL",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_alternateURL record
  , (\_v2 -> (2, ("articleAbstract",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_articleAbstract record
  , (\_v2 -> (3, ("authorBiography",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_authorBiography record
  , (\_v2 -> (4, ("banner",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_banner record
  , (\_v2 -> (5, ("biographicalCategoryList",T.TList T.T_STRING $ P.map (\_v4 -> T.TString $ E.encodeUtf8 _v4) $ Vector.toList _v2))) <$> nITFInfo_biographicalCategoryList record
  , (\_v2 -> (6, ("columnName",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_columnName record
  , (\_v2 -> (7, ("columnNumber",T.TI32 _v2))) <$> nITFInfo_columnNumber record
  , (\_v2 -> (8, ("correctionDate",T.TI64 _v2))) <$> nITFInfo_correctionDate record
  , (\_v2 -> (9, ("correctionText",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_correctionText record
  , (\_v2 -> (10, ("credit",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_credit record
  , (\_v2 -> (11, ("dayOfWeek",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_dayOfWeek record
  , (\_v2 -> (12, ("descriptorList",T.TList T.T_STRING $ P.map (\_v6 -> T.TString $ E.encodeUtf8 _v6) $ Vector.toList _v2))) <$> nITFInfo_descriptorList record
  , (\_v2 -> (13, ("featurePage",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_featurePage record
  , (\_v2 -> (14, ("generalOnlineDescriptorList",T.TList T.T_STRING $ P.map (\_v8 -> T.TString $ E.encodeUtf8 _v8) $ Vector.toList _v2))) <$> nITFInfo_generalOnlineDescriptorList record
  , (\_v2 -> (15, ("guid",T.TI32 _v2))) <$> nITFInfo_guid record
  , (\_v2 -> (16, ("kicker",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_kicker record
  , (\_v2 -> (17, ("leadParagraphList",T.TList T.T_STRING $ P.map (\_v10 -> T.TString $ E.encodeUtf8 _v10) $ Vector.toList _v2))) <$> nITFInfo_leadParagraphList record
  , (\_v2 -> (18, ("locationList",T.TList T.T_STRING $ P.map (\_v12 -> T.TString $ E.encodeUtf8 _v12) $ Vector.toList _v2))) <$> nITFInfo_locationList record
  , (\_v2 -> (19, ("nameList",T.TList T.T_STRING $ P.map (\_v14 -> T.TString $ E.encodeUtf8 _v14) $ Vector.toList _v2))) <$> nITFInfo_nameList record
  , (\_v2 -> (20, ("newsDesk",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_newsDesk record
  , (\_v2 -> (21, ("normalizedByline",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_normalizedByline record
  , (\_v2 -> (22, ("onlineDescriptorList",T.TList T.T_STRING $ P.map (\_v16 -> T.TString $ E.encodeUtf8 _v16) $ Vector.toList _v2))) <$> nITFInfo_onlineDescriptorList record
  , (\_v2 -> (23, ("onlineHeadline",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_onlineHeadline record
  , (\_v2 -> (24, ("onlineLeadParagraph",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_onlineLeadParagraph record
  , (\_v2 -> (25, ("onlineLocationList",T.TList T.T_STRING $ P.map (\_v18 -> T.TString $ E.encodeUtf8 _v18) $ Vector.toList _v2))) <$> nITFInfo_onlineLocationList record
  , (\_v2 -> (26, ("onlineOrganizationList",T.TList T.T_STRING $ P.map (\_v20 -> T.TString $ E.encodeUtf8 _v20) $ Vector.toList _v2))) <$> nITFInfo_onlineOrganizationList record
  , (\_v2 -> (27, ("onlinePeople",T.TList T.T_STRING $ P.map (\_v22 -> T.TString $ E.encodeUtf8 _v22) $ Vector.toList _v2))) <$> nITFInfo_onlinePeople record
  , (\_v2 -> (28, ("onlineSectionList",T.TList T.T_STRING $ P.map (\_v24 -> T.TString $ E.encodeUtf8 _v24) $ Vector.toList _v2))) <$> nITFInfo_onlineSectionList record
  , (\_v2 -> (29, ("onlineTitleList",T.TList T.T_STRING $ P.map (\_v26 -> T.TString $ E.encodeUtf8 _v26) $ Vector.toList _v2))) <$> nITFInfo_onlineTitleList record
  , (\_v2 -> (30, ("organizationList",T.TList T.T_STRING $ P.map (\_v28 -> T.TString $ E.encodeUtf8 _v28) $ Vector.toList _v2))) <$> nITFInfo_organizationList record
  , (\_v2 -> (31, ("page",T.TI32 _v2))) <$> nITFInfo_page record
  , (\_v2 -> (32, ("peopleList",T.TList T.T_STRING $ P.map (\_v30 -> T.TString $ E.encodeUtf8 _v30) $ Vector.toList _v2))) <$> nITFInfo_peopleList record
  , (\_v2 -> (33, ("publicationDate",T.TI64 _v2))) <$> nITFInfo_publicationDate record
  , (\_v2 -> (34, ("publicationDayOfMonth",T.TI32 _v2))) <$> nITFInfo_publicationDayOfMonth record
  , (\_v2 -> (35, ("publicationMonth",T.TI32 _v2))) <$> nITFInfo_publicationMonth record
  , (\_v2 -> (36, ("publicationYear",T.TI32 _v2))) <$> nITFInfo_publicationYear record
  , (\_v2 -> (37, ("section",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_section record
  , (\_v2 -> (38, ("seriesName",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_seriesName record
  , (\_v2 -> (39, ("slug",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_slug record
  , (\_v2 -> (40, ("taxonomicClassifierList",T.TList T.T_STRING $ P.map (\_v32 -> T.TString $ E.encodeUtf8 _v32) $ Vector.toList _v2))) <$> nITFInfo_taxonomicClassifierList record
  , (\_v2 -> (41, ("titleList",T.TList T.T_STRING $ P.map (\_v34 -> T.TString $ E.encodeUtf8 _v34) $ Vector.toList _v2))) <$> nITFInfo_titleList record
  , (\_v2 -> (42, ("typesOfMaterialList",T.TList T.T_STRING $ P.map (\_v36 -> T.TString $ E.encodeUtf8 _v36) $ Vector.toList _v2))) <$> nITFInfo_typesOfMaterialList record
  , (\_v2 -> (43, ("url",T.TString $ E.encodeUtf8 _v2))) <$> nITFInfo_url record
  , (\_v2 -> (44, ("wordCount",T.TI32 _v2))) <$> nITFInfo_wordCount record
  ]
write_NITFInfo :: (T.Protocol p, T.Transport t) => p t -> NITFInfo -> P.IO ()
write_NITFInfo oprot record = T.writeVal oprot $ from_NITFInfo record
encode_NITFInfo :: (T.Protocol p, T.Transport t) => p t -> NITFInfo -> LBS.ByteString
encode_NITFInfo oprot record = T.serializeVal oprot $ from_NITFInfo record
to_NITFInfo :: T.ThriftVal -> NITFInfo
to_NITFInfo (T.TStruct fields) = NITFInfo{
  nITFInfo_alternateURL = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val39 -> E.decodeUtf8 _val39; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  nITFInfo_articleAbstract = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val40 -> E.decodeUtf8 _val40; _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  nITFInfo_authorBiography = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val41 -> E.decodeUtf8 _val41; _ -> P.error "wrong type"})) (Map.lookup (3) fields),
  nITFInfo_banner = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val42 -> E.decodeUtf8 _val42; _ -> P.error "wrong type"})) (Map.lookup (4) fields),
  nITFInfo_biographicalCategoryList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val43 -> (Vector.fromList $ P.map (\_v44 -> (case _v44 of {T.TString _val45 -> E.decodeUtf8 _val45; _ -> P.error "wrong type"})) _val43); _ -> P.error "wrong type"})) (Map.lookup (5) fields),
  nITFInfo_columnName = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val46 -> E.decodeUtf8 _val46; _ -> P.error "wrong type"})) (Map.lookup (6) fields),
  nITFInfo_columnNumber = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val47 -> _val47; _ -> P.error "wrong type"})) (Map.lookup (7) fields),
  nITFInfo_correctionDate = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI64 _val48 -> _val48; _ -> P.error "wrong type"})) (Map.lookup (8) fields),
  nITFInfo_correctionText = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val49 -> E.decodeUtf8 _val49; _ -> P.error "wrong type"})) (Map.lookup (9) fields),
  nITFInfo_credit = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val50 -> E.decodeUtf8 _val50; _ -> P.error "wrong type"})) (Map.lookup (10) fields),
  nITFInfo_dayOfWeek = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val51 -> E.decodeUtf8 _val51; _ -> P.error "wrong type"})) (Map.lookup (11) fields),
  nITFInfo_descriptorList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val52 -> (Vector.fromList $ P.map (\_v53 -> (case _v53 of {T.TString _val54 -> E.decodeUtf8 _val54; _ -> P.error "wrong type"})) _val52); _ -> P.error "wrong type"})) (Map.lookup (12) fields),
  nITFInfo_featurePage = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val55 -> E.decodeUtf8 _val55; _ -> P.error "wrong type"})) (Map.lookup (13) fields),
  nITFInfo_generalOnlineDescriptorList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val56 -> (Vector.fromList $ P.map (\_v57 -> (case _v57 of {T.TString _val58 -> E.decodeUtf8 _val58; _ -> P.error "wrong type"})) _val56); _ -> P.error "wrong type"})) (Map.lookup (14) fields),
  nITFInfo_guid = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val59 -> _val59; _ -> P.error "wrong type"})) (Map.lookup (15) fields),
  nITFInfo_kicker = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val60 -> E.decodeUtf8 _val60; _ -> P.error "wrong type"})) (Map.lookup (16) fields),
  nITFInfo_leadParagraphList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val61 -> (Vector.fromList $ P.map (\_v62 -> (case _v62 of {T.TString _val63 -> E.decodeUtf8 _val63; _ -> P.error "wrong type"})) _val61); _ -> P.error "wrong type"})) (Map.lookup (17) fields),
  nITFInfo_locationList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val64 -> (Vector.fromList $ P.map (\_v65 -> (case _v65 of {T.TString _val66 -> E.decodeUtf8 _val66; _ -> P.error "wrong type"})) _val64); _ -> P.error "wrong type"})) (Map.lookup (18) fields),
  nITFInfo_nameList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val67 -> (Vector.fromList $ P.map (\_v68 -> (case _v68 of {T.TString _val69 -> E.decodeUtf8 _val69; _ -> P.error "wrong type"})) _val67); _ -> P.error "wrong type"})) (Map.lookup (19) fields),
  nITFInfo_newsDesk = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val70 -> E.decodeUtf8 _val70; _ -> P.error "wrong type"})) (Map.lookup (20) fields),
  nITFInfo_normalizedByline = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val71 -> E.decodeUtf8 _val71; _ -> P.error "wrong type"})) (Map.lookup (21) fields),
  nITFInfo_onlineDescriptorList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val72 -> (Vector.fromList $ P.map (\_v73 -> (case _v73 of {T.TString _val74 -> E.decodeUtf8 _val74; _ -> P.error "wrong type"})) _val72); _ -> P.error "wrong type"})) (Map.lookup (22) fields),
  nITFInfo_onlineHeadline = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val75 -> E.decodeUtf8 _val75; _ -> P.error "wrong type"})) (Map.lookup (23) fields),
  nITFInfo_onlineLeadParagraph = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val76 -> E.decodeUtf8 _val76; _ -> P.error "wrong type"})) (Map.lookup (24) fields),
  nITFInfo_onlineLocationList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val77 -> (Vector.fromList $ P.map (\_v78 -> (case _v78 of {T.TString _val79 -> E.decodeUtf8 _val79; _ -> P.error "wrong type"})) _val77); _ -> P.error "wrong type"})) (Map.lookup (25) fields),
  nITFInfo_onlineOrganizationList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val80 -> (Vector.fromList $ P.map (\_v81 -> (case _v81 of {T.TString _val82 -> E.decodeUtf8 _val82; _ -> P.error "wrong type"})) _val80); _ -> P.error "wrong type"})) (Map.lookup (26) fields),
  nITFInfo_onlinePeople = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val83 -> (Vector.fromList $ P.map (\_v84 -> (case _v84 of {T.TString _val85 -> E.decodeUtf8 _val85; _ -> P.error "wrong type"})) _val83); _ -> P.error "wrong type"})) (Map.lookup (27) fields),
  nITFInfo_onlineSectionList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val86 -> (Vector.fromList $ P.map (\_v87 -> (case _v87 of {T.TString _val88 -> E.decodeUtf8 _val88; _ -> P.error "wrong type"})) _val86); _ -> P.error "wrong type"})) (Map.lookup (28) fields),
  nITFInfo_onlineTitleList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val89 -> (Vector.fromList $ P.map (\_v90 -> (case _v90 of {T.TString _val91 -> E.decodeUtf8 _val91; _ -> P.error "wrong type"})) _val89); _ -> P.error "wrong type"})) (Map.lookup (29) fields),
  nITFInfo_organizationList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val92 -> (Vector.fromList $ P.map (\_v93 -> (case _v93 of {T.TString _val94 -> E.decodeUtf8 _val94; _ -> P.error "wrong type"})) _val92); _ -> P.error "wrong type"})) (Map.lookup (30) fields),
  nITFInfo_page = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val95 -> _val95; _ -> P.error "wrong type"})) (Map.lookup (31) fields),
  nITFInfo_peopleList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val96 -> (Vector.fromList $ P.map (\_v97 -> (case _v97 of {T.TString _val98 -> E.decodeUtf8 _val98; _ -> P.error "wrong type"})) _val96); _ -> P.error "wrong type"})) (Map.lookup (32) fields),
  nITFInfo_publicationDate = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI64 _val99 -> _val99; _ -> P.error "wrong type"})) (Map.lookup (33) fields),
  nITFInfo_publicationDayOfMonth = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val100 -> _val100; _ -> P.error "wrong type"})) (Map.lookup (34) fields),
  nITFInfo_publicationMonth = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val101 -> _val101; _ -> P.error "wrong type"})) (Map.lookup (35) fields),
  nITFInfo_publicationYear = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val102 -> _val102; _ -> P.error "wrong type"})) (Map.lookup (36) fields),
  nITFInfo_section = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val103 -> E.decodeUtf8 _val103; _ -> P.error "wrong type"})) (Map.lookup (37) fields),
  nITFInfo_seriesName = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val104 -> E.decodeUtf8 _val104; _ -> P.error "wrong type"})) (Map.lookup (38) fields),
  nITFInfo_slug = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val105 -> E.decodeUtf8 _val105; _ -> P.error "wrong type"})) (Map.lookup (39) fields),
  nITFInfo_taxonomicClassifierList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val106 -> (Vector.fromList $ P.map (\_v107 -> (case _v107 of {T.TString _val108 -> E.decodeUtf8 _val108; _ -> P.error "wrong type"})) _val106); _ -> P.error "wrong type"})) (Map.lookup (40) fields),
  nITFInfo_titleList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val109 -> (Vector.fromList $ P.map (\_v110 -> (case _v110 of {T.TString _val111 -> E.decodeUtf8 _val111; _ -> P.error "wrong type"})) _val109); _ -> P.error "wrong type"})) (Map.lookup (41) fields),
  nITFInfo_typesOfMaterialList = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TList _ _val112 -> (Vector.fromList $ P.map (\_v113 -> (case _v113 of {T.TString _val114 -> E.decodeUtf8 _val114; _ -> P.error "wrong type"})) _val112); _ -> P.error "wrong type"})) (Map.lookup (42) fields),
  nITFInfo_url = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TString _val115 -> E.decodeUtf8 _val115; _ -> P.error "wrong type"})) (Map.lookup (43) fields),
  nITFInfo_wordCount = P.maybe (P.Nothing) (\(_,_val38) -> P.Just (case _val38 of {T.TI32 _val116 -> _val116; _ -> P.error "wrong type"})) (Map.lookup (44) fields)
  }
to_NITFInfo _ = P.error "not a struct"
read_NITFInfo :: (T.Transport t, T.Protocol p) => p t -> P.IO NITFInfo
read_NITFInfo iprot = to_NITFInfo <$> T.readVal iprot (T.T_STRUCT typemap_NITFInfo)
decode_NITFInfo :: (T.Protocol p, T.Transport t) => p t -> LBS.ByteString -> NITFInfo
decode_NITFInfo iprot bs = to_NITFInfo $ T.deserializeVal iprot (T.T_STRUCT typemap_NITFInfo) bs
typemap_NITFInfo :: T.TypeMap
typemap_NITFInfo = Map.fromList [(1,("alternateURL",T.T_STRING)),(2,("articleAbstract",T.T_STRING)),(3,("authorBiography",T.T_STRING)),(4,("banner",T.T_STRING)),(5,("biographicalCategoryList",(T.T_LIST T.T_STRING))),(6,("columnName",T.T_STRING)),(7,("columnNumber",T.T_I32)),(8,("correctionDate",T.T_I64)),(9,("correctionText",T.T_STRING)),(10,("credit",T.T_STRING)),(11,("dayOfWeek",T.T_STRING)),(12,("descriptorList",(T.T_LIST T.T_STRING))),(13,("featurePage",T.T_STRING)),(14,("generalOnlineDescriptorList",(T.T_LIST T.T_STRING))),(15,("guid",T.T_I32)),(16,("kicker",T.T_STRING)),(17,("leadParagraphList",(T.T_LIST T.T_STRING))),(18,("locationList",(T.T_LIST T.T_STRING))),(19,("nameList",(T.T_LIST T.T_STRING))),(20,("newsDesk",T.T_STRING)),(21,("normalizedByline",T.T_STRING)),(22,("onlineDescriptorList",(T.T_LIST T.T_STRING))),(23,("onlineHeadline",T.T_STRING)),(24,("onlineLeadParagraph",T.T_STRING)),(25,("onlineLocationList",(T.T_LIST T.T_STRING))),(26,("onlineOrganizationList",(T.T_LIST T.T_STRING))),(27,("onlinePeople",(T.T_LIST T.T_STRING))),(28,("onlineSectionList",(T.T_LIST T.T_STRING))),(29,("onlineTitleList",(T.T_LIST T.T_STRING))),(30,("organizationList",(T.T_LIST T.T_STRING))),(31,("page",T.T_I32)),(32,("peopleList",(T.T_LIST T.T_STRING))),(33,("publicationDate",T.T_I64)),(34,("publicationDayOfMonth",T.T_I32)),(35,("publicationMonth",T.T_I32)),(36,("publicationYear",T.T_I32)),(37,("section",T.T_STRING)),(38,("seriesName",T.T_STRING)),(39,("slug",T.T_STRING)),(40,("taxonomicClassifierList",(T.T_LIST T.T_STRING))),(41,("titleList",(T.T_LIST T.T_STRING))),(42,("typesOfMaterialList",(T.T_LIST T.T_STRING))),(43,("url",T.T_STRING)),(44,("wordCount",T.T_I32))]
default_NITFInfo :: NITFInfo
default_NITFInfo = NITFInfo{
  nITFInfo_alternateURL = P.Nothing,
  nITFInfo_articleAbstract = P.Nothing,
  nITFInfo_authorBiography = P.Nothing,
  nITFInfo_banner = P.Nothing,
  nITFInfo_biographicalCategoryList = P.Nothing,
  nITFInfo_columnName = P.Nothing,
  nITFInfo_columnNumber = P.Nothing,
  nITFInfo_correctionDate = P.Nothing,
  nITFInfo_correctionText = P.Nothing,
  nITFInfo_credit = P.Nothing,
  nITFInfo_dayOfWeek = P.Nothing,
  nITFInfo_descriptorList = P.Nothing,
  nITFInfo_featurePage = P.Nothing,
  nITFInfo_generalOnlineDescriptorList = P.Nothing,
  nITFInfo_guid = P.Nothing,
  nITFInfo_kicker = P.Nothing,
  nITFInfo_leadParagraphList = P.Nothing,
  nITFInfo_locationList = P.Nothing,
  nITFInfo_nameList = P.Nothing,
  nITFInfo_newsDesk = P.Nothing,
  nITFInfo_normalizedByline = P.Nothing,
  nITFInfo_onlineDescriptorList = P.Nothing,
  nITFInfo_onlineHeadline = P.Nothing,
  nITFInfo_onlineLeadParagraph = P.Nothing,
  nITFInfo_onlineLocationList = P.Nothing,
  nITFInfo_onlineOrganizationList = P.Nothing,
  nITFInfo_onlinePeople = P.Nothing,
  nITFInfo_onlineSectionList = P.Nothing,
  nITFInfo_onlineTitleList = P.Nothing,
  nITFInfo_organizationList = P.Nothing,
  nITFInfo_page = P.Nothing,
  nITFInfo_peopleList = P.Nothing,
  nITFInfo_publicationDate = P.Nothing,
  nITFInfo_publicationDayOfMonth = P.Nothing,
  nITFInfo_publicationMonth = P.Nothing,
  nITFInfo_publicationYear = P.Nothing,
  nITFInfo_section = P.Nothing,
  nITFInfo_seriesName = P.Nothing,
  nITFInfo_slug = P.Nothing,
  nITFInfo_taxonomicClassifierList = P.Nothing,
  nITFInfo_titleList = P.Nothing,
  nITFInfo_typesOfMaterialList = P.Nothing,
  nITFInfo_url = P.Nothing,
  nITFInfo_wordCount = P.Nothing}
