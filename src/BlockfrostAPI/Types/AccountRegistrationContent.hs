-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountRegistrationContent
module BlockfrostAPI.Types.AccountRegistrationContent where

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

-- | Defines the object schema located at @components.schemas.account_registration_content.items@ in the specification.
-- 
-- 
data AccountRegistrationContent = AccountRegistrationContent {
  -- | action: Action in the certificate
  accountRegistrationContentAction :: AccountRegistrationContentAction'
  -- | tx_hash: Hash of the transaction containing the (de)registration certificate
  , accountRegistrationContentTxHash :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountRegistrationContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= accountRegistrationContentAction obj : "tx_hash" Data.Aeson.Types.ToJSON..= accountRegistrationContentTxHash obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("action" Data.Aeson.Types.ToJSON..= accountRegistrationContentAction obj) GHC.Base.<> ("tx_hash" Data.Aeson.Types.ToJSON..= accountRegistrationContentTxHash obj))
instance Data.Aeson.Types.FromJSON.FromJSON AccountRegistrationContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountRegistrationContent" (\obj -> (GHC.Base.pure AccountRegistrationContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_hash"))
-- | Create a new 'AccountRegistrationContent' with all required fields.
mkAccountRegistrationContent :: AccountRegistrationContentAction' -- ^ 'accountRegistrationContentAction'
  -> Data.Text.Internal.Text -- ^ 'accountRegistrationContentTxHash'
  -> AccountRegistrationContent
mkAccountRegistrationContent accountRegistrationContentAction accountRegistrationContentTxHash = AccountRegistrationContent{accountRegistrationContentAction = accountRegistrationContentAction,
                                                                                                                            accountRegistrationContentTxHash = accountRegistrationContentTxHash}
-- | Defines the enum schema located at @components.schemas.account_registration_content.items.properties.action@ in the specification.
-- 
-- Action in the certificate
data AccountRegistrationContentAction' =
   AccountRegistrationContentAction'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AccountRegistrationContentAction'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AccountRegistrationContentAction'EnumRegistered -- ^ Represents the JSON value @"registered"@
  | AccountRegistrationContentAction'EnumDeregistered -- ^ Represents the JSON value @"deregistered"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountRegistrationContentAction'
    where toJSON (AccountRegistrationContentAction'Other val) = val
          toJSON (AccountRegistrationContentAction'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AccountRegistrationContentAction'EnumRegistered) = "registered"
          toJSON (AccountRegistrationContentAction'EnumDeregistered) = "deregistered"
instance Data.Aeson.Types.FromJSON.FromJSON AccountRegistrationContentAction'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "registered" -> AccountRegistrationContentAction'EnumRegistered
                                            | val GHC.Classes.== "deregistered" -> AccountRegistrationContentAction'EnumDeregistered
                                            | GHC.Base.otherwise -> AccountRegistrationContentAction'Other val)
-- | Defines an alias for the schema located at @components.schemas.account_registration_content@ in the specification.
-- 
-- 
-- XXX: collision
-- type AccountRegistrationContent = [AccountRegistrationContent]
type AccountRegistrationContent' = [AccountRegistrationContent]
