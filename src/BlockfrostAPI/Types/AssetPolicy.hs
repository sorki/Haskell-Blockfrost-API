-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AssetPolicy
module BlockfrostAPI.Types.AssetPolicy where

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

-- | Defines the object schema located at @components.schemas.asset_policy.items@ in the specification.
-- 
-- 
data AssetPolicy = AssetPolicy {
  -- | asset: Concatenation of the policy_id and hex-encoded asset_name
  assetPolicyAsset :: Data.Text.Internal.Text
  -- | quantity: Current asset quantity
  , assetPolicyQuantity :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AssetPolicy
    where toJSON obj = Data.Aeson.Types.Internal.object ("asset" Data.Aeson.Types.ToJSON..= assetPolicyAsset obj : "quantity" Data.Aeson.Types.ToJSON..= assetPolicyQuantity obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("asset" Data.Aeson.Types.ToJSON..= assetPolicyAsset obj) GHC.Base.<> ("quantity" Data.Aeson.Types.ToJSON..= assetPolicyQuantity obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssetPolicy
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssetPolicy" (\obj -> (GHC.Base.pure AssetPolicy GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "asset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity"))
-- | Create a new 'AssetPolicy' with all required fields.
mkAssetPolicy :: Data.Text.Internal.Text -- ^ 'assetPolicyAsset'
  -> Data.Text.Internal.Text -- ^ 'assetPolicyQuantity'
  -> AssetPolicy
mkAssetPolicy assetPolicyAsset assetPolicyQuantity = AssetPolicy{assetPolicyAsset = assetPolicyAsset,
                                                                 assetPolicyQuantity = assetPolicyQuantity}
-- | Defines an alias for the schema located at @components.schemas.asset_policy@ in the specification.
-- 
-- 
-- XXX: collision
-- type AssetPolicy = [AssetPolicy]
type AssetPolicy' = [AssetPolicy]
