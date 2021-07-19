-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EpochStakePoolContent
module BlockfrostAPI.Types.EpochStakePoolContent where

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

-- | Defines the object schema located at @components.schemas.epoch_stake_pool_content.items@ in the specification.
-- 
-- 
data EpochStakePoolContent = EpochStakePoolContent {
  -- | amount: Amount of active delegated stake in Lovelaces
  epochStakePoolContentAmount :: Data.Text.Internal.Text
  -- | stake_address: Stake address
  , epochStakePoolContentStakeAddress :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EpochStakePoolContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= epochStakePoolContentAmount obj : "stake_address" Data.Aeson.Types.ToJSON..= epochStakePoolContentStakeAddress obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= epochStakePoolContentAmount obj) GHC.Base.<> ("stake_address" Data.Aeson.Types.ToJSON..= epochStakePoolContentStakeAddress obj))
instance Data.Aeson.Types.FromJSON.FromJSON EpochStakePoolContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EpochStakePoolContent" (\obj -> (GHC.Base.pure EpochStakePoolContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "stake_address"))
-- | Create a new 'EpochStakePoolContent' with all required fields.
mkEpochStakePoolContent :: Data.Text.Internal.Text -- ^ 'epochStakePoolContentAmount'
  -> Data.Text.Internal.Text -- ^ 'epochStakePoolContentStakeAddress'
  -> EpochStakePoolContent
mkEpochStakePoolContent epochStakePoolContentAmount epochStakePoolContentStakeAddress = EpochStakePoolContent{epochStakePoolContentAmount = epochStakePoolContentAmount,
                                                                                                              epochStakePoolContentStakeAddress = epochStakePoolContentStakeAddress}
-- | Defines an alias for the schema located at @components.schemas.epoch_stake_pool_content@ in the specification.
-- 
-- 
-- XXX: collision
-- type EpochStakePoolContent = [EpochStakePoolContent]
type EpochStakePoolContent' = [EpochStakePoolContent]
