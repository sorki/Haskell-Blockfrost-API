module BlockfrostAPI.Types.Assets where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Assets
instance Show Assets
instance Eq Assets
instance FromJSON Assets
instance ToJSON Assets
-- XXX: collision
-- type Assets = [Assets]
type Assets' = [Assets]
