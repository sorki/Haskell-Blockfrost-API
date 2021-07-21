module BlockfrostAPI.Types.AccountAddressesAssets where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountAddressesAssets
instance Show AccountAddressesAssets
instance Eq AccountAddressesAssets
instance FromJSON AccountAddressesAssets
instance ToJSON AccountAddressesAssets
-- XXX: collision
-- type AccountAddressesAssets = [AccountAddressesAssets]
type AccountAddressesAssets' = [AccountAddressesAssets]
