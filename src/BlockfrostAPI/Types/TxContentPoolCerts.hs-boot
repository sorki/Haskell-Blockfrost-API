module BlockfrostAPI.Types.TxContentPoolCerts where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentPoolCerts
instance Show TxContentPoolCerts
instance Eq TxContentPoolCerts
instance FromJSON TxContentPoolCerts
instance ToJSON TxContentPoolCerts
data TxContentPoolCertsMetadata'
instance Show TxContentPoolCertsMetadata'
instance Eq TxContentPoolCertsMetadata'
instance FromJSON TxContentPoolCertsMetadata'
instance ToJSON TxContentPoolCertsMetadata'
data TxContentPoolCertsRelays'
instance Show TxContentPoolCertsRelays'
instance Eq TxContentPoolCertsRelays'
instance FromJSON TxContentPoolCertsRelays'
instance ToJSON TxContentPoolCertsRelays'
-- XXX: collision
-- type TxContentPoolCerts = [TxContentPoolCerts]
type TxContentPoolCerts' = [TxContentPoolCerts]
