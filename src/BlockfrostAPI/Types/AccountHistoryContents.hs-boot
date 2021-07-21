module BlockfrostAPI.Types.AccountHistoryContents where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountHistoryContents
instance Show AccountHistoryContents
instance Eq AccountHistoryContents
instance FromJSON AccountHistoryContents
instance ToJSON AccountHistoryContents
-- XXX: collision
-- type AccountHistoryContents = [AccountHistoryContents]
type AccountHistoryContents' = [AccountHistoryContents]
