module BlockfrostAPI.Types.TxContentMirs where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentMirs
instance Show TxContentMirs
instance Eq TxContentMirs
instance FromJSON TxContentMirs
instance ToJSON TxContentMirs
data TxContentMirsPot'
instance Show TxContentMirsPot'
instance Eq TxContentMirsPot'
instance FromJSON TxContentMirsPot'
instance ToJSON TxContentMirsPot'
-- XXX: collision
-- type TxContentMirs = [TxContentMirs]
type TxContentMirs' = [TxContentMirs]
