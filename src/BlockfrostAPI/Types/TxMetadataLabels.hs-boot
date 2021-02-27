module BlockfrostAPI.Types.TxMetadataLabels where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxMetadataLabels
instance Show TxMetadataLabels
instance Eq TxMetadataLabels
instance FromJSON TxMetadataLabels
instance ToJSON TxMetadataLabels
-- XXX: collision
-- type TxMetadataLabels = [TxMetadataLabels]
type TxMetadataLabels' = [TxMetadataLabels]
