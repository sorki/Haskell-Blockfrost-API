module BlockfrostAPI.Types.TxContentMetadataCbor where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentMetadataCbor
instance Show TxContentMetadataCbor
instance Eq TxContentMetadataCbor
instance FromJSON TxContentMetadataCbor
instance ToJSON TxContentMetadataCbor
-- XXX: collision
-- type TxContentMetadataCbor = [TxContentMetadataCbor]
type TxContentMetadataCbor' = [TxContentMetadataCbor]
