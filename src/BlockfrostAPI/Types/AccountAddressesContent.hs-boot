module BlockfrostAPI.Types.AccountAddressesContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountAddressesContent
instance Show AccountAddressesContent
instance Eq AccountAddressesContent
instance FromJSON AccountAddressesContent
instance ToJSON AccountAddressesContent
-- XXX: collision
-- type AccountAddressesContent = [AccountAddressesContent]
type AccountAddressesContent' = [AccountAddressesContent]
