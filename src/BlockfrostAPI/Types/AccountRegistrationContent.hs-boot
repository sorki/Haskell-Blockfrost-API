module BlockfrostAPI.Types.AccountRegistrationContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountRegistrationContent
instance Show AccountRegistrationContent
instance Eq AccountRegistrationContent
instance FromJSON AccountRegistrationContent
instance ToJSON AccountRegistrationContent
data AccountRegistrationContentAction'
instance Show AccountRegistrationContentAction'
instance Eq AccountRegistrationContentAction'
instance FromJSON AccountRegistrationContentAction'
instance ToJSON AccountRegistrationContentAction'
-- XXX: collision
-- type AccountRegistrationContent = [AccountRegistrationContent]
type AccountRegistrationContent' = [AccountRegistrationContent]
