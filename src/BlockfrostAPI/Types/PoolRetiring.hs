-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolRetiring
module BlockfrostAPI.Types.PoolRetiring where

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

-- | Defines the object schema located at @components.schemas.pool_retiring@ in the specification.
-- 
-- 
data PoolRetiring = PoolRetiring {
  -- | epoch: Retirement epoch number
  poolRetiringEpoch :: GHC.Integer.Type.Integer
  -- | pool_id: Bech32 encoded pool ID
  , poolRetiringPoolId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolRetiring
    where toJSON obj = Data.Aeson.Types.Internal.object ("epoch" Data.Aeson.Types.ToJSON..= poolRetiringEpoch obj : "pool_id" Data.Aeson.Types.ToJSON..= poolRetiringPoolId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("epoch" Data.Aeson.Types.ToJSON..= poolRetiringEpoch obj) GHC.Base.<> ("pool_id" Data.Aeson.Types.ToJSON..= poolRetiringPoolId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PoolRetiring
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolRetiring" (\obj -> (GHC.Base.pure PoolRetiring GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id"))
-- | Create a new 'PoolRetiring' with all required fields.
mkPoolRetiring :: GHC.Integer.Type.Integer -- ^ 'poolRetiringEpoch'
  -> Data.Text.Internal.Text -- ^ 'poolRetiringPoolId'
  -> PoolRetiring
mkPoolRetiring poolRetiringEpoch poolRetiringPoolId = PoolRetiring{poolRetiringEpoch = poolRetiringEpoch,
                                                                   poolRetiringPoolId = poolRetiringPoolId}