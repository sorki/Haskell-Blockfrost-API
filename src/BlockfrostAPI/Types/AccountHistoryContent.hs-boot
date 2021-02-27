module BlockfrostAPI.Types.AccountHistoryContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountHistoryContent
instance Show AccountHistoryContent
instance Eq AccountHistoryContent
instance FromJSON AccountHistoryContent
instance ToJSON AccountHistoryContent
-- XXX: collision
-- type AccountHistoryContent = [AccountHistoryContent]
type AccountHistoryContent' = [AccountHistoryContent]
