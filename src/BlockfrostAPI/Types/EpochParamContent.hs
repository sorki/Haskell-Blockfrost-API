-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EpochParamContent
module BlockfrostAPI.Types.EpochParamContent where

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

-- | Defines the object schema located at @components.schemas.epoch_param_content@ in the specification.
-- 
-- 
data EpochParamContent = EpochParamContent {
  -- | a0: Pool pledge influence
  epochParamContentA0 :: Data.Scientific.Scientific
  -- | decentralisation_param: Percentage of blocks produced by federated nodes
  , epochParamContentDecentralisationParam :: Data.Scientific.Scientific
  -- | e_max: Epoch bound on pool retirement
  , epochParamContentEMax :: GHC.Integer.Type.Integer
  -- | epoch: Epoch number
  , epochParamContentEpoch :: GHC.Integer.Type.Integer
  -- | extra_entropy: Seed for extra entropy
  , epochParamContentExtraEntropy :: Data.Aeson.Types.Internal.Object
  -- | key_deposit: The amount of a key registration deposit in Lovelaces
  , epochParamContentKeyDeposit :: Data.Text.Internal.Text
  -- | max_block_header_size: Maximum block header size
  , epochParamContentMaxBlockHeaderSize :: GHC.Integer.Type.Integer
  -- | max_block_size: Maximum block body size in Bytes
  , epochParamContentMaxBlockSize :: GHC.Integer.Type.Integer
  -- | max_tx_size: Maximum transaction size
  , epochParamContentMaxTxSize :: GHC.Integer.Type.Integer
  -- | min_fee_a: The linear factor for the minimum fee calculation for given epoch
  , epochParamContentMinFeeA :: GHC.Integer.Type.Integer
  -- | min_fee_b: The constant factor for the minimum fee calculation
  , epochParamContentMinFeeB :: GHC.Integer.Type.Integer
  -- | min_pool_cost: Minimum stake cost forced on the pool
  , epochParamContentMinPoolCost :: Data.Text.Internal.Text
  -- | min_utxo: Minimum UTXO value
  , epochParamContentMinUtxo :: Data.Text.Internal.Text
  -- | n_opt: Desired number of pools
  , epochParamContentNOpt :: GHC.Integer.Type.Integer
  -- | nonce: Epoch number only used once
  , epochParamContentNonce :: Data.Text.Internal.Text
  -- | pool_deposit: The amount of a pool registration deposit in Lovelaces
  , epochParamContentPoolDeposit :: Data.Text.Internal.Text
  -- | protocol_major_ver: Accepted protocol major version
  , epochParamContentProtocolMajorVer :: GHC.Integer.Type.Integer
  -- | protocol_minor_ver: Accepted protocol minor version
  , epochParamContentProtocolMinorVer :: GHC.Integer.Type.Integer
  -- | rho: Monetary expansion
  , epochParamContentRho :: Data.Scientific.Scientific
  -- | tau: Treasury expansion
  , epochParamContentTau :: Data.Scientific.Scientific
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EpochParamContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("a0" Data.Aeson.Types.ToJSON..= epochParamContentA0 obj : "decentralisation_param" Data.Aeson.Types.ToJSON..= epochParamContentDecentralisationParam obj : "e_max" Data.Aeson.Types.ToJSON..= epochParamContentEMax obj : "epoch" Data.Aeson.Types.ToJSON..= epochParamContentEpoch obj : "extra_entropy" Data.Aeson.Types.ToJSON..= epochParamContentExtraEntropy obj : "key_deposit" Data.Aeson.Types.ToJSON..= epochParamContentKeyDeposit obj : "max_block_header_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxBlockHeaderSize obj : "max_block_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxBlockSize obj : "max_tx_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxTxSize obj : "min_fee_a" Data.Aeson.Types.ToJSON..= epochParamContentMinFeeA obj : "min_fee_b" Data.Aeson.Types.ToJSON..= epochParamContentMinFeeB obj : "min_pool_cost" Data.Aeson.Types.ToJSON..= epochParamContentMinPoolCost obj : "min_utxo" Data.Aeson.Types.ToJSON..= epochParamContentMinUtxo obj : "n_opt" Data.Aeson.Types.ToJSON..= epochParamContentNOpt obj : "nonce" Data.Aeson.Types.ToJSON..= epochParamContentNonce obj : "pool_deposit" Data.Aeson.Types.ToJSON..= epochParamContentPoolDeposit obj : "protocol_major_ver" Data.Aeson.Types.ToJSON..= epochParamContentProtocolMajorVer obj : "protocol_minor_ver" Data.Aeson.Types.ToJSON..= epochParamContentProtocolMinorVer obj : "rho" Data.Aeson.Types.ToJSON..= epochParamContentRho obj : "tau" Data.Aeson.Types.ToJSON..= epochParamContentTau obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("a0" Data.Aeson.Types.ToJSON..= epochParamContentA0 obj) GHC.Base.<> (("decentralisation_param" Data.Aeson.Types.ToJSON..= epochParamContentDecentralisationParam obj) GHC.Base.<> (("e_max" Data.Aeson.Types.ToJSON..= epochParamContentEMax obj) GHC.Base.<> (("epoch" Data.Aeson.Types.ToJSON..= epochParamContentEpoch obj) GHC.Base.<> (("extra_entropy" Data.Aeson.Types.ToJSON..= epochParamContentExtraEntropy obj) GHC.Base.<> (("key_deposit" Data.Aeson.Types.ToJSON..= epochParamContentKeyDeposit obj) GHC.Base.<> (("max_block_header_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxBlockHeaderSize obj) GHC.Base.<> (("max_block_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxBlockSize obj) GHC.Base.<> (("max_tx_size" Data.Aeson.Types.ToJSON..= epochParamContentMaxTxSize obj) GHC.Base.<> (("min_fee_a" Data.Aeson.Types.ToJSON..= epochParamContentMinFeeA obj) GHC.Base.<> (("min_fee_b" Data.Aeson.Types.ToJSON..= epochParamContentMinFeeB obj) GHC.Base.<> (("min_pool_cost" Data.Aeson.Types.ToJSON..= epochParamContentMinPoolCost obj) GHC.Base.<> (("min_utxo" Data.Aeson.Types.ToJSON..= epochParamContentMinUtxo obj) GHC.Base.<> (("n_opt" Data.Aeson.Types.ToJSON..= epochParamContentNOpt obj) GHC.Base.<> (("nonce" Data.Aeson.Types.ToJSON..= epochParamContentNonce obj) GHC.Base.<> (("pool_deposit" Data.Aeson.Types.ToJSON..= epochParamContentPoolDeposit obj) GHC.Base.<> (("protocol_major_ver" Data.Aeson.Types.ToJSON..= epochParamContentProtocolMajorVer obj) GHC.Base.<> (("protocol_minor_ver" Data.Aeson.Types.ToJSON..= epochParamContentProtocolMinorVer obj) GHC.Base.<> (("rho" Data.Aeson.Types.ToJSON..= epochParamContentRho obj) GHC.Base.<> ("tau" Data.Aeson.Types.ToJSON..= epochParamContentTau obj))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON EpochParamContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EpochParamContent" (\obj -> (((((((((((((((((((GHC.Base.pure EpochParamContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "a0")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "decentralisation_param")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "e_max")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "extra_entropy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "key_deposit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "max_block_header_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "max_block_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "max_tx_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "min_fee_a")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "min_fee_b")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "min_pool_cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "min_utxo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "n_opt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "nonce")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_deposit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "protocol_major_ver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "protocol_minor_ver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rho")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tau"))
-- | Create a new 'EpochParamContent' with all required fields.
mkEpochParamContent :: Data.Scientific.Scientific -- ^ 'epochParamContentA0'
  -> Data.Scientific.Scientific -- ^ 'epochParamContentDecentralisationParam'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentEMax'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentEpoch'
  -> Data.Aeson.Types.Internal.Object -- ^ 'epochParamContentExtraEntropy'
  -> Data.Text.Internal.Text -- ^ 'epochParamContentKeyDeposit'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentMaxBlockHeaderSize'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentMaxBlockSize'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentMaxTxSize'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentMinFeeA'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentMinFeeB'
  -> Data.Text.Internal.Text -- ^ 'epochParamContentMinPoolCost'
  -> Data.Text.Internal.Text -- ^ 'epochParamContentMinUtxo'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentNOpt'
  -> Data.Text.Internal.Text -- ^ 'epochParamContentNonce'
  -> Data.Text.Internal.Text -- ^ 'epochParamContentPoolDeposit'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentProtocolMajorVer'
  -> GHC.Integer.Type.Integer -- ^ 'epochParamContentProtocolMinorVer'
  -> Data.Scientific.Scientific -- ^ 'epochParamContentRho'
  -> Data.Scientific.Scientific -- ^ 'epochParamContentTau'
  -> EpochParamContent
mkEpochParamContent epochParamContentA0 epochParamContentDecentralisationParam epochParamContentEMax epochParamContentEpoch epochParamContentExtraEntropy epochParamContentKeyDeposit epochParamContentMaxBlockHeaderSize epochParamContentMaxBlockSize epochParamContentMaxTxSize epochParamContentMinFeeA epochParamContentMinFeeB epochParamContentMinPoolCost epochParamContentMinUtxo epochParamContentNOpt epochParamContentNonce epochParamContentPoolDeposit epochParamContentProtocolMajorVer epochParamContentProtocolMinorVer epochParamContentRho epochParamContentTau = EpochParamContent{epochParamContentA0 = epochParamContentA0,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentDecentralisationParam = epochParamContentDecentralisationParam,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentEMax = epochParamContentEMax,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentEpoch = epochParamContentEpoch,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentExtraEntropy = epochParamContentExtraEntropy,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentKeyDeposit = epochParamContentKeyDeposit,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMaxBlockHeaderSize = epochParamContentMaxBlockHeaderSize,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMaxBlockSize = epochParamContentMaxBlockSize,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMaxTxSize = epochParamContentMaxTxSize,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMinFeeA = epochParamContentMinFeeA,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMinFeeB = epochParamContentMinFeeB,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMinPoolCost = epochParamContentMinPoolCost,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentMinUtxo = epochParamContentMinUtxo,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentNOpt = epochParamContentNOpt,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentNonce = epochParamContentNonce,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentPoolDeposit = epochParamContentPoolDeposit,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentProtocolMajorVer = epochParamContentProtocolMajorVer,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentProtocolMinorVer = epochParamContentProtocolMinorVer,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentRho = epochParamContentRho,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       epochParamContentTau = epochParamContentTau}
