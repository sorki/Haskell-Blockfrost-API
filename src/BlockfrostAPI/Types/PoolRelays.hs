-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolRelays
module BlockfrostAPI.Types.PoolRelays where

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

-- | Defines the object schema located at @components.schemas.pool_relays.items@ in the specification.
-- 
-- 
data PoolRelays = PoolRelays {
  -- | dns: DNS name of the relay
  poolRelaysDns :: Data.Text.Internal.Text
  -- | dns_srv: DNS SRV entry of the relay
  , poolRelaysDnsSrv :: Data.Text.Internal.Text
  -- | ipv4: IPv4 address of the relay
  , poolRelaysIpv4 :: Data.Text.Internal.Text
  -- | ipv6: IPv6 address of the relay
  , poolRelaysIpv6 :: Data.Text.Internal.Text
  -- | port: Network port of the relay
  , poolRelaysPort :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolRelays
    where toJSON obj = Data.Aeson.Types.Internal.object ("dns" Data.Aeson.Types.ToJSON..= poolRelaysDns obj : "dns_srv" Data.Aeson.Types.ToJSON..= poolRelaysDnsSrv obj : "ipv4" Data.Aeson.Types.ToJSON..= poolRelaysIpv4 obj : "ipv6" Data.Aeson.Types.ToJSON..= poolRelaysIpv6 obj : "port" Data.Aeson.Types.ToJSON..= poolRelaysPort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("dns" Data.Aeson.Types.ToJSON..= poolRelaysDns obj) GHC.Base.<> (("dns_srv" Data.Aeson.Types.ToJSON..= poolRelaysDnsSrv obj) GHC.Base.<> (("ipv4" Data.Aeson.Types.ToJSON..= poolRelaysIpv4 obj) GHC.Base.<> (("ipv6" Data.Aeson.Types.ToJSON..= poolRelaysIpv6 obj) GHC.Base.<> ("port" Data.Aeson.Types.ToJSON..= poolRelaysPort obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PoolRelays
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolRelays" (\obj -> ((((GHC.Base.pure PoolRelays GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_srv")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv6")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "port"))
-- | Create a new 'PoolRelays' with all required fields.
mkPoolRelays :: Data.Text.Internal.Text -- ^ 'poolRelaysDns'
  -> Data.Text.Internal.Text -- ^ 'poolRelaysDnsSrv'
  -> Data.Text.Internal.Text -- ^ 'poolRelaysIpv4'
  -> Data.Text.Internal.Text -- ^ 'poolRelaysIpv6'
  -> GHC.Integer.Type.Integer -- ^ 'poolRelaysPort'
  -> PoolRelays
mkPoolRelays poolRelaysDns poolRelaysDnsSrv poolRelaysIpv4 poolRelaysIpv6 poolRelaysPort = PoolRelays{poolRelaysDns = poolRelaysDns,
                                                                                                      poolRelaysDnsSrv = poolRelaysDnsSrv,
                                                                                                      poolRelaysIpv4 = poolRelaysIpv4,
                                                                                                      poolRelaysIpv6 = poolRelaysIpv6,
                                                                                                      poolRelaysPort = poolRelaysPort}
-- | Defines an alias for the schema located at @components.schemas.pool_relays@ in the specification.
-- 
-- 
-- XXX: collision
-- type PoolRelays = [PoolRelays]
type PoolRelays' = [PoolRelays]
