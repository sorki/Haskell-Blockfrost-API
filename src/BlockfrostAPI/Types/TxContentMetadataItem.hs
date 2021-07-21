-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxContentMetadataItem
module BlockfrostAPI.Types.TxContentMetadataItem where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified BlockfrostAPI.Common
import BlockfrostAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.tx_content_metadata_item@ in the specification.
-- 
-- 
data TxContentMetadataItem = TxContentMetadataItem {
  -- | json_metadata: Content of the metadata
  txContentMetadataItemJsonMetadata :: TxContentMetadataItemJsonMetadata'Variants
  -- | label: Metadata label
  , txContentMetadataItemLabel :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentMetadataItem
    where toJSON obj = Data.Aeson.Types.Internal.object ("json_metadata" Data.Aeson.Types.ToJSON..= txContentMetadataItemJsonMetadata obj : "label" Data.Aeson.Types.ToJSON..= txContentMetadataItemLabel obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("json_metadata" Data.Aeson.Types.ToJSON..= txContentMetadataItemJsonMetadata obj) GHC.Base.<> ("label" Data.Aeson.Types.ToJSON..= txContentMetadataItemLabel obj))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentMetadataItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentMetadataItem" (\obj -> (GHC.Base.pure TxContentMetadataItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "json_metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label"))
-- | Create a new 'TxContentMetadataItem' with all required fields.
mkTxContentMetadataItem :: TxContentMetadataItemJsonMetadata'Variants -- ^ 'txContentMetadataItemJsonMetadata'
  -> Data.Text.Internal.Text -- ^ 'txContentMetadataItemLabel'
  -> TxContentMetadataItem
mkTxContentMetadataItem txContentMetadataItemJsonMetadata txContentMetadataItemLabel = TxContentMetadataItem{txContentMetadataItemJsonMetadata = txContentMetadataItemJsonMetadata,
                                                                                                             txContentMetadataItemLabel = txContentMetadataItemLabel}
-- | Defines the oneOf schema located at @components.schemas.tx_content_metadata_item.properties.json_metadata.oneOf@ in the specification.
-- 
-- Content of the metadata
data TxContentMetadataItemJsonMetadata'Variants =
   TxContentMetadataItemJsonMetadata'Text Data.Text.Internal.Text
  | TxContentMetadataItemJsonMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentMetadataItemJsonMetadata'Variants
    where toJSON (TxContentMetadataItemJsonMetadata'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (TxContentMetadataItemJsonMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON TxContentMetadataItemJsonMetadata'Variants
    where parseJSON val = case (TxContentMetadataItemJsonMetadata'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TxContentMetadataItemJsonMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a