-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getEpochsLatestParameters
module BlockfrostAPI.Operations.GetEpochsLatestParameters where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified BlockfrostAPI.Common
import BlockfrostAPI.Types

-- | > GET /epochs/latest/parameters
-- 
-- Return the protocol parameters for the latest epoch.
getEpochsLatestParameters :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetEpochsLatestParametersResponse) -- ^ Monadic computation which returns the result of the operation
getEpochsLatestParameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetEpochsLatestParametersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         EpochParamContent)
                                                                                                                                                                                | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody400)
                                                                                                                                                                                | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody403)
                                                                                                                                                                                | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody404)
                                                                                                                                                                                | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody418)
                                                                                                                                                                                | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody429)
                                                                                                                                                                                | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         GetEpochsLatestParametersResponseBody500)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/epochs/latest/parameters") GHC.Base.mempty)
-- | Represents a response of the operation 'getEpochsLatestParameters'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetEpochsLatestParametersResponseError' is used.
data GetEpochsLatestParametersResponse =
   GetEpochsLatestParametersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetEpochsLatestParametersResponse200 EpochParamContent -- ^ Return the data about the epoch
  | GetEpochsLatestParametersResponse400 GetEpochsLatestParametersResponseBody400 -- ^ Bad request
  | GetEpochsLatestParametersResponse403 GetEpochsLatestParametersResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetEpochsLatestParametersResponse404 GetEpochsLatestParametersResponseBody404 -- ^ Component not found
  | GetEpochsLatestParametersResponse418 GetEpochsLatestParametersResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetEpochsLatestParametersResponse429 GetEpochsLatestParametersResponseBody429 -- ^ Usage limit reached
  | GetEpochsLatestParametersResponse500 GetEpochsLatestParametersResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody400 = GetEpochsLatestParametersResponseBody400 {
  -- | error
  getEpochsLatestParametersResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody400" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody400' with all required fields.
mkGetEpochsLatestParametersResponseBody400 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody400StatusCode'
  -> GetEpochsLatestParametersResponseBody400
mkGetEpochsLatestParametersResponseBody400 getEpochsLatestParametersResponseBody400Error getEpochsLatestParametersResponseBody400Message getEpochsLatestParametersResponseBody400StatusCode = GetEpochsLatestParametersResponseBody400{getEpochsLatestParametersResponseBody400Error = getEpochsLatestParametersResponseBody400Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody400Message = getEpochsLatestParametersResponseBody400Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody400StatusCode = getEpochsLatestParametersResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody403 = GetEpochsLatestParametersResponseBody403 {
  -- | error
  getEpochsLatestParametersResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody403" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody403' with all required fields.
mkGetEpochsLatestParametersResponseBody403 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody403StatusCode'
  -> GetEpochsLatestParametersResponseBody403
mkGetEpochsLatestParametersResponseBody403 getEpochsLatestParametersResponseBody403Error getEpochsLatestParametersResponseBody403Message getEpochsLatestParametersResponseBody403StatusCode = GetEpochsLatestParametersResponseBody403{getEpochsLatestParametersResponseBody403Error = getEpochsLatestParametersResponseBody403Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody403Message = getEpochsLatestParametersResponseBody403Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody403StatusCode = getEpochsLatestParametersResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody404 = GetEpochsLatestParametersResponseBody404 {
  -- | error
  getEpochsLatestParametersResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody404" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody404' with all required fields.
mkGetEpochsLatestParametersResponseBody404 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody404StatusCode'
  -> GetEpochsLatestParametersResponseBody404
mkGetEpochsLatestParametersResponseBody404 getEpochsLatestParametersResponseBody404Error getEpochsLatestParametersResponseBody404Message getEpochsLatestParametersResponseBody404StatusCode = GetEpochsLatestParametersResponseBody404{getEpochsLatestParametersResponseBody404Error = getEpochsLatestParametersResponseBody404Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody404Message = getEpochsLatestParametersResponseBody404Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody404StatusCode = getEpochsLatestParametersResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody418 = GetEpochsLatestParametersResponseBody418 {
  -- | error
  getEpochsLatestParametersResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody418" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody418' with all required fields.
mkGetEpochsLatestParametersResponseBody418 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody418StatusCode'
  -> GetEpochsLatestParametersResponseBody418
mkGetEpochsLatestParametersResponseBody418 getEpochsLatestParametersResponseBody418Error getEpochsLatestParametersResponseBody418Message getEpochsLatestParametersResponseBody418StatusCode = GetEpochsLatestParametersResponseBody418{getEpochsLatestParametersResponseBody418Error = getEpochsLatestParametersResponseBody418Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody418Message = getEpochsLatestParametersResponseBody418Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody418StatusCode = getEpochsLatestParametersResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody429 = GetEpochsLatestParametersResponseBody429 {
  -- | error
  getEpochsLatestParametersResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody429" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody429' with all required fields.
mkGetEpochsLatestParametersResponseBody429 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody429StatusCode'
  -> GetEpochsLatestParametersResponseBody429
mkGetEpochsLatestParametersResponseBody429 getEpochsLatestParametersResponseBody429Error getEpochsLatestParametersResponseBody429Message getEpochsLatestParametersResponseBody429StatusCode = GetEpochsLatestParametersResponseBody429{getEpochsLatestParametersResponseBody429Error = getEpochsLatestParametersResponseBody429Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody429Message = getEpochsLatestParametersResponseBody429Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody429StatusCode = getEpochsLatestParametersResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetEpochsLatestParametersResponseBody500 = GetEpochsLatestParametersResponseBody500 {
  -- | error
  getEpochsLatestParametersResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getEpochsLatestParametersResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getEpochsLatestParametersResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetEpochsLatestParametersResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getEpochsLatestParametersResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetEpochsLatestParametersResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetEpochsLatestParametersResponseBody500" (\obj -> ((GHC.Base.pure GetEpochsLatestParametersResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetEpochsLatestParametersResponseBody500' with all required fields.
mkGetEpochsLatestParametersResponseBody500 :: Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getEpochsLatestParametersResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getEpochsLatestParametersResponseBody500StatusCode'
  -> GetEpochsLatestParametersResponseBody500
mkGetEpochsLatestParametersResponseBody500 getEpochsLatestParametersResponseBody500Error getEpochsLatestParametersResponseBody500Message getEpochsLatestParametersResponseBody500StatusCode = GetEpochsLatestParametersResponseBody500{getEpochsLatestParametersResponseBody500Error = getEpochsLatestParametersResponseBody500Error,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody500Message = getEpochsLatestParametersResponseBody500Message,
                                                                                                                                                                                                                                       getEpochsLatestParametersResponseBody500StatusCode = getEpochsLatestParametersResponseBody500StatusCode}
-- | > GET /epochs/latest/parameters
-- 
-- The same as 'getEpochsLatestParameters' but accepts an explicit configuration.
getEpochsLatestParametersWithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response GetEpochsLatestParametersResponse) -- ^ Monadic computation which returns the result of the operation
getEpochsLatestParametersWithConfiguration config = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetEpochsLatestParametersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 EpochParamContent)
                                                                                                                                                                                                        | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody400)
                                                                                                                                                                                                        | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody403)
                                                                                                                                                                                                        | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody404)
                                                                                                                                                                                                        | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody418)
                                                                                                                                                                                                        | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody429)
                                                                                                                                                                                                        | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetEpochsLatestParametersResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetEpochsLatestParametersResponseBody500)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/epochs/latest/parameters") GHC.Base.mempty)
-- | > GET /epochs/latest/parameters
-- 
-- The same as 'getEpochsLatestParameters' but returns the raw 'Data.ByteString.Char8.ByteString'.
getEpochsLatestParametersRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getEpochsLatestParametersRaw = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/epochs/latest/parameters") GHC.Base.mempty)
-- | > GET /epochs/latest/parameters
-- 
-- The same as 'getEpochsLatestParameters' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getEpochsLatestParametersWithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getEpochsLatestParametersWithConfigurationRaw config = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/epochs/latest/parameters") GHC.Base.mempty)