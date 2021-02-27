-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getHealthClock
module BlockfrostAPI.Operations.GetHealthClock where

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

-- | > GET /health/clock
-- 
-- This endpoint provides the current UNIX time. Your application might
-- use this to verify if the client clock is not out of sync.
getHealthClock :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetHealthClockResponse) -- ^ Monadic computation which returns the result of the operation
getHealthClock = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetHealthClockResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody200)
                                                                                                                                                          | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody400)
                                                                                                                                                          | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody403)
                                                                                                                                                          | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody418)
                                                                                                                                                          | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody429)
                                                                                                                                                          | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetHealthClockResponseBody500)
                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/health/clock") GHC.Base.mempty)
-- | Represents a response of the operation 'getHealthClock'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetHealthClockResponseError' is used.
data GetHealthClockResponse =
   GetHealthClockResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetHealthClockResponse200 GetHealthClockResponseBody200 -- ^ Return the current UNIX time in milliseconds.
  | GetHealthClockResponse400 GetHealthClockResponseBody400 -- ^ Bad request
  | GetHealthClockResponse403 GetHealthClockResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetHealthClockResponse418 GetHealthClockResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetHealthClockResponse429 GetHealthClockResponseBody429 -- ^ Usage limit reached
  | GetHealthClockResponse500 GetHealthClockResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/health\/clock.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody200 = GetHealthClockResponseBody200 {
  -- | server_time
  getHealthClockResponseBody200ServerTime :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("server_time" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody200ServerTime obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("server_time" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody200ServerTime obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody200" (\obj -> GHC.Base.pure GetHealthClockResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "server_time"))
-- | Create a new 'GetHealthClockResponseBody200' with all required fields.
mkGetHealthClockResponseBody200 :: GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody200ServerTime'
  -> GetHealthClockResponseBody200
mkGetHealthClockResponseBody200 getHealthClockResponseBody200ServerTime = GetHealthClockResponseBody200{getHealthClockResponseBody200ServerTime = getHealthClockResponseBody200ServerTime}
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody400 = GetHealthClockResponseBody400 {
  -- | error
  getHealthClockResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getHealthClockResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getHealthClockResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody400" (\obj -> ((GHC.Base.pure GetHealthClockResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetHealthClockResponseBody400' with all required fields.
mkGetHealthClockResponseBody400 :: Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody400StatusCode'
  -> GetHealthClockResponseBody400
mkGetHealthClockResponseBody400 getHealthClockResponseBody400Error getHealthClockResponseBody400Message getHealthClockResponseBody400StatusCode = GetHealthClockResponseBody400{getHealthClockResponseBody400Error = getHealthClockResponseBody400Error,
                                                                                                                                                                                getHealthClockResponseBody400Message = getHealthClockResponseBody400Message,
                                                                                                                                                                                getHealthClockResponseBody400StatusCode = getHealthClockResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody403 = GetHealthClockResponseBody403 {
  -- | error
  getHealthClockResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getHealthClockResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getHealthClockResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody403" (\obj -> ((GHC.Base.pure GetHealthClockResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetHealthClockResponseBody403' with all required fields.
mkGetHealthClockResponseBody403 :: Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody403StatusCode'
  -> GetHealthClockResponseBody403
mkGetHealthClockResponseBody403 getHealthClockResponseBody403Error getHealthClockResponseBody403Message getHealthClockResponseBody403StatusCode = GetHealthClockResponseBody403{getHealthClockResponseBody403Error = getHealthClockResponseBody403Error,
                                                                                                                                                                                getHealthClockResponseBody403Message = getHealthClockResponseBody403Message,
                                                                                                                                                                                getHealthClockResponseBody403StatusCode = getHealthClockResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody418 = GetHealthClockResponseBody418 {
  -- | error
  getHealthClockResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getHealthClockResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getHealthClockResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody418" (\obj -> ((GHC.Base.pure GetHealthClockResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetHealthClockResponseBody418' with all required fields.
mkGetHealthClockResponseBody418 :: Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody418StatusCode'
  -> GetHealthClockResponseBody418
mkGetHealthClockResponseBody418 getHealthClockResponseBody418Error getHealthClockResponseBody418Message getHealthClockResponseBody418StatusCode = GetHealthClockResponseBody418{getHealthClockResponseBody418Error = getHealthClockResponseBody418Error,
                                                                                                                                                                                getHealthClockResponseBody418Message = getHealthClockResponseBody418Message,
                                                                                                                                                                                getHealthClockResponseBody418StatusCode = getHealthClockResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody429 = GetHealthClockResponseBody429 {
  -- | error
  getHealthClockResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getHealthClockResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getHealthClockResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody429" (\obj -> ((GHC.Base.pure GetHealthClockResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetHealthClockResponseBody429' with all required fields.
mkGetHealthClockResponseBody429 :: Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody429StatusCode'
  -> GetHealthClockResponseBody429
mkGetHealthClockResponseBody429 getHealthClockResponseBody429Error getHealthClockResponseBody429Message getHealthClockResponseBody429StatusCode = GetHealthClockResponseBody429{getHealthClockResponseBody429Error = getHealthClockResponseBody429Error,
                                                                                                                                                                                getHealthClockResponseBody429Message = getHealthClockResponseBody429Message,
                                                                                                                                                                                getHealthClockResponseBody429StatusCode = getHealthClockResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetHealthClockResponseBody500 = GetHealthClockResponseBody500 {
  -- | error
  getHealthClockResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getHealthClockResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getHealthClockResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetHealthClockResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getHealthClockResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetHealthClockResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetHealthClockResponseBody500" (\obj -> ((GHC.Base.pure GetHealthClockResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetHealthClockResponseBody500' with all required fields.
mkGetHealthClockResponseBody500 :: Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getHealthClockResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getHealthClockResponseBody500StatusCode'
  -> GetHealthClockResponseBody500
mkGetHealthClockResponseBody500 getHealthClockResponseBody500Error getHealthClockResponseBody500Message getHealthClockResponseBody500StatusCode = GetHealthClockResponseBody500{getHealthClockResponseBody500Error = getHealthClockResponseBody500Error,
                                                                                                                                                                                getHealthClockResponseBody500Message = getHealthClockResponseBody500Message,
                                                                                                                                                                                getHealthClockResponseBody500StatusCode = getHealthClockResponseBody500StatusCode}
-- | > GET /health/clock
-- 
-- The same as 'getHealthClock' but accepts an explicit configuration.
getHealthClockWithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response GetHealthClockResponse) -- ^ Monadic computation which returns the result of the operation
getHealthClockWithConfiguration config = GHC.Base.fmap (\response_7 -> GHC.Base.fmap (Data.Either.either GetHealthClockResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                GetHealthClockResponseBody200)
                                                                                                                                                                                  | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                GetHealthClockResponseBody400)
                                                                                                                                                                                  | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  GetHealthClockResponseBody403)
                                                                                                                                                                                  | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  GetHealthClockResponseBody418)
                                                                                                                                                                                  | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  GetHealthClockResponseBody429)
                                                                                                                                                                                  | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetHealthClockResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  GetHealthClockResponseBody500)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_7) response_7) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/health/clock") GHC.Base.mempty)
-- | > GET /health/clock
-- 
-- The same as 'getHealthClock' but returns the raw 'Data.ByteString.Char8.ByteString'.
getHealthClockRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getHealthClockRaw = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/health/clock") GHC.Base.mempty)
-- | > GET /health/clock
-- 
-- The same as 'getHealthClock' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getHealthClockWithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getHealthClockWithConfigurationRaw config = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/health/clock") GHC.Base.mempty)
