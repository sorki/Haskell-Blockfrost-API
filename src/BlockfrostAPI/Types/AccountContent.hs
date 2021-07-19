-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountContent
module BlockfrostAPI.Types.AccountContent where

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

-- | Defines the object schema located at @components.schemas.account_content@ in the specification.
-- 
-- 
data AccountContent = AccountContent {
  -- | active: Registration state of an account
  accountContentActive :: GHC.Types.Bool
  -- | active_epoch: Epoch of the most recent action - registration or deregistration
  , accountContentActiveEpoch :: GHC.Integer.Type.Integer
  -- | controlled_amount: Balance of the account in Lovelaces
  , accountContentControlledAmount :: Data.Text.Internal.Text
  -- | pool_id: Bech32 pool ID that owns the account
  , accountContentPoolId :: Data.Text.Internal.Text
  -- | reserves_sum: Sum of all  funds from reserves for the account in the Lovelaces
  , accountContentReservesSum :: Data.Text.Internal.Text
  -- | rewards_sum: Sum of all rewards for the account in the Lovelaces
  , accountContentRewardsSum :: Data.Text.Internal.Text
  -- | stake_address: Bech32 stake address
  , accountContentStakeAddress :: Data.Text.Internal.Text
  -- | treasury_sum: Sum of all funds from treasury for the account in the Lovelaces
  , accountContentTreasurySum :: Data.Text.Internal.Text
  -- | withdrawable_amount: Sum of available rewards that haven\'t been withdrawn yet for the account in the Lovelaces
  , accountContentWithdrawableAmount :: Data.Text.Internal.Text
  -- | withdrawals_sum: Sum of all the withdrawals for the account in Lovelaces
  , accountContentWithdrawalsSum :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= accountContentActive obj : "active_epoch" Data.Aeson.Types.ToJSON..= accountContentActiveEpoch obj : "controlled_amount" Data.Aeson.Types.ToJSON..= accountContentControlledAmount obj : "pool_id" Data.Aeson.Types.ToJSON..= accountContentPoolId obj : "reserves_sum" Data.Aeson.Types.ToJSON..= accountContentReservesSum obj : "rewards_sum" Data.Aeson.Types.ToJSON..= accountContentRewardsSum obj : "stake_address" Data.Aeson.Types.ToJSON..= accountContentStakeAddress obj : "treasury_sum" Data.Aeson.Types.ToJSON..= accountContentTreasurySum obj : "withdrawable_amount" Data.Aeson.Types.ToJSON..= accountContentWithdrawableAmount obj : "withdrawals_sum" Data.Aeson.Types.ToJSON..= accountContentWithdrawalsSum obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= accountContentActive obj) GHC.Base.<> (("active_epoch" Data.Aeson.Types.ToJSON..= accountContentActiveEpoch obj) GHC.Base.<> (("controlled_amount" Data.Aeson.Types.ToJSON..= accountContentControlledAmount obj) GHC.Base.<> (("pool_id" Data.Aeson.Types.ToJSON..= accountContentPoolId obj) GHC.Base.<> (("reserves_sum" Data.Aeson.Types.ToJSON..= accountContentReservesSum obj) GHC.Base.<> (("rewards_sum" Data.Aeson.Types.ToJSON..= accountContentRewardsSum obj) GHC.Base.<> (("stake_address" Data.Aeson.Types.ToJSON..= accountContentStakeAddress obj) GHC.Base.<> (("treasury_sum" Data.Aeson.Types.ToJSON..= accountContentTreasurySum obj) GHC.Base.<> (("withdrawable_amount" Data.Aeson.Types.ToJSON..= accountContentWithdrawableAmount obj) GHC.Base.<> ("withdrawals_sum" Data.Aeson.Types.ToJSON..= accountContentWithdrawalsSum obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountContent" (\obj -> (((((((((GHC.Base.pure AccountContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "controlled_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reserves_sum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rewards_sum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "stake_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "treasury_sum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "withdrawable_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "withdrawals_sum"))
-- | Create a new 'AccountContent' with all required fields.
mkAccountContent :: GHC.Types.Bool -- ^ 'accountContentActive'
  -> GHC.Integer.Type.Integer -- ^ 'accountContentActiveEpoch'
  -> Data.Text.Internal.Text -- ^ 'accountContentControlledAmount'
  -> Data.Text.Internal.Text -- ^ 'accountContentPoolId'
  -> Data.Text.Internal.Text -- ^ 'accountContentReservesSum'
  -> Data.Text.Internal.Text -- ^ 'accountContentRewardsSum'
  -> Data.Text.Internal.Text -- ^ 'accountContentStakeAddress'
  -> Data.Text.Internal.Text -- ^ 'accountContentTreasurySum'
  -> Data.Text.Internal.Text -- ^ 'accountContentWithdrawableAmount'
  -> Data.Text.Internal.Text -- ^ 'accountContentWithdrawalsSum'
  -> AccountContent
mkAccountContent accountContentActive accountContentActiveEpoch accountContentControlledAmount accountContentPoolId accountContentReservesSum accountContentRewardsSum accountContentStakeAddress accountContentTreasurySum accountContentWithdrawableAmount accountContentWithdrawalsSum = AccountContent{accountContentActive = accountContentActive,
                                                                                                                                                                                                                                                                                                           accountContentActiveEpoch = accountContentActiveEpoch,
                                                                                                                                                                                                                                                                                                           accountContentControlledAmount = accountContentControlledAmount,
                                                                                                                                                                                                                                                                                                           accountContentPoolId = accountContentPoolId,
                                                                                                                                                                                                                                                                                                           accountContentReservesSum = accountContentReservesSum,
                                                                                                                                                                                                                                                                                                           accountContentRewardsSum = accountContentRewardsSum,
                                                                                                                                                                                                                                                                                                           accountContentStakeAddress = accountContentStakeAddress,
                                                                                                                                                                                                                                                                                                           accountContentTreasurySum = accountContentTreasurySum,
                                                                                                                                                                                                                                                                                                           accountContentWithdrawableAmount = accountContentWithdrawableAmount,
                                                                                                                                                                                                                                                                                                           accountContentWithdrawalsSum = accountContentWithdrawalsSum}
