module BlockfrostAPI.Types.AssetPolicy where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AssetPolicy
instance Show AssetPolicy
instance Eq AssetPolicy
instance FromJSON AssetPolicy
instance ToJSON AssetPolicy
-- XXX: collision
-- type AssetPolicy = [AssetPolicy]
type AssetPolicy' = [AssetPolicy]
