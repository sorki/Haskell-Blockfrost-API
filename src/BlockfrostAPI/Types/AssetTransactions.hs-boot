module BlockfrostAPI.Types.AssetTransactions where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AssetTransactions
instance Show AssetTransactions
instance Eq AssetTransactions
instance FromJSON AssetTransactions
instance ToJSON AssetTransactions
-- XXX: collision
-- type AssetTransactions = [AssetTransactions]
type AssetTransactions' = [AssetTransactions]
