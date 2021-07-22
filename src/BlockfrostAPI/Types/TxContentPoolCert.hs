-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxContentPoolCert
module BlockfrostAPI.Types.TxContentPoolCert where

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

-- | Defines the object schema located at @components.schemas.tx_content_pool_cert@ in the specification.
-- 
-- 
data TxContentPoolCert = TxContentPoolCert {
  -- | active_epoch: Epoch that the delegation becomes active
  txContentPoolCertActiveEpoch :: GHC.Integer.Type.Integer
  -- | cert_index: Index of the certificate within the transaction
  , txContentPoolCertCertIndex :: GHC.Integer.Type.Integer
  -- | fixed_cost: Fixed tax cost of the stake pool in Lovelaces
  , txContentPoolCertFixedCost :: Data.Text.Internal.Text
  -- | margin_cost: Margin tax cost of the stake pool
  , txContentPoolCertMarginCost :: Data.Scientific.Scientific
  -- | metadata
  , txContentPoolCertMetadata :: (GHC.Maybe.Maybe TxContentPoolCertMetadata')
  -- | owners
  , txContentPoolCertOwners :: ([Data.Text.Internal.Text])
  -- | pledge: Stake pool certificate pledge in Lovelaces
  , txContentPoolCertPledge :: Data.Text.Internal.Text
  -- | pool_id: Bech32 encoded pool ID
  , txContentPoolCertPoolId :: Data.Text.Internal.Text
  -- | relays
  , txContentPoolCertRelays :: ([TxContentPoolCertRelays'])
  -- | reward_account: Bech32 reward account of the stake pool
  , txContentPoolCertRewardAccount :: Data.Text.Internal.Text
  -- | vrf_key: VRF key hash
  , txContentPoolCertVrfKey :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCert
    where toJSON obj = Data.Aeson.Types.Internal.object ("active_epoch" Data.Aeson.Types.ToJSON..= txContentPoolCertActiveEpoch obj : "cert_index" Data.Aeson.Types.ToJSON..= txContentPoolCertCertIndex obj : "fixed_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertFixedCost obj : "margin_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertMarginCost obj : "metadata" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata obj : "owners" Data.Aeson.Types.ToJSON..= txContentPoolCertOwners obj : "pledge" Data.Aeson.Types.ToJSON..= txContentPoolCertPledge obj : "pool_id" Data.Aeson.Types.ToJSON..= txContentPoolCertPoolId obj : "relays" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays obj : "reward_account" Data.Aeson.Types.ToJSON..= txContentPoolCertRewardAccount obj : "vrf_key" Data.Aeson.Types.ToJSON..= txContentPoolCertVrfKey obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active_epoch" Data.Aeson.Types.ToJSON..= txContentPoolCertActiveEpoch obj) GHC.Base.<> (("cert_index" Data.Aeson.Types.ToJSON..= txContentPoolCertCertIndex obj) GHC.Base.<> (("fixed_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertFixedCost obj) GHC.Base.<> (("margin_cost" Data.Aeson.Types.ToJSON..= txContentPoolCertMarginCost obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata obj) GHC.Base.<> (("owners" Data.Aeson.Types.ToJSON..= txContentPoolCertOwners obj) GHC.Base.<> (("pledge" Data.Aeson.Types.ToJSON..= txContentPoolCertPledge obj) GHC.Base.<> (("pool_id" Data.Aeson.Types.ToJSON..= txContentPoolCertPoolId obj) GHC.Base.<> (("relays" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays obj) GHC.Base.<> (("reward_account" Data.Aeson.Types.ToJSON..= txContentPoolCertRewardAccount obj) GHC.Base.<> ("vrf_key" Data.Aeson.Types.ToJSON..= txContentPoolCertVrfKey obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCert
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCert" (\obj -> ((((((((((GHC.Base.pure TxContentPoolCert GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active_epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cert_index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fixed_cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "margin_cost")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "owners")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pledge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "relays")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reward_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "vrf_key"))
-- | Create a new 'TxContentPoolCert' with all required fields.
mkTxContentPoolCert :: GHC.Integer.Type.Integer -- ^ 'txContentPoolCertActiveEpoch'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolCertCertIndex'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertFixedCost'
  -> Data.Scientific.Scientific -- ^ 'txContentPoolCertMarginCost'
  -> GHC.Maybe.Maybe TxContentPoolCertMetadata' -- ^ 'txContentPoolCertMetadata'
  -> [Data.Text.Internal.Text] -- ^ 'txContentPoolCertOwners'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertPledge'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertPoolId'
  -> [TxContentPoolCertRelays'] -- ^ 'txContentPoolCertRelays'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertRewardAccount'
  -> Data.Text.Internal.Text -- ^ 'txContentPoolCertVrfKey'
  -> TxContentPoolCert
mkTxContentPoolCert txContentPoolCertActiveEpoch txContentPoolCertCertIndex txContentPoolCertFixedCost txContentPoolCertMarginCost txContentPoolCertMetadata txContentPoolCertOwners txContentPoolCertPledge txContentPoolCertPoolId txContentPoolCertRelays txContentPoolCertRewardAccount txContentPoolCertVrfKey = TxContentPoolCert{txContentPoolCertActiveEpoch = txContentPoolCertActiveEpoch,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertCertIndex = txContentPoolCertCertIndex,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertFixedCost = txContentPoolCertFixedCost,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertMarginCost = txContentPoolCertMarginCost,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertMetadata = txContentPoolCertMetadata,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertOwners = txContentPoolCertOwners,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertPledge = txContentPoolCertPledge,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertPoolId = txContentPoolCertPoolId,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertRelays = txContentPoolCertRelays,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertRewardAccount = txContentPoolCertRewardAccount,
                                                                                                                                                                                                                                                                                                                                        txContentPoolCertVrfKey = txContentPoolCertVrfKey}
-- | Defines the object schema located at @components.schemas.tx_content_pool_cert.properties.metadata@ in the specification.
-- 
-- 
data TxContentPoolCertMetadata' = TxContentPoolCertMetadata' {
  -- | description: Description of the stake pool
  txContentPoolCertMetadata'Description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | hash: Hash of the metadata file
  , txContentPoolCertMetadata'Hash :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | homepage: Home page of the stake pool
  , txContentPoolCertMetadata'Homepage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | name: Name of the stake pool
  , txContentPoolCertMetadata'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ticker: Ticker of the stake pool
  , txContentPoolCertMetadata'Ticker :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: URL to the stake pool metadata
  , txContentPoolCertMetadata'Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCertMetadata'
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Description obj : "hash" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Hash obj : "homepage" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Homepage obj : "name" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Name obj : "ticker" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Ticker obj : "url" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Url obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Description obj) GHC.Base.<> (("hash" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Hash obj) GHC.Base.<> (("homepage" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Homepage obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Name obj) GHC.Base.<> (("ticker" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Ticker obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= txContentPoolCertMetadata'Url obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCertMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCertMetadata'" (\obj -> (((((GHC.Base.pure TxContentPoolCertMetadata' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "homepage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ticker")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'TxContentPoolCertMetadata'' with all required fields.
mkTxContentPoolCertMetadata' :: GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Description'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Hash'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Homepage'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Name'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Ticker'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertMetadata'Url'
  -> TxContentPoolCertMetadata'
mkTxContentPoolCertMetadata' txContentPoolCertMetadata'Description txContentPoolCertMetadata'Hash txContentPoolCertMetadata'Homepage txContentPoolCertMetadata'Name txContentPoolCertMetadata'Ticker txContentPoolCertMetadata'Url = TxContentPoolCertMetadata'{txContentPoolCertMetadata'Description = txContentPoolCertMetadata'Description,
                                                                                                                                                                                                                                                                txContentPoolCertMetadata'Hash = txContentPoolCertMetadata'Hash,
                                                                                                                                                                                                                                                                txContentPoolCertMetadata'Homepage = txContentPoolCertMetadata'Homepage,
                                                                                                                                                                                                                                                                txContentPoolCertMetadata'Name = txContentPoolCertMetadata'Name,
                                                                                                                                                                                                                                                                txContentPoolCertMetadata'Ticker = txContentPoolCertMetadata'Ticker,
                                                                                                                                                                                                                                                                txContentPoolCertMetadata'Url = txContentPoolCertMetadata'Url}
-- | Defines the object schema located at @components.schemas.tx_content_pool_cert.properties.relays.items@ in the specification.
-- 
-- 
data TxContentPoolCertRelays' = TxContentPoolCertRelays' {
  -- | dns: DNS name of the relay
  txContentPoolCertRelays'Dns :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | dns_srv: DNS SRV entry of the relay
  , txContentPoolCertRelays'DnsSrv :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ipv4: IPv4 address of the relay
  , txContentPoolCertRelays'Ipv4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ipv6: IPv6 address of the relay
  , txContentPoolCertRelays'Ipv6 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | port: Network port of the relay
  , txContentPoolCertRelays'Port :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxContentPoolCertRelays'
    where toJSON obj = Data.Aeson.Types.Internal.object ("dns" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Dns obj : "dns_srv" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'DnsSrv obj : "ipv4" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Ipv4 obj : "ipv6" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Ipv6 obj : "port" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Port obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("dns" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Dns obj) GHC.Base.<> (("dns_srv" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'DnsSrv obj) GHC.Base.<> (("ipv4" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Ipv4 obj) GHC.Base.<> (("ipv6" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Ipv6 obj) GHC.Base.<> ("port" Data.Aeson.Types.ToJSON..= txContentPoolCertRelays'Port obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON TxContentPoolCertRelays'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxContentPoolCertRelays'" (\obj -> ((((GHC.Base.pure TxContentPoolCertRelays' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_srv")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ipv6")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "port"))
-- | Create a new 'TxContentPoolCertRelays'' with all required fields.
mkTxContentPoolCertRelays' :: GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertRelays'Dns'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertRelays'DnsSrv'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertRelays'Ipv4'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'txContentPoolCertRelays'Ipv6'
  -> GHC.Integer.Type.Integer -- ^ 'txContentPoolCertRelays'Port'
  -> TxContentPoolCertRelays'
mkTxContentPoolCertRelays' txContentPoolCertRelays'Dns txContentPoolCertRelays'DnsSrv txContentPoolCertRelays'Ipv4 txContentPoolCertRelays'Ipv6 txContentPoolCertRelays'Port = TxContentPoolCertRelays'{txContentPoolCertRelays'Dns = txContentPoolCertRelays'Dns,
                                                                                                                                                                                                        txContentPoolCertRelays'DnsSrv = txContentPoolCertRelays'DnsSrv,
                                                                                                                                                                                                        txContentPoolCertRelays'Ipv4 = txContentPoolCertRelays'Ipv4,
                                                                                                                                                                                                        txContentPoolCertRelays'Ipv6 = txContentPoolCertRelays'Ipv6,
                                                                                                                                                                                                        txContentPoolCertRelays'Port = txContentPoolCertRelays'Port}
