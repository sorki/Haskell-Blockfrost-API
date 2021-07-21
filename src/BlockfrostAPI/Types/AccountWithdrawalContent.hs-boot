module BlockfrostAPI.Types.AccountWithdrawalContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountWithdrawalContent
instance Show AccountWithdrawalContent
instance Eq AccountWithdrawalContent
instance FromJSON AccountWithdrawalContent
instance ToJSON AccountWithdrawalContent
-- XXX: collision
-- type AccountWithdrawalContent = [AccountWithdrawalContent]
type AccountWithdrawalContent' = [AccountWithdrawalContent]
