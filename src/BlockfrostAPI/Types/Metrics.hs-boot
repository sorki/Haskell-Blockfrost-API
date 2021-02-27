module BlockfrostAPI.Types.Metrics where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Metrics
instance Show Metrics
instance Eq Metrics
instance FromJSON Metrics
instance ToJSON Metrics
-- XXX: collision
-- type Metrics = [Metrics]
type Metrics' = [Metrics]
