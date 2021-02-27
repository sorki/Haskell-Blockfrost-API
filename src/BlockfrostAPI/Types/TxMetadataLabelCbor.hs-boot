module BlockfrostAPI.Types.TxMetadataLabelCbor where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxMetadataLabelCbor
instance Show TxMetadataLabelCbor
instance Eq TxMetadataLabelCbor
instance FromJSON TxMetadataLabelCbor
instance ToJSON TxMetadataLabelCbor
-- XXX: collision
-- type TxMetadataLabelCbor = [TxMetadataLabelCbor]
type TxMetadataLabelCbor' = [TxMetadataLabelCbor]
