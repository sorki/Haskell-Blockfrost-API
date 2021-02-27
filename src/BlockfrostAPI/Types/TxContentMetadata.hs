-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxContentMetadata
module BlockfrostAPI.Types.TxContentMetadata where

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

-- | Defines the object schema located at @components.schemas.tx_content_metadata.items@ in the specification.
-- 
-- 
data TxContentMetadata = TxContentMetadata {
  -- | json_metadata: Content of the metadata
  txContentMetadataJsonMetadata :: TxContentMetadataJsonMetadata'Variants
  -- | label: Metadata label
  , txContentMetadataLabel :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentMetadata
    where toJSON obj = Data.Aeson.Types.Internal.object ("json_metadata" Data.Aeson.Types.ToJSON..= txContentMetadataJsonMetadata obj : "label" Data.Aeson.Types.ToJSON..= txContentMetadataLabel obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("json_metadata" Data.Aeson.Types.ToJSON..= txContentMetadataJsonMetadata obj) GHC.Base.<> ("label" Data.Aeson.Types.ToJSON..= txContentMetadataLabel obj))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentMetadata
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentMetadata" (\obj -> (GHC.Base.pure TxContentMetadata GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "json_metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label"))
-- | Create a new 'TxContentMetadata' with all required fields.
mkTxContentMetadata :: TxContentMetadataJsonMetadata'Variants -- ^ 'txContentMetadataJsonMetadata'
  -> Data.Text.Internal.Text -- ^ 'txContentMetadataLabel'
  -> TxContentMetadata
mkTxContentMetadata txContentMetadataJsonMetadata txContentMetadataLabel = TxContentMetadata{txContentMetadataJsonMetadata = txContentMetadataJsonMetadata,
                                                                                             txContentMetadataLabel = txContentMetadataLabel}
-- | Defines the oneOf schema located at @components.schemas.tx_content_metadata.items.properties.json_metadata.oneOf@ in the specification.
-- 
-- Content of the metadata
data TxContentMetadataJsonMetadata'Variants =
   TxContentMetadataJsonMetadata'Text Data.Text.Internal.Text
  | TxContentMetadataJsonMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentMetadataJsonMetadata'Variants
    where toJSON (TxContentMetadataJsonMetadata'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (TxContentMetadataJsonMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON TxContentMetadataJsonMetadata'Variants
    where parseJSON val = case (TxContentMetadataJsonMetadata'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TxContentMetadataJsonMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines an alias for the schema located at @components.schemas.tx_content_metadata@ in the specification.
-- 
-- 
-- XXX: collision
-- type TxContentMetadata = [TxContentMetadata]
type TxContentMetadata' = [TxContentMetadata]
