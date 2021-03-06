-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getAddresses_Address_
module BlockfrostAPI.Operations.GetAddressesAddress_ where

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

-- | > GET /addresses/{address}
-- 
-- Obtain information about a specific address.
getAddresses_Address_ :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ address: Bech32 address.
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetAddressesAddressResponse) -- ^ Monadic computation which returns the result of the operation
getAddresses_Address_ address = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAddressesAddressResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 AddressContent)
                                                                                                                                                                              | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody400)
                                                                                                                                                                              | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody403)
                                                                                                                                                                              | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody404)
                                                                                                                                                                              | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody418)
                                                                                                                                                                              | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody429)
                                                                                                                                                                              | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 GetAddressesAddressResponseBody500)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/addresses/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel address)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'getAddresses_Address_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAddressesAddressResponseError' is used.
data GetAddressesAddressResponse =
   GetAddressesAddressResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetAddressesAddressResponse200 AddressContent -- ^ Return the address content.
  | GetAddressesAddressResponse400 GetAddressesAddressResponseBody400 -- ^ Bad request
  | GetAddressesAddressResponse403 GetAddressesAddressResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetAddressesAddressResponse404 GetAddressesAddressResponseBody404 -- ^ Component not found
  | GetAddressesAddressResponse418 GetAddressesAddressResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetAddressesAddressResponse429 GetAddressesAddressResponseBody429 -- ^ Usage limit reached
  | GetAddressesAddressResponse500 GetAddressesAddressResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody400 = GetAddressesAddressResponseBody400 {
  -- | error
  getAddressesAddressResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody400" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody400' with all required fields.
mkGetAddressesAddressResponseBody400 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody400StatusCode'
  -> GetAddressesAddressResponseBody400
mkGetAddressesAddressResponseBody400 getAddressesAddressResponseBody400Error getAddressesAddressResponseBody400Message getAddressesAddressResponseBody400StatusCode = GetAddressesAddressResponseBody400{getAddressesAddressResponseBody400Error = getAddressesAddressResponseBody400Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody400Message = getAddressesAddressResponseBody400Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody400StatusCode = getAddressesAddressResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody403 = GetAddressesAddressResponseBody403 {
  -- | error
  getAddressesAddressResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody403" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody403' with all required fields.
mkGetAddressesAddressResponseBody403 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody403StatusCode'
  -> GetAddressesAddressResponseBody403
mkGetAddressesAddressResponseBody403 getAddressesAddressResponseBody403Error getAddressesAddressResponseBody403Message getAddressesAddressResponseBody403StatusCode = GetAddressesAddressResponseBody403{getAddressesAddressResponseBody403Error = getAddressesAddressResponseBody403Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody403Message = getAddressesAddressResponseBody403Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody403StatusCode = getAddressesAddressResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody404 = GetAddressesAddressResponseBody404 {
  -- | error
  getAddressesAddressResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody404" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody404' with all required fields.
mkGetAddressesAddressResponseBody404 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody404StatusCode'
  -> GetAddressesAddressResponseBody404
mkGetAddressesAddressResponseBody404 getAddressesAddressResponseBody404Error getAddressesAddressResponseBody404Message getAddressesAddressResponseBody404StatusCode = GetAddressesAddressResponseBody404{getAddressesAddressResponseBody404Error = getAddressesAddressResponseBody404Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody404Message = getAddressesAddressResponseBody404Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody404StatusCode = getAddressesAddressResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody418 = GetAddressesAddressResponseBody418 {
  -- | error
  getAddressesAddressResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody418" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody418' with all required fields.
mkGetAddressesAddressResponseBody418 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody418StatusCode'
  -> GetAddressesAddressResponseBody418
mkGetAddressesAddressResponseBody418 getAddressesAddressResponseBody418Error getAddressesAddressResponseBody418Message getAddressesAddressResponseBody418StatusCode = GetAddressesAddressResponseBody418{getAddressesAddressResponseBody418Error = getAddressesAddressResponseBody418Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody418Message = getAddressesAddressResponseBody418Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody418StatusCode = getAddressesAddressResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody429 = GetAddressesAddressResponseBody429 {
  -- | error
  getAddressesAddressResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody429" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody429' with all required fields.
mkGetAddressesAddressResponseBody429 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody429StatusCode'
  -> GetAddressesAddressResponseBody429
mkGetAddressesAddressResponseBody429 getAddressesAddressResponseBody429Error getAddressesAddressResponseBody429Message getAddressesAddressResponseBody429StatusCode = GetAddressesAddressResponseBody429{getAddressesAddressResponseBody429Error = getAddressesAddressResponseBody429Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody429Message = getAddressesAddressResponseBody429Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody429StatusCode = getAddressesAddressResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAddressesAddressResponseBody500 = GetAddressesAddressResponseBody500 {
  -- | error
  getAddressesAddressResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getAddressesAddressResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getAddressesAddressResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAddressesAddressResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getAddressesAddressResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAddressesAddressResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAddressesAddressResponseBody500" (\obj -> ((GHC.Base.pure GetAddressesAddressResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetAddressesAddressResponseBody500' with all required fields.
mkGetAddressesAddressResponseBody500 :: Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getAddressesAddressResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getAddressesAddressResponseBody500StatusCode'
  -> GetAddressesAddressResponseBody500
mkGetAddressesAddressResponseBody500 getAddressesAddressResponseBody500Error getAddressesAddressResponseBody500Message getAddressesAddressResponseBody500StatusCode = GetAddressesAddressResponseBody500{getAddressesAddressResponseBody500Error = getAddressesAddressResponseBody500Error,
                                                                                                                                                                                                         getAddressesAddressResponseBody500Message = getAddressesAddressResponseBody500Message,
                                                                                                                                                                                                         getAddressesAddressResponseBody500StatusCode = getAddressesAddressResponseBody500StatusCode}
-- | > GET /addresses/{address}
-- 
-- The same as 'getAddresses_Address_' but accepts an explicit configuration.
getAddresses_Address_WithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ address: Bech32 address.
  -> m (Network.HTTP.Client.Types.Response GetAddressesAddressResponse) -- ^ Monadic computation which returns the result of the operation
getAddresses_Address_WithConfiguration config
                                       address = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetAddressesAddressResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  AddressContent)
                                                                                                                                                                                               | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody400)
                                                                                                                                                                                               | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody403)
                                                                                                                                                                                               | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody404)
                                                                                                                                                                                               | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody418)
                                                                                                                                                                                               | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody429)
                                                                                                                                                                                               | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetAddressesAddressResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetAddressesAddressResponseBody500)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/addresses/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel address)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /addresses/{address}
-- 
-- The same as 'getAddresses_Address_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getAddresses_Address_Raw :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ address: Bech32 address.
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getAddresses_Address_Raw address = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/addresses/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel address)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /addresses/{address}
-- 
-- The same as 'getAddresses_Address_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getAddresses_Address_WithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ address: Bech32 address.
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getAddresses_Address_WithConfigurationRaw config
                                          address = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/addresses/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel address)) GHC.Base.++ ""))) GHC.Base.mempty)
