-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountHistoryContent
module BlockfrostAPI.Types.AccountHistoryContent where

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

-- | Defines the object schema located at @components.schemas.account_history_content@ in the specification.
-- 
-- 
data AccountHistoryContent = AccountHistoryContent {
  -- | active_epoch: Epoch in which the stake was active
  accountHistoryContentActiveEpoch :: GHC.Integer.Type.Integer
  -- | amount: Stake amount in Lovelaces
  , accountHistoryContentAmount :: Data.Text.Internal.Text
  -- | pool_id: Bech32 ID of pool being delegated to
  , accountHistoryContentPoolId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountHistoryContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_epoch" Data.Aeson.Types.ToJSON..= accountHistoryContentActiveEpoch obj : "amount" Data.Aeson.Types.ToJSON..= accountHistoryContentAmount obj : "pool_id" Data.Aeson.Types.ToJSON..= accountHistoryContentPoolId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_epoch" Data.Aeson.Types.ToJSON..= accountHistoryContentActiveEpoch obj) GHC.Base.<> (("amount" Data.Aeson.Types.ToJSON..= accountHistoryContentAmount obj) GHC.Base.<> ("pool_id" Data.Aeson.Types.ToJSON..= accountHistoryContentPoolId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountHistoryContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountHistoryContent" (\obj -> ((GHC.Base.pure AccountHistoryContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id"))
-- | Create a new 'AccountHistoryContent' with all required fields.
mkAccountHistoryContent :: GHC.Integer.Type.Integer -- ^ 'accountHistoryContentActiveEpoch'
  -> Data.Text.Internal.Text -- ^ 'accountHistoryContentAmount'
  -> Data.Text.Internal.Text -- ^ 'accountHistoryContentPoolId'
  -> AccountHistoryContent
mkAccountHistoryContent accountHistoryContentActiveEpoch accountHistoryContentAmount accountHistoryContentPoolId = AccountHistoryContent{accountHistoryContentActiveEpoch = accountHistoryContentActiveEpoch,
                                                                                                                                         accountHistoryContentAmount = accountHistoryContentAmount,
                                                                                                                                         accountHistoryContentPoolId = accountHistoryContentPoolId}
