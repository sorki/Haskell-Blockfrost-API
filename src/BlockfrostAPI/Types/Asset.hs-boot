module BlockfrostAPI.Types.Asset where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Asset
instance Show Asset
instance Eq Asset
instance FromJSON Asset
instance ToJSON Asset
data AssetMetadata'
instance Show AssetMetadata'
instance Eq AssetMetadata'
instance FromJSON AssetMetadata'
instance ToJSON AssetMetadata'
data AssetOnchainMetadata'
instance Show AssetOnchainMetadata'
instance Eq AssetOnchainMetadata'
instance FromJSON AssetOnchainMetadata'
instance ToJSON AssetOnchainMetadata'
