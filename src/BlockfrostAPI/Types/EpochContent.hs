-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EpochContent
module BlockfrostAPI.Types.EpochContent where

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

-- | Defines the object schema located at @components.schemas.epoch_content@ in the specification.
-- 
-- 
data EpochContent = EpochContent {
  -- | active_stake: Sum of all the active stakes within the epoch in Lovelaces
  epochContentActiveStake :: Data.Text.Internal.Text
  -- | block_count: Number of blocks within the epoch
  , epochContentBlockCount :: GHC.Integer.Type.Integer
  -- | end_time: Unix time of the end of the epoch
  , epochContentEndTime :: GHC.Integer.Type.Integer
  -- | epoch: Epoch number
  , epochContentEpoch :: GHC.Integer.Type.Integer
  -- | fees: Sum of all the fees within the epoch in Lovelaces
  , epochContentFees :: Data.Text.Internal.Text
  -- | first_block_time: Unix time of the first block of the epoch
  , epochContentFirstBlockTime :: GHC.Integer.Type.Integer
  -- | last_block_time: Unix time of the last block of the epoch
  , epochContentLastBlockTime :: GHC.Integer.Type.Integer
  -- | output: Sum of all the transactions within the epoch in Lovelaces
  , epochContentOutput :: Data.Text.Internal.Text
  -- | start_time: Unix time of the start of the epoch
  , epochContentStartTime :: GHC.Integer.Type.Integer
  -- | tx_count: Number of transactions within the epoch
  , epochContentTxCount :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EpochContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_stake" Data.Aeson.Types.ToJSON..= epochContentActiveStake obj : "block_count" Data.Aeson.Types.ToJSON..= epochContentBlockCount obj : "end_time" Data.Aeson.Types.ToJSON..= epochContentEndTime obj : "epoch" Data.Aeson.Types.ToJSON..= epochContentEpoch obj : "fees" Data.Aeson.Types.ToJSON..= epochContentFees obj : "first_block_time" Data.Aeson.Types.ToJSON..= epochContentFirstBlockTime obj : "last_block_time" Data.Aeson.Types.ToJSON..= epochContentLastBlockTime obj : "output" Data.Aeson.Types.ToJSON..= epochContentOutput obj : "start_time" Data.Aeson.Types.ToJSON..= epochContentStartTime obj : "tx_count" Data.Aeson.Types.ToJSON..= epochContentTxCount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_stake" Data.Aeson.Types.ToJSON..= epochContentActiveStake obj) GHC.Base.<> (("block_count" Data.Aeson.Types.ToJSON..= epochContentBlockCount obj) GHC.Base.<> (("end_time" Data.Aeson.Types.ToJSON..= epochContentEndTime obj) GHC.Base.<> (("epoch" Data.Aeson.Types.ToJSON..= epochContentEpoch obj) GHC.Base.<> (("fees" Data.Aeson.Types.ToJSON..= epochContentFees obj) GHC.Base.<> (("first_block_time" Data.Aeson.Types.ToJSON..= epochContentFirstBlockTime obj) GHC.Base.<> (("last_block_time" Data.Aeson.Types.ToJSON..= epochContentLastBlockTime obj) GHC.Base.<> (("output" Data.Aeson.Types.ToJSON..= epochContentOutput obj) GHC.Base.<> (("start_time" Data.Aeson.Types.ToJSON..= epochContentStartTime obj) GHC.Base.<> ("tx_count" Data.Aeson.Types.ToJSON..= epochContentTxCount obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON EpochContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EpochContent" (\obj -> (((((((((GHC.Base.pure EpochContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_stake")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "block_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_block_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_block_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "output")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_count"))
-- | Create a new 'EpochContent' with all required fields.
mkEpochContent :: Data.Text.Internal.Text -- ^ 'epochContentActiveStake'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentBlockCount'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentEndTime'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentEpoch'
  -> Data.Text.Internal.Text -- ^ 'epochContentFees'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentFirstBlockTime'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentLastBlockTime'
  -> Data.Text.Internal.Text -- ^ 'epochContentOutput'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentStartTime'
  -> GHC.Integer.Type.Integer -- ^ 'epochContentTxCount'
  -> EpochContent
mkEpochContent epochContentActiveStake epochContentBlockCount epochContentEndTime epochContentEpoch epochContentFees epochContentFirstBlockTime epochContentLastBlockTime epochContentOutput epochContentStartTime epochContentTxCount = EpochContent{epochContentActiveStake = epochContentActiveStake,
                                                                                                                                                                                                                                                      epochContentBlockCount = epochContentBlockCount,
                                                                                                                                                                                                                                                      epochContentEndTime = epochContentEndTime,
                                                                                                                                                                                                                                                      epochContentEpoch = epochContentEpoch,
                                                                                                                                                                                                                                                      epochContentFees = epochContentFees,
                                                                                                                                                                                                                                                      epochContentFirstBlockTime = epochContentFirstBlockTime,
                                                                                                                                                                                                                                                      epochContentLastBlockTime = epochContentLastBlockTime,
                                                                                                                                                                                                                                                      epochContentOutput = epochContentOutput,
                                                                                                                                                                                                                                                      epochContentStartTime = epochContentStartTime,
                                                                                                                                                                                                                                                      epochContentTxCount = epochContentTxCount}
