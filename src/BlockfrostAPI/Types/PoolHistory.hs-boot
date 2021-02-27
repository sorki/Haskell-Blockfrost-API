module BlockfrostAPI.Types.PoolHistory where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PoolHistory
instance Show PoolHistory
instance Eq PoolHistory
instance FromJSON PoolHistory
instance ToJSON PoolHistory
-- XXX: collision
-- type PoolHistory = [PoolHistory]
type PoolHistory' = [PoolHistory]
