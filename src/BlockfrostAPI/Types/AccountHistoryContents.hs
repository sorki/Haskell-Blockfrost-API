-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountHistoryContents
module BlockfrostAPI.Types.AccountHistoryContents where

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

-- | Defines the object schema located at @components.schemas.account_history_contents.items@ in the specification.
-- 
-- 
data AccountHistoryContents = AccountHistoryContents {
  -- | active_epoch: Epoch in which the stake was active
  accountHistoryContentsActiveEpoch :: GHC.Integer.Type.Integer
  -- | amount: Stake amount in Lovelaces
  , accountHistoryContentsAmount :: Data.Text.Internal.Text
  -- | pool_id: Bech32 ID of pool being delegated to
  , accountHistoryContentsPoolId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountHistoryContents
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_epoch" Data.Aeson.Types.ToJSON..= accountHistoryContentsActiveEpoch obj : "amount" Data.Aeson.Types.ToJSON..= accountHistoryContentsAmount obj : "pool_id" Data.Aeson.Types.ToJSON..= accountHistoryContentsPoolId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_epoch" Data.Aeson.Types.ToJSON..= accountHistoryContentsActiveEpoch obj) GHC.Base.<> (("amount" Data.Aeson.Types.ToJSON..= accountHistoryContentsAmount obj) GHC.Base.<> ("pool_id" Data.Aeson.Types.ToJSON..= accountHistoryContentsPoolId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountHistoryContents
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountHistoryContents" (\obj -> ((GHC.Base.pure AccountHistoryContents GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id"))
-- | Create a new 'AccountHistoryContents' with all required fields.
mkAccountHistoryContents :: GHC.Integer.Type.Integer -- ^ 'accountHistoryContentsActiveEpoch'
  -> Data.Text.Internal.Text -- ^ 'accountHistoryContentsAmount'
  -> Data.Text.Internal.Text -- ^ 'accountHistoryContentsPoolId'
  -> AccountHistoryContents
mkAccountHistoryContents accountHistoryContentsActiveEpoch accountHistoryContentsAmount accountHistoryContentsPoolId = AccountHistoryContents{accountHistoryContentsActiveEpoch = accountHistoryContentsActiveEpoch,
                                                                                                                                              accountHistoryContentsAmount = accountHistoryContentsAmount,
                                                                                                                                              accountHistoryContentsPoolId = accountHistoryContentsPoolId}
-- | Defines an alias for the schema located at @components.schemas.account_history_contents@ in the specification.
-- 
-- 
-- XXX: collision
-- type AccountHistoryContents = [AccountHistoryContents]
type AccountHistoryContents' = [AccountHistoryContents]
