-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolHistory
module BlockfrostAPI.Types.PoolHistory where

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

-- | Defines the object schema located at @components.schemas.pool_history@ in the specification.
-- 
-- 
data PoolHistory = PoolHistory {
  -- | active_size: Pool size (percentage) of overall active stake at that epoch
  poolHistoryActiveSize :: Data.Scientific.Scientific
  -- | active_stake: Active (Snapshot of live stake 2 epochs ago) stake in Lovelaces
  , poolHistoryActiveStake :: Data.Text.Internal.Text
  -- | blocks: Number of blocks created by pool
  , poolHistoryBlocks :: GHC.Integer.Type.Integer
  -- | delegators_count: Number of delegators for epoch
  , poolHistoryDelegatorsCount :: GHC.Integer.Type.Integer
  -- | epoch: Epoch number
  , poolHistoryEpoch :: GHC.Integer.Type.Integer
  -- | fees: Pool operator rewards
  , poolHistoryFees :: Data.Text.Internal.Text
  -- | rewards: Total rewards received before distribution to delegators
  , poolHistoryRewards :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolHistory
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_size" Data.Aeson.Types.ToJSON..= poolHistoryActiveSize obj : "active_stake" Data.Aeson.Types.ToJSON..= poolHistoryActiveStake obj : "blocks" Data.Aeson.Types.ToJSON..= poolHistoryBlocks obj : "delegators_count" Data.Aeson.Types.ToJSON..= poolHistoryDelegatorsCount obj : "epoch" Data.Aeson.Types.ToJSON..= poolHistoryEpoch obj : "fees" Data.Aeson.Types.ToJSON..= poolHistoryFees obj : "rewards" Data.Aeson.Types.ToJSON..= poolHistoryRewards obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_size" Data.Aeson.Types.ToJSON..= poolHistoryActiveSize obj) GHC.Base.<> (("active_stake" Data.Aeson.Types.ToJSON..= poolHistoryActiveStake obj) GHC.Base.<> (("blocks" Data.Aeson.Types.ToJSON..= poolHistoryBlocks obj) GHC.Base.<> (("delegators_count" Data.Aeson.Types.ToJSON..= poolHistoryDelegatorsCount obj) GHC.Base.<> (("epoch" Data.Aeson.Types.ToJSON..= poolHistoryEpoch obj) GHC.Base.<> (("fees" Data.Aeson.Types.ToJSON..= poolHistoryFees obj) GHC.Base.<> ("rewards" Data.Aeson.Types.ToJSON..= poolHistoryRewards obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PoolHistory
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolHistory" (\obj -> ((((((GHC.Base.pure PoolHistory GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_stake")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "blocks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delegators_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rewards"))
-- | Create a new 'PoolHistory' with all required fields.
mkPoolHistory :: Data.Scientific.Scientific -- ^ 'poolHistoryActiveSize'
  -> Data.Text.Internal.Text -- ^ 'poolHistoryActiveStake'
  -> GHC.Integer.Type.Integer -- ^ 'poolHistoryBlocks'
  -> GHC.Integer.Type.Integer -- ^ 'poolHistoryDelegatorsCount'
  -> GHC.Integer.Type.Integer -- ^ 'poolHistoryEpoch'
  -> Data.Text.Internal.Text -- ^ 'poolHistoryFees'
  -> Data.Text.Internal.Text -- ^ 'poolHistoryRewards'
  -> PoolHistory
mkPoolHistory poolHistoryActiveSize poolHistoryActiveStake poolHistoryBlocks poolHistoryDelegatorsCount poolHistoryEpoch poolHistoryFees poolHistoryRewards = PoolHistory{poolHistoryActiveSize = poolHistoryActiveSize,
                                                                                                                                                                          poolHistoryActiveStake = poolHistoryActiveStake,
                                                                                                                                                                          poolHistoryBlocks = poolHistoryBlocks,
                                                                                                                                                                          poolHistoryDelegatorsCount = poolHistoryDelegatorsCount,
                                                                                                                                                                          poolHistoryEpoch = poolHistoryEpoch,
                                                                                                                                                                          poolHistoryFees = poolHistoryFees,
                                                                                                                                                                          poolHistoryRewards = poolHistoryRewards}
