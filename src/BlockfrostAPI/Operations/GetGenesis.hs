-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getGenesis
module BlockfrostAPI.Operations.GetGenesis where

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

-- | > GET /genesis
-- 
-- Return the information about blockchain genesis.
getGenesis :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetGenesisResponse) -- ^ Monadic computation which returns the result of the operation
getGenesis = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetGenesisResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GenesisContent)
                                                                                                                                                  | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetGenesisResponseBody400)
                                                                                                                                                  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetGenesisResponseBody403)
                                                                                                                                                  | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetGenesisResponseBody418)
                                                                                                                                                  | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetGenesisResponseBody429)
                                                                                                                                                  | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetGenesisResponseBody500)
                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/genesis") GHC.Base.mempty)
-- | Represents a response of the operation 'getGenesis'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetGenesisResponseError' is used.
data GetGenesisResponse =
   GetGenesisResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetGenesisResponse200 GenesisContent -- ^ Return the genesis parameters.
  | GetGenesisResponse400 GetGenesisResponseBody400 -- ^ Bad request
  | GetGenesisResponse403 GetGenesisResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetGenesisResponse418 GetGenesisResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetGenesisResponse429 GetGenesisResponseBody429 -- ^ Usage limit reached
  | GetGenesisResponse500 GetGenesisResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetGenesisResponseBody400 = GetGenesisResponseBody400 {
  -- | error
  getGenesisResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getGenesisResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getGenesisResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetGenesisResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetGenesisResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetGenesisResponseBody400" (\obj -> ((GHC.Base.pure GetGenesisResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetGenesisResponseBody400' with all required fields.
mkGetGenesisResponseBody400 :: Data.Text.Internal.Text -- ^ 'getGenesisResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getGenesisResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getGenesisResponseBody400StatusCode'
  -> GetGenesisResponseBody400
mkGetGenesisResponseBody400 getGenesisResponseBody400Error getGenesisResponseBody400Message getGenesisResponseBody400StatusCode = GetGenesisResponseBody400{getGenesisResponseBody400Error = getGenesisResponseBody400Error,
                                                                                                                                                            getGenesisResponseBody400Message = getGenesisResponseBody400Message,
                                                                                                                                                            getGenesisResponseBody400StatusCode = getGenesisResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetGenesisResponseBody403 = GetGenesisResponseBody403 {
  -- | error
  getGenesisResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getGenesisResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getGenesisResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetGenesisResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetGenesisResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetGenesisResponseBody403" (\obj -> ((GHC.Base.pure GetGenesisResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetGenesisResponseBody403' with all required fields.
mkGetGenesisResponseBody403 :: Data.Text.Internal.Text -- ^ 'getGenesisResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getGenesisResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getGenesisResponseBody403StatusCode'
  -> GetGenesisResponseBody403
mkGetGenesisResponseBody403 getGenesisResponseBody403Error getGenesisResponseBody403Message getGenesisResponseBody403StatusCode = GetGenesisResponseBody403{getGenesisResponseBody403Error = getGenesisResponseBody403Error,
                                                                                                                                                            getGenesisResponseBody403Message = getGenesisResponseBody403Message,
                                                                                                                                                            getGenesisResponseBody403StatusCode = getGenesisResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetGenesisResponseBody418 = GetGenesisResponseBody418 {
  -- | error
  getGenesisResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getGenesisResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getGenesisResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetGenesisResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetGenesisResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetGenesisResponseBody418" (\obj -> ((GHC.Base.pure GetGenesisResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetGenesisResponseBody418' with all required fields.
mkGetGenesisResponseBody418 :: Data.Text.Internal.Text -- ^ 'getGenesisResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getGenesisResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getGenesisResponseBody418StatusCode'
  -> GetGenesisResponseBody418
mkGetGenesisResponseBody418 getGenesisResponseBody418Error getGenesisResponseBody418Message getGenesisResponseBody418StatusCode = GetGenesisResponseBody418{getGenesisResponseBody418Error = getGenesisResponseBody418Error,
                                                                                                                                                            getGenesisResponseBody418Message = getGenesisResponseBody418Message,
                                                                                                                                                            getGenesisResponseBody418StatusCode = getGenesisResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetGenesisResponseBody429 = GetGenesisResponseBody429 {
  -- | error
  getGenesisResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getGenesisResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getGenesisResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetGenesisResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetGenesisResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetGenesisResponseBody429" (\obj -> ((GHC.Base.pure GetGenesisResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetGenesisResponseBody429' with all required fields.
mkGetGenesisResponseBody429 :: Data.Text.Internal.Text -- ^ 'getGenesisResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getGenesisResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getGenesisResponseBody429StatusCode'
  -> GetGenesisResponseBody429
mkGetGenesisResponseBody429 getGenesisResponseBody429Error getGenesisResponseBody429Message getGenesisResponseBody429StatusCode = GetGenesisResponseBody429{getGenesisResponseBody429Error = getGenesisResponseBody429Error,
                                                                                                                                                            getGenesisResponseBody429Message = getGenesisResponseBody429Message,
                                                                                                                                                            getGenesisResponseBody429StatusCode = getGenesisResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetGenesisResponseBody500 = GetGenesisResponseBody500 {
  -- | error
  getGenesisResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getGenesisResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getGenesisResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetGenesisResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getGenesisResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetGenesisResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetGenesisResponseBody500" (\obj -> ((GHC.Base.pure GetGenesisResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetGenesisResponseBody500' with all required fields.
mkGetGenesisResponseBody500 :: Data.Text.Internal.Text -- ^ 'getGenesisResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getGenesisResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getGenesisResponseBody500StatusCode'
  -> GetGenesisResponseBody500
mkGetGenesisResponseBody500 getGenesisResponseBody500Error getGenesisResponseBody500Message getGenesisResponseBody500StatusCode = GetGenesisResponseBody500{getGenesisResponseBody500Error = getGenesisResponseBody500Error,
                                                                                                                                                            getGenesisResponseBody500Message = getGenesisResponseBody500Message,
                                                                                                                                                            getGenesisResponseBody500StatusCode = getGenesisResponseBody500StatusCode}
-- | > GET /genesis
-- 
-- The same as 'getGenesis' but accepts an explicit configuration.
getGenesisWithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response GetGenesisResponse) -- ^ Monadic computation which returns the result of the operation
getGenesisWithConfiguration config = GHC.Base.fmap (\response_7 -> GHC.Base.fmap (Data.Either.either GetGenesisResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_8 -> Network.HTTP.Types.Status.statusCode status_8 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    GenesisContent)
                                                                                                                                                                          | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    GetGenesisResponseBody400)
                                                                                                                                                                          | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetGenesisResponseBody403)
                                                                                                                                                                          | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetGenesisResponseBody418)
                                                                                                                                                                          | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetGenesisResponseBody429)
                                                                                                                                                                          | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetGenesisResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetGenesisResponseBody500)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_7) response_7) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/genesis") GHC.Base.mempty)
-- | > GET /genesis
-- 
-- The same as 'getGenesis' but returns the raw 'Data.ByteString.Char8.ByteString'.
getGenesisRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getGenesisRaw = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/genesis") GHC.Base.mempty)
-- | > GET /genesis
-- 
-- The same as 'getGenesis' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getGenesisWithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getGenesisWithConfigurationRaw config = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/genesis") GHC.Base.mempty)
