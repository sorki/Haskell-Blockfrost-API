-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AddressContentTotal
module BlockfrostAPI.Types.AddressContentTotal where

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

-- | Defines the object schema located at @components.schemas.address_content_total@ in the specification.
-- 
-- 
data AddressContentTotal = AddressContentTotal {
  -- | address: Bech32 encoded address
  addressContentTotalAddress :: Data.Text.Internal.Text
  -- | received_sum
  , addressContentTotalReceivedSum :: ([AddressContentTotalReceivedSum'])
  -- | sent_sum
  , addressContentTotalSentSum :: ([AddressContentTotalSentSum'])
  -- | tx_count: Count of all transactions on the address
  , addressContentTotalTxCount :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressContentTotal
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= addressContentTotalAddress obj : "received_sum" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum obj : "sent_sum" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum obj : "tx_count" Data.Aeson.Types.ToJSON..= addressContentTotalTxCount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= addressContentTotalAddress obj) GHC.Base.<> (("received_sum" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum obj) GHC.Base.<> (("sent_sum" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum obj) GHC.Base.<> ("tx_count" Data.Aeson.Types.ToJSON..= addressContentTotalTxCount obj))))
instance Data.Aeson.Types.FromJSON.FromJSON AddressContentTotal
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressContentTotal" (\obj -> (((GHC.Base.pure AddressContentTotal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_sum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sent_sum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_count"))
-- | Create a new 'AddressContentTotal' with all required fields.
mkAddressContentTotal :: Data.Text.Internal.Text -- ^ 'addressContentTotalAddress'
  -> [AddressContentTotalReceivedSum'] -- ^ 'addressContentTotalReceivedSum'
  -> [AddressContentTotalSentSum'] -- ^ 'addressContentTotalSentSum'
  -> GHC.Integer.Type.Integer -- ^ 'addressContentTotalTxCount'
  -> AddressContentTotal
mkAddressContentTotal addressContentTotalAddress addressContentTotalReceivedSum addressContentTotalSentSum addressContentTotalTxCount = AddressContentTotal{addressContentTotalAddress = addressContentTotalAddress,
                                                                                                                                                            addressContentTotalReceivedSum = addressContentTotalReceivedSum,
                                                                                                                                                            addressContentTotalSentSum = addressContentTotalSentSum,
                                                                                                                                                            addressContentTotalTxCount = addressContentTotalTxCount}
-- | Defines the object schema located at @components.schemas.address_content_total.properties.received_sum.items@ in the specification.
-- 
-- The sum of all the UTXO per asset
data AddressContentTotalReceivedSum' = AddressContentTotalReceivedSum' {
  -- | quantity: The quantity of the unit
  addressContentTotalReceivedSum'Quantity :: Data.Text.Internal.Text
  -- | unit: The unit of the value
  , addressContentTotalReceivedSum'Unit :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressContentTotalReceivedSum'
    where toJSON obj = Data.Aeson.Types.Internal.object ("quantity" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum'Quantity obj : "unit" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum'Unit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("quantity" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum'Quantity obj) GHC.Base.<> ("unit" Data.Aeson.Types.ToJSON..= addressContentTotalReceivedSum'Unit obj))
instance Data.Aeson.Types.FromJSON.FromJSON AddressContentTotalReceivedSum'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressContentTotalReceivedSum'" (\obj -> (GHC.Base.pure AddressContentTotalReceivedSum' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit"))
-- | Create a new 'AddressContentTotalReceivedSum'' with all required fields.
mkAddressContentTotalReceivedSum' :: Data.Text.Internal.Text -- ^ 'addressContentTotalReceivedSum'Quantity'
  -> Data.Text.Internal.Text -- ^ 'addressContentTotalReceivedSum'Unit'
  -> AddressContentTotalReceivedSum'
mkAddressContentTotalReceivedSum' addressContentTotalReceivedSum'Quantity addressContentTotalReceivedSum'Unit = AddressContentTotalReceivedSum'{addressContentTotalReceivedSum'Quantity = addressContentTotalReceivedSum'Quantity,
                                                                                                                                                addressContentTotalReceivedSum'Unit = addressContentTotalReceivedSum'Unit}
-- | Defines the object schema located at @components.schemas.address_content_total.properties.sent_sum.items@ in the specification.
-- 
-- The sum of all the UTXO per asset
data AddressContentTotalSentSum' = AddressContentTotalSentSum' {
  -- | quantity: The quantity of the unit
  addressContentTotalSentSum'Quantity :: Data.Text.Internal.Text
  -- | unit: The unit of the value
  , addressContentTotalSentSum'Unit :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressContentTotalSentSum'
    where toJSON obj = Data.Aeson.Types.Internal.object ("quantity" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum'Quantity obj : "unit" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum'Unit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("quantity" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum'Quantity obj) GHC.Base.<> ("unit" Data.Aeson.Types.ToJSON..= addressContentTotalSentSum'Unit obj))
instance Data.Aeson.Types.FromJSON.FromJSON AddressContentTotalSentSum'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressContentTotalSentSum'" (\obj -> (GHC.Base.pure AddressContentTotalSentSum' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit"))
-- | Create a new 'AddressContentTotalSentSum'' with all required fields.
mkAddressContentTotalSentSum' :: Data.Text.Internal.Text -- ^ 'addressContentTotalSentSum'Quantity'
  -> Data.Text.Internal.Text -- ^ 'addressContentTotalSentSum'Unit'
  -> AddressContentTotalSentSum'
mkAddressContentTotalSentSum' addressContentTotalSentSum'Quantity addressContentTotalSentSum'Unit = AddressContentTotalSentSum'{addressContentTotalSentSum'Quantity = addressContentTotalSentSum'Quantity,
                                                                                                                                addressContentTotalSentSum'Unit = addressContentTotalSentSum'Unit}
