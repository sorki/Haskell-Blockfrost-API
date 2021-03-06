module BlockfrostAPI.Types.NutlinkTickersTicker where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data NutlinkTickersTicker
instance Show NutlinkTickersTicker
instance Eq NutlinkTickersTicker
instance FromJSON NutlinkTickersTicker
instance ToJSON NutlinkTickersTicker
data NutlinkTickersTickerPayload'Variants
instance Show NutlinkTickersTickerPayload'Variants
instance Eq NutlinkTickersTickerPayload'Variants
instance FromJSON NutlinkTickersTickerPayload'Variants
instance ToJSON NutlinkTickersTickerPayload'Variants
-- XXX: collision
-- type NutlinkTickersTicker = [NutlinkTickersTicker]
type NutlinkTickersTicker' = [NutlinkTickersTicker]
