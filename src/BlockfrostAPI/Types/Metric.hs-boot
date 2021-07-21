module BlockfrostAPI.Types.Metric where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Metric
instance Show Metric
instance Eq Metric
instance FromJSON Metric
instance ToJSON Metric
