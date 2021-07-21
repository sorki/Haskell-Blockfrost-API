module BlockfrostAPI.Types.AccountMirContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AccountMirContent
instance Show AccountMirContent
instance Eq AccountMirContent
instance FromJSON AccountMirContent
instance ToJSON AccountMirContent
-- XXX: collision
-- type AccountMirContent = [AccountMirContent]
type AccountMirContent' = [AccountMirContent]
