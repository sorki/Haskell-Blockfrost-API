-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EpochStakeContent
module BlockfrostAPI.Types.EpochStakeContent where

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

-- | Defines the object schema located at @components.schemas.epoch_stake_content.items@ in the specification.
-- 
-- 
data EpochStakeContent = EpochStakeContent {
  -- | amount: Amount of active delegated stake in Lovelaces
  epochStakeContentAmount :: Data.Text.Internal.Text
  -- | pool_id: Bech32 prefix of the pool delegated to
  , epochStakeContentPoolId :: Data.Text.Internal.Text
  -- | stake_address: Stake address
  , epochStakeContentStakeAddress :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EpochStakeContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= epochStakeContentAmount obj : "pool_id" Data.Aeson.Types.ToJSON..= epochStakeContentPoolId obj : "stake_address" Data.Aeson.Types.ToJSON..= epochStakeContentStakeAddress obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= epochStakeContentAmount obj) GHC.Base.<> (("pool_id" Data.Aeson.Types.ToJSON..= epochStakeContentPoolId obj) GHC.Base.<> ("stake_address" Data.Aeson.Types.ToJSON..= epochStakeContentStakeAddress obj)))
instance Data.Aeson.Types.FromJSON.FromJSON EpochStakeContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EpochStakeContent" (\obj -> ((GHC.Base.pure EpochStakeContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "stake_address"))
-- | Create a new 'EpochStakeContent' with all required fields.
mkEpochStakeContent :: Data.Text.Internal.Text -- ^ 'epochStakeContentAmount'
  -> Data.Text.Internal.Text -- ^ 'epochStakeContentPoolId'
  -> Data.Text.Internal.Text -- ^ 'epochStakeContentStakeAddress'
  -> EpochStakeContent
mkEpochStakeContent epochStakeContentAmount epochStakeContentPoolId epochStakeContentStakeAddress = EpochStakeContent{epochStakeContentAmount = epochStakeContentAmount,
                                                                                                                      epochStakeContentPoolId = epochStakeContentPoolId,
                                                                                                                      epochStakeContentStakeAddress = epochStakeContentStakeAddress}
-- | Defines an alias for the schema located at @components.schemas.epoch_stake_content@ in the specification.
-- 
-- 
-- XXX: collision
-- type EpochStakeContent = [EpochStakeContent]
type EpochStakeContent' = [EpochStakeContent]
