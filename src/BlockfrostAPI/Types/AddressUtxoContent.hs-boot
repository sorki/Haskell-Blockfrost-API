module BlockfrostAPI.Types.AddressUtxoContent where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data AddressUtxoContent
instance Show AddressUtxoContent
instance Eq AddressUtxoContent
instance FromJSON AddressUtxoContent
instance ToJSON AddressUtxoContent
data AddressUtxoContentAmount'
instance Show AddressUtxoContentAmount'
instance Eq AddressUtxoContentAmount'
instance FromJSON AddressUtxoContentAmount'
instance ToJSON AddressUtxoContentAmount'
-- XXX: collision
-- type AddressUtxoContent = [AddressUtxoContent]
type AddressUtxoContent' = [AddressUtxoContent]
