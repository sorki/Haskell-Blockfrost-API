-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PoolListRetire
module BlockfrostAPI.Types.PoolListRetire where

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

-- | Defines the object schema located at @components.schemas.pool_list_retire.items@ in the specification.
-- 
-- 
data PoolListRetire = PoolListRetire {
  -- | epoch: Retirement epoch number
  poolListRetireEpoch :: GHC.Integer.Type.Integer
  -- | pool_id: Bech32 encoded pool ID
  , poolListRetirePoolId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PoolListRetire
    where toJSON obj = Data.Aeson.Types.Internal.object ("epoch" Data.Aeson.Types.ToJSON..= poolListRetireEpoch obj : "pool_id" Data.Aeson.Types.ToJSON..= poolListRetirePoolId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("epoch" Data.Aeson.Types.ToJSON..= poolListRetireEpoch obj) GHC.Base.<> ("pool_id" Data.Aeson.Types.ToJSON..= poolListRetirePoolId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PoolListRetire
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PoolListRetire" (\obj -> (GHC.Base.pure PoolListRetire GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "epoch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pool_id"))
-- | Create a new 'PoolListRetire' with all required fields.
mkPoolListRetire :: GHC.Integer.Type.Integer -- ^ 'poolListRetireEpoch'
  -> Data.Text.Internal.Text -- ^ 'poolListRetirePoolId'
  -> PoolListRetire
mkPoolListRetire poolListRetireEpoch poolListRetirePoolId = PoolListRetire{poolListRetireEpoch = poolListRetireEpoch,
                                                                           poolListRetirePoolId = poolListRetirePoolId}
-- | Defines an alias for the schema located at @components.schemas.pool_list_retire@ in the specification.
-- 
-- 
-- XXX: collision
-- type PoolListRetire = [PoolListRetire]
type PoolListRetire' = [PoolListRetire]
