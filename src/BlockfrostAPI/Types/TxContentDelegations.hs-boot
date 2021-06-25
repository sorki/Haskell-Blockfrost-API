module BlockfrostAPI.Types.TxContentDelegations where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentDelegations
instance Show TxContentDelegations
instance Eq TxContentDelegations
instance FromJSON TxContentDelegations
instance ToJSON TxContentDelegations
-- XXX: collision
-- type TxContentDelegations = [TxContentDelegations]
type TxContentDelegations' = [TxContentDelegations]
