module BlockfrostAPI.Types.EpochStakeContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data EpochStakeContent
instance Show EpochStakeContent
instance Eq EpochStakeContent
instance FromJSON EpochStakeContent
instance ToJSON EpochStakeContent
-- XXX: collision
-- type EpochStakeContent = [EpochStakeContent]
type EpochStakeContent' = [EpochStakeContent]
