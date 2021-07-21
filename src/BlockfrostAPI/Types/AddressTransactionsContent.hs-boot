module BlockfrostAPI.Types.AddressTransactionsContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AddressTransactionsContent
instance Show AddressTransactionsContent
instance Eq AddressTransactionsContent
instance FromJSON AddressTransactionsContent
instance ToJSON AddressTransactionsContent
-- XXX: collision
-- type AddressTransactionsContent = [AddressTransactionsContent]
type AddressTransactionsContent' = [AddressTransactionsContent]
