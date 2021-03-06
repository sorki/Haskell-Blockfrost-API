-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getMetrics_
module BlockfrostAPI.Operations.GetMetrics_ where

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

-- | > GET /metrics/
-- 
-- History of your Blockfrost usage metrics in the past 30 days.
getMetrics_ :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetMetricsResponse) -- ^ Monadic computation which returns the result of the operation
getMetrics_ = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetMetricsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Metrics)
                                                                                                                                                   | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody400)
                                                                                                                                                   | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody403)
                                                                                                                                                   | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody404)
                                                                                                                                                   | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody418)
                                                                                                                                                   | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody429)
                                                                                                                                                   | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             GetMetricsResponseBody500)
                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/metrics/") GHC.Base.mempty)
-- | Represents a response of the operation 'getMetrics_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetMetricsResponseError' is used.
data GetMetricsResponse =
   GetMetricsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetMetricsResponse200 Metrics -- ^ Return the last 30 days of metrics
  | GetMetricsResponse400 GetMetricsResponseBody400 -- ^ Bad request
  | GetMetricsResponse403 GetMetricsResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetMetricsResponse404 GetMetricsResponseBody404 -- ^ Component not found
  | GetMetricsResponse418 GetMetricsResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetMetricsResponse429 GetMetricsResponseBody429 -- ^ Usage limit reached
  | GetMetricsResponse500 GetMetricsResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody400 = GetMetricsResponseBody400 {
  -- | error
  getMetricsResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody400" (\obj -> ((GHC.Base.pure GetMetricsResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody400' with all required fields.
mkGetMetricsResponseBody400 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody400StatusCode'
  -> GetMetricsResponseBody400
mkGetMetricsResponseBody400 getMetricsResponseBody400Error getMetricsResponseBody400Message getMetricsResponseBody400StatusCode = GetMetricsResponseBody400{getMetricsResponseBody400Error = getMetricsResponseBody400Error,
                                                                                                                                                            getMetricsResponseBody400Message = getMetricsResponseBody400Message,
                                                                                                                                                            getMetricsResponseBody400StatusCode = getMetricsResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody403 = GetMetricsResponseBody403 {
  -- | error
  getMetricsResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody403" (\obj -> ((GHC.Base.pure GetMetricsResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody403' with all required fields.
mkGetMetricsResponseBody403 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody403StatusCode'
  -> GetMetricsResponseBody403
mkGetMetricsResponseBody403 getMetricsResponseBody403Error getMetricsResponseBody403Message getMetricsResponseBody403StatusCode = GetMetricsResponseBody403{getMetricsResponseBody403Error = getMetricsResponseBody403Error,
                                                                                                                                                            getMetricsResponseBody403Message = getMetricsResponseBody403Message,
                                                                                                                                                            getMetricsResponseBody403StatusCode = getMetricsResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody404 = GetMetricsResponseBody404 {
  -- | error
  getMetricsResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody404" (\obj -> ((GHC.Base.pure GetMetricsResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody404' with all required fields.
mkGetMetricsResponseBody404 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody404StatusCode'
  -> GetMetricsResponseBody404
mkGetMetricsResponseBody404 getMetricsResponseBody404Error getMetricsResponseBody404Message getMetricsResponseBody404StatusCode = GetMetricsResponseBody404{getMetricsResponseBody404Error = getMetricsResponseBody404Error,
                                                                                                                                                            getMetricsResponseBody404Message = getMetricsResponseBody404Message,
                                                                                                                                                            getMetricsResponseBody404StatusCode = getMetricsResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody418 = GetMetricsResponseBody418 {
  -- | error
  getMetricsResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody418" (\obj -> ((GHC.Base.pure GetMetricsResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody418' with all required fields.
mkGetMetricsResponseBody418 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody418StatusCode'
  -> GetMetricsResponseBody418
mkGetMetricsResponseBody418 getMetricsResponseBody418Error getMetricsResponseBody418Message getMetricsResponseBody418StatusCode = GetMetricsResponseBody418{getMetricsResponseBody418Error = getMetricsResponseBody418Error,
                                                                                                                                                            getMetricsResponseBody418Message = getMetricsResponseBody418Message,
                                                                                                                                                            getMetricsResponseBody418StatusCode = getMetricsResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody429 = GetMetricsResponseBody429 {
  -- | error
  getMetricsResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody429" (\obj -> ((GHC.Base.pure GetMetricsResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody429' with all required fields.
mkGetMetricsResponseBody429 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody429StatusCode'
  -> GetMetricsResponseBody429
mkGetMetricsResponseBody429 getMetricsResponseBody429Error getMetricsResponseBody429Message getMetricsResponseBody429StatusCode = GetMetricsResponseBody429{getMetricsResponseBody429Error = getMetricsResponseBody429Error,
                                                                                                                                                            getMetricsResponseBody429Message = getMetricsResponseBody429Message,
                                                                                                                                                            getMetricsResponseBody429StatusCode = getMetricsResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMetricsResponseBody500 = GetMetricsResponseBody500 {
  -- | error
  getMetricsResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getMetricsResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getMetricsResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMetricsResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getMetricsResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetMetricsResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMetricsResponseBody500" (\obj -> ((GHC.Base.pure GetMetricsResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetMetricsResponseBody500' with all required fields.
mkGetMetricsResponseBody500 :: Data.Text.Internal.Text -- ^ 'getMetricsResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getMetricsResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getMetricsResponseBody500StatusCode'
  -> GetMetricsResponseBody500
mkGetMetricsResponseBody500 getMetricsResponseBody500Error getMetricsResponseBody500Message getMetricsResponseBody500StatusCode = GetMetricsResponseBody500{getMetricsResponseBody500Error = getMetricsResponseBody500Error,
                                                                                                                                                            getMetricsResponseBody500Message = getMetricsResponseBody500Message,
                                                                                                                                                            getMetricsResponseBody500StatusCode = getMetricsResponseBody500StatusCode}
-- | > GET /metrics/
-- 
-- The same as 'getMetrics_' but accepts an explicit configuration.
getMetrics_WithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response GetMetricsResponse) -- ^ Monadic computation which returns the result of the operation
getMetrics_WithConfiguration config = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetMetricsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Metrics)
                                                                                                                                                                           | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody400)
                                                                                                                                                                           | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody403)
                                                                                                                                                                           | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody404)
                                                                                                                                                                           | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody418)
                                                                                                                                                                           | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody429)
                                                                                                                                                                           | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetMetricsResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetMetricsResponseBody500)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/metrics/") GHC.Base.mempty)
-- | > GET /metrics/
-- 
-- The same as 'getMetrics_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getMetrics_Raw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getMetrics_Raw = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/metrics/") GHC.Base.mempty)
-- | > GET /metrics/
-- 
-- The same as 'getMetrics_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getMetrics_WithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getMetrics_WithConfigurationRaw config = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/metrics/") GHC.Base.mempty)
