-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema NutlinkAddressTickers
module BlockfrostAPI.Types.NutlinkAddressTickers where

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

-- | Defines the object schema located at @components.schemas.nutlink_address_tickers.items@ in the specification.
-- 
-- 
data NutlinkAddressTickers = NutlinkAddressTickers {
  -- | count: Number of ticker records
  nutlinkAddressTickersCount :: GHC.Integer.Type.Integer
  -- | latest_block: Block height of the latest record
  , nutlinkAddressTickersLatestBlock :: GHC.Integer.Type.Integer
  -- | name: Name of the ticker
  , nutlinkAddressTickersName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NutlinkAddressTickers
    where toJSON obj = Data.Aeson.Types.Internal.object ("count" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersCount obj : "latest_block" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersLatestBlock obj : "name" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersName obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("count" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersCount obj) GHC.Base.<> (("latest_block" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersLatestBlock obj) GHC.Base.<> ("name" Data.Aeson.Types.ToJSON..= nutlinkAddressTickersName obj)))
instance Data.Aeson.Types.FromJSON.FromJSON NutlinkAddressTickers
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NutlinkAddressTickers" (\obj -> ((GHC.Base.pure NutlinkAddressTickers GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latest_block")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))
-- | Create a new 'NutlinkAddressTickers' with all required fields.
mkNutlinkAddressTickers :: GHC.Integer.Type.Integer -- ^ 'nutlinkAddressTickersCount'
  -> GHC.Integer.Type.Integer -- ^ 'nutlinkAddressTickersLatestBlock'
  -> Data.Text.Internal.Text -- ^ 'nutlinkAddressTickersName'
  -> NutlinkAddressTickers
mkNutlinkAddressTickers nutlinkAddressTickersCount nutlinkAddressTickersLatestBlock nutlinkAddressTickersName = NutlinkAddressTickers{nutlinkAddressTickersCount = nutlinkAddressTickersCount,
                                                                                                                                      nutlinkAddressTickersLatestBlock = nutlinkAddressTickersLatestBlock,
                                                                                                                                      nutlinkAddressTickersName = nutlinkAddressTickersName}
-- | Defines an alias for the schema located at @components.schemas.nutlink_address_tickers@ in the specification.
-- 
-- 
-- XXX: collision
-- type NutlinkAddressTickers = [NutlinkAddressTickers]
type NutlinkAddressTickers' = [NutlinkAddressTickers]
