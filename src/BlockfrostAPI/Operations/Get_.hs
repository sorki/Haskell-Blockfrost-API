-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_
module BlockfrostAPI.Operations.Get_ where

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

-- | > GET /
-- 
-- Root endpoint has no other function than to point end users to documentation.
get_ :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetResponse) -- ^ Monadic computation which returns the result of the operation
get_ = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody200)
                                                                                                                                     | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody400)
                                                                                                                                     | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody403)
                                                                                                                                     | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody418)
                                                                                                                                     | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody429)
                                                                                                                                     | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetResponseBody500)
                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/") GHC.Base.mempty)
-- | Represents a response of the operation 'get_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetResponseError' is used.
data GetResponse =
   GetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetResponse200 GetResponseBody200 -- ^ Information pointing to the documentation.
  | GetResponse400 GetResponseBody400 -- ^ Bad request
  | GetResponse403 GetResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetResponse418 GetResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetResponse429 GetResponseBody429 -- ^ Usage limit reached
  | GetResponse500 GetResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody200 = GetResponseBody200 {
  -- | url
  getResponseBody200Url :: Data.Text.Internal.Text
  -- | version
  , getResponseBody200Version :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("url" Data.Aeson.Types.ToJSON..= getResponseBody200Url obj : "version" Data.Aeson.Types.ToJSON..= getResponseBody200Version obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("url" Data.Aeson.Types.ToJSON..= getResponseBody200Url obj) GHC.Base.<> ("version" Data.Aeson.Types.ToJSON..= getResponseBody200Version obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody200" (\obj -> (GHC.Base.pure GetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "version"))
-- | Create a new 'GetResponseBody200' with all required fields.
mkGetResponseBody200 :: Data.Text.Internal.Text -- ^ 'getResponseBody200Url'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody200Version'
  -> GetResponseBody200
mkGetResponseBody200 getResponseBody200Url getResponseBody200Version = GetResponseBody200{getResponseBody200Url = getResponseBody200Url,
                                                                                          getResponseBody200Version = getResponseBody200Version}
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody400 = GetResponseBody400 {
  -- | error
  getResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody400" (\obj -> ((GHC.Base.pure GetResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetResponseBody400' with all required fields.
mkGetResponseBody400 :: Data.Text.Internal.Text -- ^ 'getResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getResponseBody400StatusCode'
  -> GetResponseBody400
mkGetResponseBody400 getResponseBody400Error getResponseBody400Message getResponseBody400StatusCode = GetResponseBody400{getResponseBody400Error = getResponseBody400Error,
                                                                                                                         getResponseBody400Message = getResponseBody400Message,
                                                                                                                         getResponseBody400StatusCode = getResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody403 = GetResponseBody403 {
  -- | error
  getResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody403" (\obj -> ((GHC.Base.pure GetResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetResponseBody403' with all required fields.
mkGetResponseBody403 :: Data.Text.Internal.Text -- ^ 'getResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getResponseBody403StatusCode'
  -> GetResponseBody403
mkGetResponseBody403 getResponseBody403Error getResponseBody403Message getResponseBody403StatusCode = GetResponseBody403{getResponseBody403Error = getResponseBody403Error,
                                                                                                                         getResponseBody403Message = getResponseBody403Message,
                                                                                                                         getResponseBody403StatusCode = getResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody418 = GetResponseBody418 {
  -- | error
  getResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody418" (\obj -> ((GHC.Base.pure GetResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetResponseBody418' with all required fields.
mkGetResponseBody418 :: Data.Text.Internal.Text -- ^ 'getResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getResponseBody418StatusCode'
  -> GetResponseBody418
mkGetResponseBody418 getResponseBody418Error getResponseBody418Message getResponseBody418StatusCode = GetResponseBody418{getResponseBody418Error = getResponseBody418Error,
                                                                                                                         getResponseBody418Message = getResponseBody418Message,
                                                                                                                         getResponseBody418StatusCode = getResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody429 = GetResponseBody429 {
  -- | error
  getResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody429" (\obj -> ((GHC.Base.pure GetResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetResponseBody429' with all required fields.
mkGetResponseBody429 :: Data.Text.Internal.Text -- ^ 'getResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getResponseBody429StatusCode'
  -> GetResponseBody429
mkGetResponseBody429 getResponseBody429Error getResponseBody429Message getResponseBody429StatusCode = GetResponseBody429{getResponseBody429Error = getResponseBody429Error,
                                                                                                                         getResponseBody429Message = getResponseBody429Message,
                                                                                                                         getResponseBody429StatusCode = getResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetResponseBody500 = GetResponseBody500 {
  -- | error
  getResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetResponseBody500" (\obj -> ((GHC.Base.pure GetResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetResponseBody500' with all required fields.
mkGetResponseBody500 :: Data.Text.Internal.Text -- ^ 'getResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getResponseBody500StatusCode'
  -> GetResponseBody500
mkGetResponseBody500 getResponseBody500Error getResponseBody500Message getResponseBody500StatusCode = GetResponseBody500{getResponseBody500Error = getResponseBody500Error,
                                                                                                                         getResponseBody500Message = getResponseBody500Message,
                                                                                                                         getResponseBody500StatusCode = getResponseBody500StatusCode}
-- | > GET /
-- 
-- The same as 'get_' but accepts an explicit configuration.
get_WithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response GetResponse) -- ^ Monadic computation which returns the result of the operation
get_WithConfiguration config = GHC.Base.fmap (\response_7 -> GHC.Base.fmap (Data.Either.either GetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                GetResponseBody200)
                                                                                                                                                             | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                GetResponseBody400)
                                                                                                                                                             | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                  GetResponseBody403)
                                                                                                                                                             | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                  GetResponseBody418)
                                                                                                                                                             | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                  GetResponseBody429)
                                                                                                                                                             | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                  GetResponseBody500)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_7) response_7) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/") GHC.Base.mempty)
-- | > GET /
-- 
-- The same as 'get_' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_Raw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_Raw = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/") GHC.Base.mempty)
-- | > GET /
-- 
-- The same as 'get_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_WithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_WithConfigurationRaw config = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/") GHC.Base.mempty)
