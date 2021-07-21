module BlockfrostAPI.Types.NutlinkAddressTicker where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data NutlinkAddressTicker
instance Show NutlinkAddressTicker
instance Eq NutlinkAddressTicker
instance FromJSON NutlinkAddressTicker
instance ToJSON NutlinkAddressTicker
data NutlinkAddressTickerPayload'Variants
instance Show NutlinkAddressTickerPayload'Variants
instance Eq NutlinkAddressTickerPayload'Variants
instance FromJSON NutlinkAddressTickerPayload'Variants
instance ToJSON NutlinkAddressTickerPayload'Variants
-- XXX: collision
-- type NutlinkAddressTicker = [NutlinkAddressTicker]
type NutlinkAddressTicker' = [NutlinkAddressTicker]
