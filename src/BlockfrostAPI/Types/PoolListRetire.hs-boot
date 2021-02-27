module BlockfrostAPI.Types.PoolListRetire where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PoolListRetire
instance Show PoolListRetire
instance Eq PoolListRetire
instance FromJSON PoolListRetire
instance ToJSON PoolListRetire
-- XXX: collision
-- type PoolListRetire = [PoolListRetire]
type PoolListRetire' = [PoolListRetire]
