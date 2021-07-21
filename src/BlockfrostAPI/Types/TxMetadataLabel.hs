-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TxMetadataLabel
module BlockfrostAPI.Types.TxMetadataLabel where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified BlockfrostAPI.Common
import BlockfrostAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.tx_metadata_label@ in the specification.
-- 
-- 
data TxMetadataLabel = TxMetadataLabel {
  -- | cip10: CIP10 defined description
  txMetadataLabelCip10 :: Data.Text.Internal.Text
  -- | count: The count of metadata entries with a specific label
  , txMetadataLabelCount :: Data.Text.Internal.Text
  -- | label: Metadata label
  , txMetadataLabelLabel :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TxMetadataLabel
    where toJSON obj = Data.Aeson.Types.Internal.object ("cip10" Data.Aeson.Types.ToJSON..= txMetadataLabelCip10 obj : "count" Data.Aeson.Types.ToJSON..= txMetadataLabelCount obj : "label" Data.Aeson.Types.ToJSON..= txMetadataLabelLabel obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("cip10" Data.Aeson.Types.ToJSON..= txMetadataLabelCip10 obj) GHC.Base.<> (("count" Data.Aeson.Types.ToJSON..= txMetadataLabelCount obj) GHC.Base.<> ("label" Data.Aeson.Types.ToJSON..= txMetadataLabelLabel obj)))
instance Data.Aeson.Types.FromJSON.FromJSON TxMetadataLabel
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TxMetadataLabel" (\obj -> ((GHC.Base.pure TxMetadataLabel GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cip10")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label"))
-- | Create a new 'TxMetadataLabel' with all required fields.
mkTxMetadataLabel :: Data.Text.Internal.Text -- ^ 'txMetadataLabelCip10'
  -> Data.Text.Internal.Text -- ^ 'txMetadataLabelCount'
  -> Data.Text.Internal.Text -- ^ 'txMetadataLabelLabel'
  -> TxMetadataLabel
mkTxMetadataLabel txMetadataLabelCip10 txMetadataLabelCount txMetadataLabelLabel = TxMetadataLabel{txMetadataLabelCip10 = txMetadataLabelCip10,
                                                                                                   txMetadataLabelCount = txMetadataLabelCount,
                                                                                                   txMetadataLabelLabel = txMetadataLabelLabel}
