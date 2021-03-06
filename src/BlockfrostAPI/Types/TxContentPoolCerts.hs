-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxContentPoolCerts
module BlockfrostAPI.Types.TxContentPoolCerts where

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

-- | Defines the object schema located at @components.schemas.tx_content_pool_certs.items@ in the specification.
-- 
-- 
data TxContentPoolCerts = TxContentPoolCerts {
  -- | active_epoch: Epoch that the delegation becomes active
  txContentPoolCertsActiveEpoch :: GHC.Integer.Type.Integer
  -- | cert_index: Index of the certificate within the transaction
  , txContentPoolCertsCertIndex :: GHC.Integer.Type.Integer
  -- | fixed_cost: Fixed tax cost of the stake pool in Lovelaces
  , txContentPoolCertsFixedCost :: Data.Text.Internal.Text
  -- | margin_cost: Margin tax cost of the stake pool
  , txContentPoolCertsMarginCost :: Data.Scientific.Scientific
  -- | metadata
  , txContentPoolCertsMetadata :: TxContentPoolCertsMetadata'
  -- | owners
  , txContentPoolCertsOwners :: ([Data.Text.Internal.Text])
  -- | pledge: Stake pool certificate pledge in Lovelaces
  , txContentPoolCertsPledge :: Data.Text.Internal.Text
  -- | pool_id: Bech32 encoded pool ID
  , txContentPoolCertsPoolId :: Data.Text.Internal.Text
  -- | relays
  , txContentPoolCertsRelays :: ([TxContentPoolCertsRelays'])
  -- | reward_account: Bech32 reward account of the stake pool
  , txContentPoolCertsRewardAccount :: Data.Text.Internal.Text
  -- | vrf_key: VRF key hash
  , txContentPoolCertsVrfKey :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCerts
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_epoch" Data.Aeson.Types.ToJSON..= txContentPoolCertsActiveEpoch obj : "cert_index" Data.Aeson.Types.ToJSON..= txContentPoolCertsCertIndex obj : "fixed_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertsFixedCost obj : "margin_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertsMarginCost obj : "metadata" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata obj : "owners" Data.Aeson.Types.ToJSON..= txContentPoolCertsOwners obj : "pledge" Data.Aeson.Types.ToJSON..= txContentPoolCertsPledge obj : "pool_id" Data.Aeson.Types.ToJSON..= txContentPoolCertsPoolId obj : "relays" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays obj : "reward_account" Data.Aeson.Types.ToJSON..= txContentPoolCertsRewardAccount obj : "vrf_key" Data.Aeson.Types.ToJSON..= txContentPoolCertsVrfKey obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_epoch" Data.Aeson.Types.ToJSON..= txContentPoolCertsActiveEpoch obj) GHC.Base.<> (("cert_index" Data.Aeson.Types.ToJSON..= txContentPoolCertsCertIndex obj) GHC.Base.<> (("fixed_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertsFixedCost obj) GHC.Base.<> (("margin_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertsMarginCost obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata obj) GHC.Base.<> (("owners" Data.Aeson.Types.ToJSON..= txContentPoolCertsOwners obj) GHC.Base.<> (("pledge" Data.Aeson.Types.ToJSON..= txContentPoolCertsPledge obj) GHC.Base.<> (("pool_id" Data.Aeson.Types.ToJSON..= txContentPoolCertsPoolId obj) GHC.Base.<> (("relays" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays obj) GHC.Base.<> (("reward_account" Data.Aeson.Types.ToJSON..= txContentPoolCertsRewardAccount obj) GHC.Base.<> ("vrf_key" Data.Aeson.Types.ToJSON..= txContentPoolCertsVrfKey obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCerts
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCerts" (\obj -> ((((((((((GHC.Base.pure TxContentPoolCerts GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cert_index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fixed_cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "margin_cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "owners")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pledge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "relays")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reward_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "vrf_key"))
-- | Create a new 'TxContentPoolCerts' with all required fields.
mkTxContentPoolCerts :: GHC.Integer.Type.Integer -- ^ 'txContentPoolCertsActiveEpoch'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolCertsCertIndex'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsFixedCost'
  -> Data.Scientific.Scientific -- ^ 'txContentPoolCertsMarginCost'
  -> TxContentPoolCertsMetadata' -- ^ 'txContentPoolCertsMetadata'
  -> [Data.Text.Internal.Text] -- ^ 'txContentPoolCertsOwners'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsPledge'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsPoolId'
  -> [TxContentPoolCertsRelays'] -- ^ 'txContentPoolCertsRelays'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsRewardAccount'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsVrfKey'
  -> TxContentPoolCerts
mkTxContentPoolCerts txContentPoolCertsActiveEpoch txContentPoolCertsCertIndex txContentPoolCertsFixedCost txContentPoolCertsMarginCost txContentPoolCertsMetadata txContentPoolCertsOwners txContentPoolCertsPledge txContentPoolCertsPoolId txContentPoolCertsRelays txContentPoolCertsRewardAccount txContentPoolCertsVrfKey = TxContentPoolCerts{txContentPoolCertsActiveEpoch = txContentPoolCertsActiveEpoch,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsCertIndex = txContentPoolCertsCertIndex,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsFixedCost = txContentPoolCertsFixedCost,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsMarginCost = txContentPoolCertsMarginCost,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsMetadata = txContentPoolCertsMetadata,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsOwners = txContentPoolCertsOwners,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsPledge = txContentPoolCertsPledge,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsPoolId = txContentPoolCertsPoolId,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsRelays = txContentPoolCertsRelays,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsRewardAccount = txContentPoolCertsRewardAccount,
                                                                                                                                                                                                                                                                                                                                                     txContentPoolCertsVrfKey = txContentPoolCertsVrfKey}
-- | Defines the object schema located at @components.schemas.tx_content_pool_certs.items.properties.metadata@ in the specification.
-- 
-- 
data TxContentPoolCertsMetadata' = TxContentPoolCertsMetadata' {
  -- | description: Description of the stake pool
  txContentPoolCertsMetadata'Description :: Data.Text.Internal.Text
  -- | hash: Hash of the metadata file
  , txContentPoolCertsMetadata'Hash :: Data.Text.Internal.Text
  -- | homepage: Home page of the stake pool
  , txContentPoolCertsMetadata'Homepage :: Data.Text.Internal.Text
  -- | name: Name of the stake pool
  , txContentPoolCertsMetadata'Name :: Data.Text.Internal.Text
  -- | ticker: Ticker of the stake pool
  , txContentPoolCertsMetadata'Ticker :: Data.Text.Internal.Text
  -- | url: URL to the stake pool metadata
  , txContentPoolCertsMetadata'Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCertsMetadata'
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Description obj : "hash" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Hash obj : "homepage" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Homepage obj : "name" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Name obj : "ticker" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Ticker obj : "url" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Url obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Description obj) GHC.Base.<> (("hash" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Hash obj) GHC.Base.<> (("homepage" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Homepage obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Name obj) GHC.Base.<> (("ticker" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Ticker obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= txContentPoolCertsMetadata'Url obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCertsMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCertsMetadata'" (\obj -> (((((GHC.Base.pure TxContentPoolCertsMetadata' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "homepage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ticker")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'TxContentPoolCertsMetadata'' with all required fields.
mkTxContentPoolCertsMetadata' :: Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Description'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Hash'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Homepage'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Name'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Ticker'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsMetadata'Url'
  -> TxContentPoolCertsMetadata'
mkTxContentPoolCertsMetadata' txContentPoolCertsMetadata'Description txContentPoolCertsMetadata'Hash txContentPoolCertsMetadata'Homepage txContentPoolCertsMetadata'Name txContentPoolCertsMetadata'Ticker txContentPoolCertsMetadata'Url = TxContentPoolCertsMetadata'{txContentPoolCertsMetadata'Description = txContentPoolCertsMetadata'Description,
                                                                                                                                                                                                                                                                        txContentPoolCertsMetadata'Hash = txContentPoolCertsMetadata'Hash,
                                                                                                                                                                                                                                                                        txContentPoolCertsMetadata'Homepage = txContentPoolCertsMetadata'Homepage,
                                                                                                                                                                                                                                                                        txContentPoolCertsMetadata'Name = txContentPoolCertsMetadata'Name,
                                                                                                                                                                                                                                                                        txContentPoolCertsMetadata'Ticker = txContentPoolCertsMetadata'Ticker,
                                                                                                                                                                                                                                                                        txContentPoolCertsMetadata'Url = txContentPoolCertsMetadata'Url}
-- | Defines the object schema located at @components.schemas.tx_content_pool_certs.items.properties.relays.items@ in the specification.
-- 
-- 
data TxContentPoolCertsRelays' = TxContentPoolCertsRelays' {
  -- | dns: DNS name of the relay
  txContentPoolCertsRelays'Dns :: Data.Text.Internal.Text
  -- | dns_srv: DNS SRV entry of the relay
  , txContentPoolCertsRelays'DnsSrv :: Data.Text.Internal.Text
  -- | ipv4: IPv4 address of the relay
  , txContentPoolCertsRelays'Ipv4 :: Data.Text.Internal.Text
  -- | ipv6: IPv6 address of the relay
  , txContentPoolCertsRelays'Ipv6 :: Data.Text.Internal.Text
  -- | port: Network port of the relay
  , txContentPoolCertsRelays'Port :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCertsRelays'
    where toJSON obj = Data.Aeson.Types.Internal.object ("dns" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Dns obj : "dns_srv" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'DnsSrv obj : "ipv4" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Ipv4 obj : "ipv6" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Ipv6 obj : "port" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Port obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("dns" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Dns obj) GHC.Base.<> (("dns_srv" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'DnsSrv obj) GHC.Base.<> (("ipv4" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Ipv4 obj) GHC.Base.<> (("ipv6" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Ipv6 obj) GHC.Base.<> ("port" Data.Aeson.Types.ToJSON..= txContentPoolCertsRelays'Port obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCertsRelays'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCertsRelays'" (\obj -> ((((GHC.Base.pure TxContentPoolCertsRelays' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_srv")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv6")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "port"))
-- | Create a new 'TxContentPoolCertsRelays'' with all required fields.
mkTxContentPoolCertsRelays' :: Data.Text.Internal.Text -- ^ 'txContentPoolCertsRelays'Dns'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsRelays'DnsSrv'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsRelays'Ipv4'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertsRelays'Ipv6'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolCertsRelays'Port'
  -> TxContentPoolCertsRelays'
mkTxContentPoolCertsRelays' txContentPoolCertsRelays'Dns txContentPoolCertsRelays'DnsSrv txContentPoolCertsRelays'Ipv4 txContentPoolCertsRelays'Ipv6 txContentPoolCertsRelays'Port = TxContentPoolCertsRelays'{txContentPoolCertsRelays'Dns = txContentPoolCertsRelays'Dns,
                                                                                                                                                                                                               txContentPoolCertsRelays'DnsSrv = txContentPoolCertsRelays'DnsSrv,
                                                                                                                                                                                                               txContentPoolCertsRelays'Ipv4 = txContentPoolCertsRelays'Ipv4,
                                                                                                                                                                                                               txContentPoolCertsRelays'Ipv6 = txContentPoolCertsRelays'Ipv6,
                                                                                                                                                                                                               txContentPoolCertsRelays'Port = txContentPoolCertsRelays'Port}
-- | Defines an alias for the schema located at @components.schemas.tx_content_pool_certs@ in the specification.
-- 
-- 
-- XXX: collision
-- type TxContentPoolCerts = [TxContentPoolCerts]
type TxContentPoolCerts' = [TxContentPoolCerts]
