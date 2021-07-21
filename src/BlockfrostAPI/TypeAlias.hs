-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains all types with cyclic dependencies (between each other or to itself)
module BlockfrostAPI.TypeAlias where

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
import {-# SOURCE #-} BlockfrostAPI.Types.AccountAddressesAsset
import {-# SOURCE #-} BlockfrostAPI.Types.AccountAddressesContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountDelegationContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountHistoryContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountMirContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountRegistrationContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountRewardContent
import {-# SOURCE #-} BlockfrostAPI.Types.AccountWithdrawalContent
import {-# SOURCE #-} BlockfrostAPI.Types.AddressTransactionsContent
import {-# SOURCE #-} BlockfrostAPI.Types.AddressUtxoContent
import {-# SOURCE #-} BlockfrostAPI.Types.AssetAddress
import {-# SOURCE #-} BlockfrostAPI.Types.AssetHistory
import {-# SOURCE #-} BlockfrostAPI.Types.AssetPolicy
import {-# SOURCE #-} BlockfrostAPI.Types.AssetTransaction
import {-# SOURCE #-} BlockfrostAPI.Types.BlockContent
import {-# SOURCE #-} BlockfrostAPI.Types.EpochContent
import {-# SOURCE #-} BlockfrostAPI.Types.EpochStakeContent
import {-# SOURCE #-} BlockfrostAPI.Types.EpochStakePoolContent
import {-# SOURCE #-} BlockfrostAPI.Types.Metric
import {-# SOURCE #-} BlockfrostAPI.Types.MetricsEndpoint
import {-# SOURCE #-} BlockfrostAPI.Types.NutlinkAddressTicker
import {-# SOURCE #-} BlockfrostAPI.Types.NutlinkAddressTickerTicker
import {-# SOURCE #-} BlockfrostAPI.Types.NutlinkTickersTicker
import {-# SOURCE #-} BlockfrostAPI.Types.PoolDelegator
import {-# SOURCE #-} BlockfrostAPI.Types.PoolHistory
import {-# SOURCE #-} BlockfrostAPI.Types.PoolRelay
import {-# SOURCE #-} BlockfrostAPI.Types.PoolRetiring
import {-# SOURCE #-} BlockfrostAPI.Types.PoolUpdate
import {-# SOURCE #-} BlockfrostAPI.Types.ShortAsset
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentDelegation
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentMetadataCborItem
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentMetadataItem
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentMir
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentPoolCert
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentPoolRetiring
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentStakeAddress
import {-# SOURCE #-} BlockfrostAPI.Types.TxContentWithdrawal


-- | Defines an alias for the schema located at @components.schemas.tx_content_withdrawals@ in the specification.
-- 
-- 
type TxContentWithdrawals = [TxContentWithdrawal]

-- | Defines an alias for the schema located at @components.schemas.tx_content_stake_addresses@ in the specification.
-- 
-- 
type TxContentStakeAddresses = [TxContentStakeAddress]

-- | Defines an alias for the schema located at @components.schemas.tx_content_pool_retires@ in the specification.
-- 
-- 
type TxContentPoolRetires = [TxContentPoolRetiring]

-- | Defines an alias for the schema located at @components.schemas.tx_content_pool_certs@ in the specification.
-- 
-- 
type TxContentPoolCerts = [TxContentPoolCert]

-- | Defines an alias for the schema located at @components.schemas.tx_content_mirs@ in the specification.
-- 
-- 
type TxContentMirs = [TxContentMir]

-- | Defines an alias for the schema located at @components.schemas.tx_content_metadata_cbor@ in the specification.
-- 
-- 
type TxContentMetadataCbor = [TxContentMetadataCborItem]

-- | Defines an alias for the schema located at @components.schemas.tx_content_metadata@ in the specification.
-- 
-- 
type TxContentMetadata = [TxContentMetadataItem]

-- | Defines an alias for the schema located at @components.schemas.tx_content_delegations@ in the specification.
-- 
-- 
type TxContentDelegations = [TxContentDelegation]

-- | Defines an alias for the schema located at @components.schemas.pool_updates@ in the specification.
-- 
-- 
type PoolUpdates = [PoolUpdate]

-- | Defines an alias for the schema located at @components.schemas.pool_relays@ in the specification.
-- 
-- 
type PoolRelays = [PoolRelay]

-- | Defines an alias for the schema located at @components.schemas.pool_list_retire@ in the specification.
-- 
-- 
type PoolListRetire = [PoolRetiring]

-- | Defines an alias for the schema located at @components.schemas.pool_list@ in the specification.
-- 
-- 
type PoolList = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.pool_histories@ in the specification.
-- 
-- 
type PoolHistories = [PoolHistory]

-- | Defines an alias for the schema located at @components.schemas.pool_delegators@ in the specification.
-- 
-- 
type PoolDelegators = [PoolDelegator]

-- | Defines an alias for the schema located at @components.schemas.pool_blocks@ in the specification.
-- 
-- 
type PoolBlocks = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.nutlink_tickers_tickers@ in the specification.
-- 
-- 
type NutlinkTickersTickers = [NutlinkTickersTicker]

-- | Defines an alias for the schema located at @components.schemas.nutlink_address_tickers@ in the specification.
-- 
-- 
type NutlinkAddressTickers = [NutlinkAddressTicker]

-- | Defines an alias for the schema located at @components.schemas.nutlink_address_ticker_tickers@ in the specification.
-- 
-- 
type NutlinkAddressTickerTickers = [NutlinkAddressTickerTicker]

-- | Defines an alias for the schema located at @components.schemas.metrics_endpoints@ in the specification.
-- 
-- 
type MetricsEndpoints = [MetricsEndpoint]

-- | Defines an alias for the schema located at @components.schemas.metrics@ in the specification.
-- 
-- 
type Metrics = [Metric]

-- | Defines an alias for the schema located at @components.schemas.epoch_stake_pool_contents@ in the specification.
-- 
-- 
type EpochStakePoolContents = [EpochStakePoolContent]

-- | Defines an alias for the schema located at @components.schemas.epoch_stake_contents@ in the specification.
-- 
-- 
type EpochStakeContents = [EpochStakeContent]

-- | Defines an alias for the schema located at @components.schemas.epoch_content_array@ in the specification.
-- 
-- 
type EpochContentArray = [EpochContent]

-- | Defines an alias for the schema located at @components.schemas.epoch_block_content@ in the specification.
-- 
-- 
type EpochBlockContent = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.empty_object@ in the specification.
-- 
-- 
type EmptyObject = Data.Aeson.Types.Internal.Object

-- | Defines an alias for the schema located at @components.schemas.block_content_txs@ in the specification.
-- 
-- 
type BlockContentTxs = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.block_content_array@ in the specification.
-- 
-- 
type BlockContentArray = [BlockContent]

-- | Defines an alias for the schema located at @components.schemas.assets@ in the specification.
-- 
-- 
type Assets = [ShortAsset]

-- | Defines an alias for the schema located at @components.schemas.asset_txs@ in the specification.
-- 
-- 
type AssetTxs = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.asset_transactions@ in the specification.
-- 
-- 
type AssetTransactions = [AssetTransaction]

-- | Defines an alias for the schema located at @components.schemas.asset_policies@ in the specification.
-- 
-- 
type AssetPolicies = [AssetPolicy]

-- | Defines an alias for the schema located at @components.schemas.asset_histories@ in the specification.
-- 
-- 
type AssetHistories = [AssetHistory]

-- | Defines an alias for the schema located at @components.schemas.asset_addresses@ in the specification.
-- 
-- 
type AssetAddresses = [AssetAddress]

-- | Defines an alias for the schema located at @components.schemas.address_utxo_contents@ in the specification.
-- 
-- 
type AddressUtxoContents = [AddressUtxoContent]

-- | Defines an alias for the schema located at @components.schemas.address_txs_content@ in the specification.
-- 
-- 
type AddressTxsContent = [Data.Text.Internal.Text]

-- | Defines an alias for the schema located at @components.schemas.address_transactions_contents@ in the specification.
-- 
-- 
type AddressTransactionsContents = [AddressTransactionsContent]

-- | Defines an alias for the schema located at @components.schemas.account_withdrawal_contents@ in the specification.
-- 
-- 
type AccountWithdrawalContents = [AccountWithdrawalContent]

-- | Defines an alias for the schema located at @components.schemas.account_reward_contents@ in the specification.
-- 
-- 
type AccountRewardContents = [AccountRewardContent]

-- | Defines an alias for the schema located at @components.schemas.account_registration_contents@ in the specification.
-- 
-- 
type AccountRegistrationContents = [AccountRegistrationContent]

-- | Defines an alias for the schema located at @components.schemas.account_mir_contents@ in the specification.
-- 
-- 
type AccountMirContents = [AccountMirContent]

-- | Defines an alias for the schema located at @components.schemas.account_history_contents@ in the specification.
-- 
-- 
type AccountHistoryContents = [AccountHistoryContent]

-- | Defines an alias for the schema located at @components.schemas.account_delegation_contents@ in the specification.
-- 
-- 
type AccountDelegationContents = [AccountDelegationContent]

-- | Defines an alias for the schema located at @components.schemas.account_addresses_contents@ in the specification.
-- 
-- 
type AccountAddressesContents = [AccountAddressesContent]

-- | Defines an alias for the schema located at @components.schemas.account_addresses_assets@ in the specification.
-- 
-- 
type AccountAddressesAssets = [AccountAddressesAsset]
