module BlockfrostAPI.Types.AccountDelegationContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountDelegationContent
instance Show AccountDelegationContent
instance Eq AccountDelegationContent
instance FromJSON AccountDelegationContent
instance ToJSON AccountDelegationContent
-- XXX: collision
-- type AccountDelegationContent = [AccountDelegationContent]
type AccountDelegationContent' = [AccountDelegationContent]
