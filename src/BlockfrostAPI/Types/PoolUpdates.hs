-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolUpdates
module BlockfrostAPI.Types.PoolUpdates where

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

-- | Defines the object schema located at @components.schemas.pool_updates.items@ in the specification.
-- 
-- 
data PoolUpdates = PoolUpdates {
  -- | action: Action in the certificate
  poolUpdatesAction :: PoolUpdatesAction'
  -- | cert_index: Certificate within the transaction
  , poolUpdatesCertIndex :: GHC.Integer.Type.Integer
  -- | tx_hash: Transaction ID
  , poolUpdatesTxHash :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolUpdates
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= poolUpdatesAction obj : "cert_index" Data.Aeson.Types.ToJSON..= poolUpdatesCertIndex obj : "tx_hash" Data.Aeson.Types.ToJSON..= poolUpdatesTxHash obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("action" Data.Aeson.Types.ToJSON..= poolUpdatesAction obj) GHC.Base.<> (("cert_index" Data.Aeson.Types.ToJSON..= poolUpdatesCertIndex obj) GHC.Base.<> ("tx_hash" Data.Aeson.Types.ToJSON..= poolUpdatesTxHash obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PoolUpdates
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolUpdates" (\obj -> ((GHC.Base.pure PoolUpdates GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cert_index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tx_hash"))
-- | Create a new 'PoolUpdates' with all required fields.
mkPoolUpdates :: PoolUpdatesAction' -- ^ 'poolUpdatesAction'
  -> GHC.Integer.Type.Integer -- ^ 'poolUpdatesCertIndex'
  -> Data.Text.Internal.Text -- ^ 'poolUpdatesTxHash'
  -> PoolUpdates
mkPoolUpdates poolUpdatesAction poolUpdatesCertIndex poolUpdatesTxHash = PoolUpdates{poolUpdatesAction = poolUpdatesAction,
                                                                                     poolUpdatesCertIndex = poolUpdatesCertIndex,
                                                                                     poolUpdatesTxHash = poolUpdatesTxHash}
-- | Defines the enum schema located at @components.schemas.pool_updates.items.properties.action@ in the specification.
-- 
-- Action in the certificate
data PoolUpdatesAction' =
   PoolUpdatesAction'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PoolUpdatesAction'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PoolUpdatesAction'EnumRegistered -- ^ Represents the JSON value @"registered"@
  | PoolUpdatesAction'EnumDeregistered -- ^ Represents the JSON value @"deregistered"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolUpdatesAction'
    where toJSON (PoolUpdatesAction'Other val) = val
          toJSON (PoolUpdatesAction'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PoolUpdatesAction'EnumRegistered) = "registered"
          toJSON (PoolUpdatesAction'EnumDeregistered) = "deregistered"
instance Data.Aeson.Types.FromJSON.FromJSON PoolUpdatesAction'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "registered" -> PoolUpdatesAction'EnumRegistered
                                            | val GHC.Classes.== "deregistered" -> PoolUpdatesAction'EnumDeregistered
                                            | GHC.Base.otherwise -> PoolUpdatesAction'Other val)
-- | Defines an alias for the schema located at @components.schemas.pool_updates@ in the specification.
-- 
-- 
-- XXX: collision
-- type PoolUpdates = [PoolUpdates]
type PoolUpdates' = [PoolUpdates]
