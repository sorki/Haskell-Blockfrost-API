-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxContent
module BlockfrostAPI.Types.TxContent where

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

-- | Defines the object schema located at @components.schemas.tx_content@ in the specification.
-- 
-- 
data TxContent = TxContent {
  -- | asset_mint_or_burn_count: Count of asset mints and burns within the transaction
  txContentAssetMintOrBurnCount :: GHC.Integer.Type.Integer
  -- | block: Block hash
  , txContentBlock :: Data.Text.Internal.Text
  -- | block_height: Block number
  , txContentBlockHeight :: GHC.Integer.Type.Integer
  -- | delegation_count: Count of the delegations within the transaction
  , txContentDelegationCount :: GHC.Integer.Type.Integer
  -- | deposit: Deposit within the transaction in Lovelaces
  , txContentDeposit :: Data.Text.Internal.Text
  -- | fees: Fees of the transaction in Lovelaces
  , txContentFees :: Data.Text.Internal.Text
  -- | hash: Transaction hash
  , txContentHash :: Data.Text.Internal.Text
  -- | index: Transaction index within the block
  , txContentIndex :: GHC.Integer.Type.Integer
  -- | invalid_before: Left (included) endpoint of the timelock validity intervals
  , txContentInvalidBefore :: Data.Text.Internal.Text
  -- | invalid_hereafter: Right (excluded) endpoint of the timelock validity intervals
  , txContentInvalidHereafter :: Data.Text.Internal.Text
  -- | mir_cert_count: Count of the MIR certificates within the transaction
  , txContentMirCertCount :: GHC.Integer.Type.Integer
  -- | output_amount
  , txContentOutputAmount :: ([TxContentOutputAmount'])
  -- | pool_retire_count: Count of the stake pool retirement certificates within the transaction
  , txContentPoolRetireCount :: GHC.Integer.Type.Integer
  -- | pool_update_count: Count of the stake pool registration and update certificates within the transaction
  , txContentPoolUpdateCount :: GHC.Integer.Type.Integer
  -- | size: Size of the transaction in Bytes
  , txContentSize :: GHC.Integer.Type.Integer
  -- | slot: Slot number
  , txContentSlot :: GHC.Integer.Type.Integer
  -- | stake_cert_count: Count of the stake keys (de)registration and delegation certificates within the transaction
  , txContentStakeCertCount :: GHC.Integer.Type.Integer
  -- | utxo_count: Count of UTXOs within the transaction
  , txContentUtxoCount :: GHC.Integer.Type.Integer
  -- | withdrawal_count: Count of the withdrawal within the transaction
  , txContentWithdrawalCount :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("asset_mint_or_burn_count" Data.Aeson.Types.ToJSON..= txContentAssetMintOrBurnCount obj : "block" Data.Aeson.Types.ToJSON..= txContentBlock obj : "block_height" Data.Aeson.Types.ToJSON..= txContentBlockHeight obj : "delegation_count" Data.Aeson.Types.ToJSON..= txContentDelegationCount obj : "deposit" Data.Aeson.Types.ToJSON..= txContentDeposit obj : "fees" Data.Aeson.Types.ToJSON..= txContentFees obj : "hash" Data.Aeson.Types.ToJSON..= txContentHash obj : "index" Data.Aeson.Types.ToJSON..= txContentIndex obj : "invalid_before" Data.Aeson.Types.ToJSON..= txContentInvalidBefore obj : "invalid_hereafter" Data.Aeson.Types.ToJSON..= txContentInvalidHereafter obj : "mir_cert_count" Data.Aeson.Types.ToJSON..= txContentMirCertCount obj : "output_amount" Data.Aeson.Types.ToJSON..= txContentOutputAmount obj : "pool_retire_count" Data.Aeson.Types.ToJSON..= txContentPoolRetireCount obj : "pool_update_count" Data.Aeson.Types.ToJSON..= txContentPoolUpdateCount obj : "size" Data.Aeson.Types.ToJSON..= txContentSize obj : "slot" Data.Aeson.Types.ToJSON..= txContentSlot obj : "stake_cert_count" Data.Aeson.Types.ToJSON..= txContentStakeCertCount obj : "utxo_count" Data.Aeson.Types.ToJSON..= txContentUtxoCount obj : "withdrawal_count" Data.Aeson.Types.ToJSON..= txContentWithdrawalCount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("asset_mint_or_burn_count" Data.Aeson.Types.ToJSON..= txContentAssetMintOrBurnCount obj) GHC.Base.<> (("block" Data.Aeson.Types.ToJSON..= txContentBlock obj) GHC.Base.<> (("block_height" Data.Aeson.Types.ToJSON..= txContentBlockHeight obj) GHC.Base.<> (("delegation_count" Data.Aeson.Types.ToJSON..= txContentDelegationCount obj) GHC.Base.<> (("deposit" Data.Aeson.Types.ToJSON..= txContentDeposit obj) GHC.Base.<> (("fees" Data.Aeson.Types.ToJSON..= txContentFees obj) GHC.Base.<> (("hash" Data.Aeson.Types.ToJSON..= txContentHash obj) GHC.Base.<> (("index" Data.Aeson.Types.ToJSON..= txContentIndex obj) GHC.Base.<> (("invalid_before" Data.Aeson.Types.ToJSON..= txContentInvalidBefore obj) GHC.Base.<> (("invalid_hereafter" Data.Aeson.Types.ToJSON..= txContentInvalidHereafter obj) GHC.Base.<> (("mir_cert_count" Data.Aeson.Types.ToJSON..= txContentMirCertCount obj) GHC.Base.<> (("output_amount" Data.Aeson.Types.ToJSON..= txContentOutputAmount obj) GHC.Base.<> (("pool_retire_count" Data.Aeson.Types.ToJSON..= txContentPoolRetireCount obj) GHC.Base.<> (("pool_update_count" Data.Aeson.Types.ToJSON..= txContentPoolUpdateCount obj) GHC.Base.<> (("size" Data.Aeson.Types.ToJSON..= txContentSize obj) GHC.Base.<> (("slot" Data.Aeson.Types.ToJSON..= txContentSlot obj) GHC.Base.<> (("stake_cert_count" Data.Aeson.Types.ToJSON..= txContentStakeCertCount obj) GHC.Base.<> (("utxo_count" Data.Aeson.Types.ToJSON..= txContentUtxoCount obj) GHC.Base.<> ("withdrawal_count" Data.Aeson.Types.ToJSON..= txContentWithdrawalCount obj)))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContent" (\obj -> ((((((((((((((((((GHC.Base.pure TxContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset_mint_or_burn_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delegation_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deposit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invalid_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invalid_hereafter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "mir_cert_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "output_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_retire_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_update_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "stake_cert_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "utxo_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "withdrawal_count"))
-- | Create a new 'TxContent' with all required fields.
mkTxContent :: GHC.Integer.Type.Integer -- ^ 'txContentAssetMintOrBurnCount'
  -> Data.Text.Internal.Text -- ^ 'txContentBlock'
  -> GHC.Integer.Type.Integer -- ^ 'txContentBlockHeight'
  -> GHC.Integer.Type.Integer -- ^ 'txContentDelegationCount'
  -> Data.Text.Internal.Text -- ^ 'txContentDeposit'
  -> Data.Text.Internal.Text -- ^ 'txContentFees'
  -> Data.Text.Internal.Text -- ^ 'txContentHash'
  -> GHC.Integer.Type.Integer -- ^ 'txContentIndex'
  -> Data.Text.Internal.Text -- ^ 'txContentInvalidBefore'
  -> Data.Text.Internal.Text -- ^ 'txContentInvalidHereafter'
  -> GHC.Integer.Type.Integer -- ^ 'txContentMirCertCount'
  -> [TxContentOutputAmount'] -- ^ 'txContentOutputAmount'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolRetireCount'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolUpdateCount'
  -> GHC.Integer.Type.Integer -- ^ 'txContentSize'
  -> GHC.Integer.Type.Integer -- ^ 'txContentSlot'
  -> GHC.Integer.Type.Integer -- ^ 'txContentStakeCertCount'
  -> GHC.Integer.Type.Integer -- ^ 'txContentUtxoCount'
  -> GHC.Integer.Type.Integer -- ^ 'txContentWithdrawalCount'
  -> TxContent
mkTxContent txContentAssetMintOrBurnCount txContentBlock txContentBlockHeight txContentDelegationCount txContentDeposit txContentFees txContentHash txContentIndex txContentInvalidBefore txContentInvalidHereafter txContentMirCertCount txContentOutputAmount txContentPoolRetireCount txContentPoolUpdateCount txContentSize txContentSlot txContentStakeCertCount txContentUtxoCount txContentWithdrawalCount = TxContent{txContentAssetMintOrBurnCount = txContentAssetMintOrBurnCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentBlock = txContentBlock,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentBlockHeight = txContentBlockHeight,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentDelegationCount = txContentDelegationCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentDeposit = txContentDeposit,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentFees = txContentFees,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentHash = txContentHash,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentIndex = txContentIndex,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentInvalidBefore = txContentInvalidBefore,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentInvalidHereafter = txContentInvalidHereafter,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentMirCertCount = txContentMirCertCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentOutputAmount = txContentOutputAmount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentPoolRetireCount = txContentPoolRetireCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentPoolUpdateCount = txContentPoolUpdateCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentSize = txContentSize,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentSlot = txContentSlot,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentStakeCertCount = txContentStakeCertCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentUtxoCount = txContentUtxoCount,
                                                                                                                                                                                                                                                                                                                                                                                                                              txContentWithdrawalCount = txContentWithdrawalCount}
-- | Defines the object schema located at @components.schemas.tx_content.properties.output_amount.items@ in the specification.
-- 
-- The sum of all the UTXO per asset
data TxContentOutputAmount' = TxContentOutputAmount' {
  -- | quantity: The quantity of the unit
  txContentOutputAmount'Quantity :: Data.Text.Internal.Text
  -- | unit: The unit of the value
  , txContentOutputAmount'Unit :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentOutputAmount'
    where toJSON obj = Data.Aeson.Types.Internal.object ("quantity" Data.Aeson.Types.ToJSON..= txContentOutputAmount'Quantity obj : "unit" Data.Aeson.Types.ToJSON..= txContentOutputAmount'Unit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("quantity" Data.Aeson.Types.ToJSON..= txContentOutputAmount'Quantity obj) GHC.Base.<> ("unit" Data.Aeson.Types.ToJSON..= txContentOutputAmount'Unit obj))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentOutputAmount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentOutputAmount'" (\obj -> (GHC.Base.pure TxContentOutputAmount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unit"))
-- | Create a new 'TxContentOutputAmount'' with all required fields.
mkTxContentOutputAmount' :: Data.Text.Internal.Text -- ^ 'txContentOutputAmount'Quantity'
  -> Data.Text.Internal.Text -- ^ 'txContentOutputAmount'Unit'
  -> TxContentOutputAmount'
mkTxContentOutputAmount' txContentOutputAmount'Quantity txContentOutputAmount'Unit = TxContentOutputAmount'{txContentOutputAmount'Quantity = txContentOutputAmount'Quantity,
                                                                                                            txContentOutputAmount'Unit = txContentOutputAmount'Unit}
