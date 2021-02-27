-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolMetadata
module BlockfrostAPI.Types.PoolMetadata where

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

-- | Defines the object schema located at @components.schemas.pool_metadata@ in the specification.
-- 
-- 
data PoolMetadata = PoolMetadata {
  -- | description: Description of the stake pool
  poolMetadataDescription :: Data.Text.Internal.Text
  -- | hash: Hash of the metadata file
  , poolMetadataHash :: Data.Text.Internal.Text
  -- | homepage: Home page of the stake pool
  , poolMetadataHomepage :: Data.Text.Internal.Text
  -- | name: Name of the stake pool
  , poolMetadataName :: Data.Text.Internal.Text
  -- | ticker: Ticker of the stake pool
  , poolMetadataTicker :: Data.Text.Internal.Text
  -- | url: URL to the stake pool metadata
  , poolMetadataUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolMetadata
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= poolMetadataDescription obj : "hash" Data.Aeson.Types.ToJSON..= poolMetadataHash obj : "homepage" Data.Aeson.Types.ToJSON..= poolMetadataHomepage obj : "name" Data.Aeson.Types.ToJSON..= poolMetadataName obj : "ticker" Data.Aeson.Types.ToJSON..= poolMetadataTicker obj : "url" Data.Aeson.Types.ToJSON..= poolMetadataUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= poolMetadataDescription obj) GHC.Base.<> (("hash" Data.Aeson.Types.ToJSON..= poolMetadataHash obj) GHC.Base.<> (("homepage" Data.Aeson.Types.ToJSON..= poolMetadataHomepage obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= poolMetadataName obj) GHC.Base.<> (("ticker" Data.Aeson.Types.ToJSON..= poolMetadataTicker obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= poolMetadataUrl obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PoolMetadata
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolMetadata" (\obj -> (((((GHC.Base.pure PoolMetadata GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "homepage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ticker")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'PoolMetadata' with all required fields.
mkPoolMetadata :: Data.Text.Internal.Text -- ^ 'poolMetadataDescription'
  -> Data.Text.Internal.Text -- ^ 'poolMetadataHash'
  -> Data.Text.Internal.Text -- ^ 'poolMetadataHomepage'
  -> Data.Text.Internal.Text -- ^ 'poolMetadataName'
  -> Data.Text.Internal.Text -- ^ 'poolMetadataTicker'
  -> Data.Text.Internal.Text -- ^ 'poolMetadataUrl'
  -> PoolMetadata
mkPoolMetadata poolMetadataDescription poolMetadataHash poolMetadataHomepage poolMetadataName poolMetadataTicker poolMetadataUrl = PoolMetadata{poolMetadataDescription = poolMetadataDescription,
                                                                                                                                                poolMetadataHash = poolMetadataHash,
                                                                                                                                                poolMetadataHomepage = poolMetadataHomepage,
                                                                                                                                                poolMetadataName = poolMetadataName,
                                                                                                                                                poolMetadataTicker = poolMetadataTicker,
                                                                                                                                                poolMetadataUrl = poolMetadataUrl}
