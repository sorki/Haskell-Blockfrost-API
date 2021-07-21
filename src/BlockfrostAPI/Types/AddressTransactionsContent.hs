-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AddressTransactionsContent
module BlockfrostAPI.Types.AddressTransactionsContent where

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

-- | Defines the object schema located at @components.schemas.address_transactions_content.items@ in the specification.
-- 
-- 
data AddressTransactionsContent = AddressTransactionsContent {
  -- | block_height: Block height
  addressTransactionsContentBlockHeight :: GHC.Integer.Type.Integer
  -- | tx_hash: Hash of the transaction
  , addressTransactionsContentTxHash :: Data.Text.Internal.Text
  -- | tx_index: Transaction index within the block
  , addressTransactionsContentTxIndex :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddressTransactionsContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("block_height" Data.Aeson.Types.ToJSON..= addressTransactionsContentBlockHeight obj : "tx_hash" Data.Aeson.Types.ToJSON..= addressTransactionsContentTxHash obj : "tx_index" Data.Aeson.Types.ToJSON..= addressTransactionsContentTxIndex obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("block_height" Data.Aeson.Types.ToJSON..= addressTransactionsContentBlockHeight obj) GHC.Base.<> (("tx_hash" Data.Aeson.Types.ToJSON..= addressTransactionsContentTxHash obj) GHC.Base.<> ("tx_index" Data.Aeson.Types.ToJSON..= addressTransactionsContentTxIndex obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AddressTransactionsContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddressTransactionsContent" (\obj -> ((GHC.Base.pure AddressTransactionsContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_index"))
-- | Create a new 'AddressTransactionsContent' with all required fields.
mkAddressTransactionsContent :: GHC.Integer.Type.Integer -- ^ 'addressTransactionsContentBlockHeight'
  -> Data.Text.Internal.Text -- ^ 'addressTransactionsContentTxHash'
  -> GHC.Integer.Type.Integer -- ^ 'addressTransactionsContentTxIndex'
  -> AddressTransactionsContent
mkAddressTransactionsContent addressTransactionsContentBlockHeight addressTransactionsContentTxHash addressTransactionsContentTxIndex = AddressTransactionsContent{addressTransactionsContentBlockHeight = addressTransactionsContentBlockHeight,
                                                                                                                                                                   addressTransactionsContentTxHash = addressTransactionsContentTxHash,
                                                                                                                                                                   addressTransactionsContentTxIndex = addressTransactionsContentTxIndex}
-- | Defines an alias for the schema located at @components.schemas.address_transactions_content@ in the specification.
-- 
-- 
-- XXX: collision
-- type AddressTransactionsContent = [AddressTransactionsContent]
type AddressTransactionsContent' = [AddressTransactionsContent]
