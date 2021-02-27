module BlockfrostAPI.Types.AssetAddresses where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AssetAddresses
instance Show AssetAddresses
instance Eq AssetAddresses
instance FromJSON AssetAddresses
instance ToJSON AssetAddresses
-- XXX: collision
-- type AssetAddresses = [AssetAddresses]
type AssetAddresses' = [AssetAddresses]
