-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema NutlinkAddressTicker
module BlockfrostAPI.Types.NutlinkAddressTicker where

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

-- | Defines the object schema located at @components.schemas.nutlink_address_ticker@ in the specification.
-- 
-- 
data NutlinkAddressTicker = NutlinkAddressTicker {
  -- | block_height: Block height of the record
  nutlinkAddressTickerBlockHeight :: GHC.Integer.Type.Integer
  -- | payload: Content of the ticker
  , nutlinkAddressTickerPayload :: NutlinkAddressTickerPayload'Variants
  -- | tx_hash: Hash of the transaction
  , nutlinkAddressTickerTxHash :: Data.Text.Internal.Text
  -- | tx_index: Transaction index within the block
  , nutlinkAddressTickerTxIndex :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NutlinkAddressTicker
    where toJSON obj = Data.Aeson.Types.Internal.object ("block_height" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerBlockHeight obj : "payload" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerPayload obj : "tx_hash" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerTxHash obj : "tx_index" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerTxIndex obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("block_height" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerBlockHeight obj) GHC.Base.<> (("payload" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerPayload obj) GHC.Base.<> (("tx_hash" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerTxHash obj) GHC.Base.<> ("tx_index" Data.Aeson.Types.ToJSON..= nutlinkAddressTickerTxIndex obj))))
instance Data.Aeson.Types.FromJSON.FromJSON NutlinkAddressTicker
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NutlinkAddressTicker" (\obj -> (((GHC.Base.pure NutlinkAddressTicker GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_index"))
-- | Create a new 'NutlinkAddressTicker' with all required fields.
mkNutlinkAddressTicker :: GHC.Integer.Type.Integer -- ^ 'nutlinkAddressTickerBlockHeight'
  -> NutlinkAddressTickerPayload'Variants -- ^ 'nutlinkAddressTickerPayload'
  -> Data.Text.Internal.Text -- ^ 'nutlinkAddressTickerTxHash'
  -> GHC.Integer.Type.Integer -- ^ 'nutlinkAddressTickerTxIndex'
  -> NutlinkAddressTicker
mkNutlinkAddressTicker nutlinkAddressTickerBlockHeight nutlinkAddressTickerPayload nutlinkAddressTickerTxHash nutlinkAddressTickerTxIndex = NutlinkAddressTicker{nutlinkAddressTickerBlockHeight = nutlinkAddressTickerBlockHeight,
                                                                                                                                                                 nutlinkAddressTickerPayload = nutlinkAddressTickerPayload,
                                                                                                                                                                 nutlinkAddressTickerTxHash = nutlinkAddressTickerTxHash,
                                                                                                                                                                 nutlinkAddressTickerTxIndex = nutlinkAddressTickerTxIndex}
-- | Defines the oneOf schema located at @components.schemas.nutlink_address_ticker.properties.payload.anyOf@ in the specification.
-- 
-- Content of the ticker
data NutlinkAddressTickerPayload'Variants =
   NutlinkAddressTickerPayload'Text Data.Text.Internal.Text
  | NutlinkAddressTickerPayload'Object Data.Aeson.Types.Internal.Object
  | NutlinkAddressTickerPayload'ListTObject ([Data.Aeson.Types.Internal.Object])
  | NutlinkAddressTickerPayload'Integer GHC.Integer.Type.Integer
  | NutlinkAddressTickerPayload'Scientific Data.Scientific.Scientific
  | NutlinkAddressTickerPayload'Bool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NutlinkAddressTickerPayload'Variants
    where toJSON (NutlinkAddressTickerPayload'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (NutlinkAddressTickerPayload'Object a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (NutlinkAddressTickerPayload'ListTObject a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (NutlinkAddressTickerPayload'Integer a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (NutlinkAddressTickerPayload'Scientific a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (NutlinkAddressTickerPayload'Bool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON NutlinkAddressTickerPayload'Variants
    where parseJSON val = case (NutlinkAddressTickerPayload'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((NutlinkAddressTickerPayload'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((NutlinkAddressTickerPayload'ListTObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((NutlinkAddressTickerPayload'Integer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((NutlinkAddressTickerPayload'Scientific Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((NutlinkAddressTickerPayload'Bool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched"))))) of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
