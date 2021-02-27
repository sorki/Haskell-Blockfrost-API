module BlockfrostAPI.Types.PoolRelays where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PoolRelays
instance Show PoolRelays
instance Eq PoolRelays
instance FromJSON PoolRelays
instance ToJSON PoolRelays
-- XXX: collision
-- type PoolRelays = [PoolRelays]
type PoolRelays' = [PoolRelays]
