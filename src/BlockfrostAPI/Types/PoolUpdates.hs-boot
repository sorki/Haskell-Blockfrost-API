module BlockfrostAPI.Types.PoolUpdates where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PoolUpdates
instance Show PoolUpdates
instance Eq PoolUpdates
instance FromJSON PoolUpdates
instance ToJSON PoolUpdates
data PoolUpdatesAction'
instance Show PoolUpdatesAction'
instance Eq PoolUpdatesAction'
instance FromJSON PoolUpdatesAction'
instance ToJSON PoolUpdatesAction'
-- XXX: collision
-- type PoolUpdates = [PoolUpdates]
type PoolUpdates' = [PoolUpdates]
