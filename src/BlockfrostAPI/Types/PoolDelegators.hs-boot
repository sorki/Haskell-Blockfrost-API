module BlockfrostAPI.Types.PoolDelegators where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PoolDelegators
instance Show PoolDelegators
instance Eq PoolDelegators
instance FromJSON PoolDelegators
instance ToJSON PoolDelegators
-- XXX: collision
-- type PoolDelegators = [PoolDelegators]
type PoolDelegators' = [PoolDelegators]
