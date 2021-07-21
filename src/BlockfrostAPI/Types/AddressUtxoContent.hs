-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AddressUtxoContent
module BlockfrostAPI.Types.AddressUtxoContent where

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

-- | Defines the object schema located at @components.schemas.address_utxo_content@ in the specification.
-- 
-- 
data AddressUtxoContent = AddressUtxoContent {
  -- | amount
  addressUtxoContentAmount :: ([AddressUtxoContentAmount'])
  -- | block: Block number of the UTXO
  , addressUtxoContentBlock :: Data.Text.Internal.Text
  -- | output_index: UTXO index in the transaction
  , addressUtxoContentOutputIndex :: GHC.Integer.Type.Integer
  -- | tx_hash: Transaction hash of the UTXO
  , addressUtxoContentTxHash :: Data.Text.Internal.Text
  -- | tx_index: UTXO index in the transaction
  , addressUtxoContentTxIndex :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressUtxoContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount obj : "block" Data.Aeson.Types.ToJSON..= addressUtxoContentBlock obj : "output_index" Data.Aeson.Types.ToJSON..= addressUtxoContentOutputIndex obj : "tx_hash" Data.Aeson.Types.ToJSON..= addressUtxoContentTxHash obj : "tx_index" Data.Aeson.Types.ToJSON..= addressUtxoContentTxIndex obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount obj) GHC.Base.<> (("block" Data.Aeson.Types.ToJSON..= addressUtxoContentBlock obj) GHC.Base.<> (("output_index" Data.Aeson.Types.ToJSON..= addressUtxoContentOutputIndex obj) GHC.Base.<> (("tx_hash" Data.Aeson.Types.ToJSON..= addressUtxoContentTxHash obj) GHC.Base.<> ("tx_index" Data.Aeson.Types.ToJSON..= addressUtxoContentTxIndex obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON AddressUtxoContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressUtxoContent" (\obj -> ((((GHC.Base.pure AddressUtxoContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "output_index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_index"))
-- | Create a new 'AddressUtxoContent' with all required fields.
mkAddressUtxoContent :: [AddressUtxoContentAmount'] -- ^ 'addressUtxoContentAmount'
  -> Data.Text.Internal.Text -- ^ 'addressUtxoContentBlock'
  -> GHC.Integer.Type.Integer -- ^ 'addressUtxoContentOutputIndex'
  -> Data.Text.Internal.Text -- ^ 'addressUtxoContentTxHash'
  -> GHC.Integer.Type.Integer -- ^ 'addressUtxoContentTxIndex'
  -> AddressUtxoContent
mkAddressUtxoContent addressUtxoContentAmount addressUtxoContentBlock addressUtxoContentOutputIndex addressUtxoContentTxHash addressUtxoContentTxIndex = AddressUtxoContent{addressUtxoContentAmount = addressUtxoContentAmount,
                                                                                                                                                                            addressUtxoContentBlock = addressUtxoContentBlock,
                                                                                                                                                                            addressUtxoContentOutputIndex = addressUtxoContentOutputIndex,
                                                                                                                                                                            addressUtxoContentTxHash = addressUtxoContentTxHash,
                                                                                                                                                                            addressUtxoContentTxIndex = addressUtxoContentTxIndex}
-- | Defines the object schema located at @components.schemas.address_utxo_content.properties.amount.items@ in the specification.
-- 
-- The sum of all the UTXO per asset
data AddressUtxoContentAmount' = AddressUtxoContentAmount' {
  -- | quantity: The quantity of the unit
  addressUtxoContentAmount'Quantity :: Data.Text.Internal.Text
  -- | unit: The unit of the value
  , addressUtxoContentAmount'Unit :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressUtxoContentAmount'
    where toJSON obj = Data.Aeson.Types.Internal.object ("quantity" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount'Quantity obj : "unit" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount'Unit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("quantity" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount'Quantity obj) GHC.Base.<> ("unit" Data.Aeson.Types.ToJSON..= addressUtxoContentAmount'Unit obj))
instance Data.Aeson.Types.FromJSON.FromJSON AddressUtxoContentAmount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressUtxoContentAmount'" (\obj -> (GHC.Base.pure AddressUtxoContentAmount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit"))
-- | Create a new 'AddressUtxoContentAmount'' with all required fields.
mkAddressUtxoContentAmount' :: Data.Text.Internal.Text -- ^ 'addressUtxoContentAmount'Quantity'
  -> Data.Text.Internal.Text -- ^ 'addressUtxoContentAmount'Unit'
  -> AddressUtxoContentAmount'
mkAddressUtxoContentAmount' addressUtxoContentAmount'Quantity addressUtxoContentAmount'Unit = AddressUtxoContentAmount'{addressUtxoContentAmount'Quantity = addressUtxoContentAmount'Quantity,
                                                                                                                        addressUtxoContentAmount'Unit = addressUtxoContentAmount'Unit}
