module BlockfrostAPI.Types.TxContentWithdrawals where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentWithdrawals
instance Show TxContentWithdrawals
instance Eq TxContentWithdrawals
instance FromJSON TxContentWithdrawals
instance ToJSON TxContentWithdrawals
-- XXX: collision
-- type TxContentWithdrawals = [TxContentWithdrawals]
type TxContentWithdrawals' = [TxContentWithdrawals]
