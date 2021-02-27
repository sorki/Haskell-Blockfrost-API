module BlockfrostAPI.Types.TxContentMetadata where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data TxContentMetadata
instance Show TxContentMetadata
instance Eq TxContentMetadata
instance FromJSON TxContentMetadata
instance ToJSON TxContentMetadata
data TxContentMetadataJsonMetadata'Variants
instance Show TxContentMetadataJsonMetadata'Variants
instance Eq TxContentMetadataJsonMetadata'Variants
instance FromJSON TxContentMetadataJsonMetadata'Variants
instance ToJSON TxContentMetadataJsonMetadata'Variants
-- XXX: collision
-- type TxContentMetadata = [TxContentMetadata]
type TxContentMetadata' = [TxContentMetadata]
