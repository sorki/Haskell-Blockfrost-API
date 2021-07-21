module BlockfrostAPI.Types.AssetAddress where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AssetAddress
instance Show AssetAddress
instance Eq AssetAddress
instance FromJSON AssetAddress
instance ToJSON AssetAddress
