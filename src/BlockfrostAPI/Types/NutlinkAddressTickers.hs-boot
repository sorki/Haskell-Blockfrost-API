module BlockfrostAPI.Types.NutlinkAddressTickers where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data NutlinkAddressTickers
instance Show NutlinkAddressTickers
instance Eq NutlinkAddressTickers
instance FromJSON NutlinkAddressTickers
instance ToJSON NutlinkAddressTickers
-- XXX: collision
-- type NutlinkAddressTickers = [NutlinkAddressTickers]
type NutlinkAddressTickers' = [NutlinkAddressTickers]
