-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTxs_Hash_
module BlockfrostAPI.Operations.GetTxsHash_ where

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

-- | > GET /txs/{hash}
-- 
-- Return content of the requested transaction.
getTxs_Hash_ :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetTxsHashResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_ hash = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTxsHashResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   TxContent)
                                                                                                                                                         | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody400)
                                                                                                                                                         | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody403)
                                                                                                                                                         | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody404)
                                                                                                                                                         | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody418)
                                                                                                                                                         | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody429)
                                                                                                                                                         | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetTxsHashResponseBody500)
                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'getTxs_Hash_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTxsHashResponseError' is used.
data GetTxsHashResponse =
   GetTxsHashResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTxsHashResponse200 TxContent -- ^ Return the contents of the transaction.
  | GetTxsHashResponse400 GetTxsHashResponseBody400 -- ^ Bad request
  | GetTxsHashResponse403 GetTxsHashResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetTxsHashResponse404 GetTxsHashResponseBody404 -- ^ Component not found
  | GetTxsHashResponse418 GetTxsHashResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetTxsHashResponse429 GetTxsHashResponseBody429 -- ^ Usage limit reached
  | GetTxsHashResponse500 GetTxsHashResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody400 = GetTxsHashResponseBody400 {
  -- | error
  getTxsHashResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody400" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody400' with all required fields.
mkGetTxsHashResponseBody400 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody400StatusCode'
  -> GetTxsHashResponseBody400
mkGetTxsHashResponseBody400 getTxsHashResponseBody400Error getTxsHashResponseBody400Message getTxsHashResponseBody400StatusCode = GetTxsHashResponseBody400{getTxsHashResponseBody400Error = getTxsHashResponseBody400Error,
                                                                                                                                                            getTxsHashResponseBody400Message = getTxsHashResponseBody400Message,
                                                                                                                                                            getTxsHashResponseBody400StatusCode = getTxsHashResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody403 = GetTxsHashResponseBody403 {
  -- | error
  getTxsHashResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody403" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody403' with all required fields.
mkGetTxsHashResponseBody403 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody403StatusCode'
  -> GetTxsHashResponseBody403
mkGetTxsHashResponseBody403 getTxsHashResponseBody403Error getTxsHashResponseBody403Message getTxsHashResponseBody403StatusCode = GetTxsHashResponseBody403{getTxsHashResponseBody403Error = getTxsHashResponseBody403Error,
                                                                                                                                                            getTxsHashResponseBody403Message = getTxsHashResponseBody403Message,
                                                                                                                                                            getTxsHashResponseBody403StatusCode = getTxsHashResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody404 = GetTxsHashResponseBody404 {
  -- | error
  getTxsHashResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody404" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody404' with all required fields.
mkGetTxsHashResponseBody404 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody404StatusCode'
  -> GetTxsHashResponseBody404
mkGetTxsHashResponseBody404 getTxsHashResponseBody404Error getTxsHashResponseBody404Message getTxsHashResponseBody404StatusCode = GetTxsHashResponseBody404{getTxsHashResponseBody404Error = getTxsHashResponseBody404Error,
                                                                                                                                                            getTxsHashResponseBody404Message = getTxsHashResponseBody404Message,
                                                                                                                                                            getTxsHashResponseBody404StatusCode = getTxsHashResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody418 = GetTxsHashResponseBody418 {
  -- | error
  getTxsHashResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody418" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody418' with all required fields.
mkGetTxsHashResponseBody418 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody418StatusCode'
  -> GetTxsHashResponseBody418
mkGetTxsHashResponseBody418 getTxsHashResponseBody418Error getTxsHashResponseBody418Message getTxsHashResponseBody418StatusCode = GetTxsHashResponseBody418{getTxsHashResponseBody418Error = getTxsHashResponseBody418Error,
                                                                                                                                                            getTxsHashResponseBody418Message = getTxsHashResponseBody418Message,
                                                                                                                                                            getTxsHashResponseBody418StatusCode = getTxsHashResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody429 = GetTxsHashResponseBody429 {
  -- | error
  getTxsHashResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody429" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody429' with all required fields.
mkGetTxsHashResponseBody429 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody429StatusCode'
  -> GetTxsHashResponseBody429
mkGetTxsHashResponseBody429 getTxsHashResponseBody429Error getTxsHashResponseBody429Message getTxsHashResponseBody429StatusCode = GetTxsHashResponseBody429{getTxsHashResponseBody429Error = getTxsHashResponseBody429Error,
                                                                                                                                                            getTxsHashResponseBody429Message = getTxsHashResponseBody429Message,
                                                                                                                                                            getTxsHashResponseBody429StatusCode = getTxsHashResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashResponseBody500 = GetTxsHashResponseBody500 {
  -- | error
  getTxsHashResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashResponseBody500" (\obj -> ((GHC.Base.pure GetTxsHashResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashResponseBody500' with all required fields.
mkGetTxsHashResponseBody500 :: Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashResponseBody500StatusCode'
  -> GetTxsHashResponseBody500
mkGetTxsHashResponseBody500 getTxsHashResponseBody500Error getTxsHashResponseBody500Message getTxsHashResponseBody500StatusCode = GetTxsHashResponseBody500{getTxsHashResponseBody500Error = getTxsHashResponseBody500Error,
                                                                                                                                                            getTxsHashResponseBody500Message = getTxsHashResponseBody500Message,
                                                                                                                                                            getTxsHashResponseBody500StatusCode = getTxsHashResponseBody500StatusCode}
-- | > GET /txs/{hash}
-- 
-- The same as 'getTxs_Hash_' but accepts an explicit configuration.
getTxs_Hash_WithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> m (Network.HTTP.Client.Types.Response GetTxsHashResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_WithConfiguration config
                              hash = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetTxsHashResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    TxContent)
                                                                                                                                                                          | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody400)
                                                                                                                                                                          | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody403)
                                                                                                                                                                          | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody404)
                                                                                                                                                                          | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody418)
                                                                                                                                                                          | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody429)
                                                                                                                                                                          | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetTxsHashResponseBody500)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /txs/{hash}
-- 
-- The same as 'getTxs_Hash_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_Raw :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_Raw hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /txs/{hash}
-- 
-- The same as 'getTxs_Hash_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_WithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_WithConfigurationRaw config
                                 hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ ""))) GHC.Base.mempty)
