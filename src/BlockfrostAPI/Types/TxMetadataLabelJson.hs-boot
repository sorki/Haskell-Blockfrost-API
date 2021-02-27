module BlockfrostAPI.Types.TxMetadataLabelJson where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxMetadataLabelJson
instance Show TxMetadataLabelJson
instance Eq TxMetadataLabelJson
instance FromJSON TxMetadataLabelJson
instance ToJSON TxMetadataLabelJson
data TxMetadataLabelJsonJsonMetadata'Variants
instance Show TxMetadataLabelJsonJsonMetadata'Variants
instance Eq TxMetadataLabelJsonJsonMetadata'Variants
instance FromJSON TxMetadataLabelJsonJsonMetadata'Variants
instance ToJSON TxMetadataLabelJsonJsonMetadata'Variants
-- XXX: collision
-- type TxMetadataLabelJson = [TxMetadataLabelJson]
type TxMetadataLabelJson' = [TxMetadataLabelJson]
