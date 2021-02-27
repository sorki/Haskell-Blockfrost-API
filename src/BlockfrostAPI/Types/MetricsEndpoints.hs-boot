module BlockfrostAPI.Types.MetricsEndpoints where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data MetricsEndpoints
instance Show MetricsEndpoints
instance Eq MetricsEndpoints
instance FromJSON MetricsEndpoints
instance ToJSON MetricsEndpoints
-- XXX: collision
-- type MetricsEndpoints = [MetricsEndpoints]
type MetricsEndpoints' = [MetricsEndpoints]
