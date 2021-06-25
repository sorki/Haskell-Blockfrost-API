module BlockfrostAPI.Types.TxContentPoolRetires where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentPoolRetires
instance Show TxContentPoolRetires
instance Eq TxContentPoolRetires
instance FromJSON TxContentPoolRetires
instance ToJSON TxContentPoolRetires
-- XXX: collision
-- type TxContentPoolRetires = [TxContentPoolRetires]
type TxContentPoolRetires' = [TxContentPoolRetires]
