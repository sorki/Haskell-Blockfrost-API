-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTxs_Hash_PoolUpdates
module BlockfrostAPI.Operations.GetTxsHashPoolUpdates where

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

-- | > GET /txs/{hash}/pool_updates
-- 
-- Obtain information about stake pool registration and update certificates of a specific transaction.
getTxs_Hash_PoolUpdates :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetTxsHashPoolUpdatesResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_PoolUpdates hash = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTxsHashPoolUpdatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    ([TxContentPoolCerts]))
                                                                                                                                                                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody400)
                                                                                                                                                                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody403)
                                                                                                                                                                               | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody404)
                                                                                                                                                                               | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody418)
                                                                                                                                                                               | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody429)
                                                                                                                                                                               | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashPoolUpdatesResponseBody500)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/pool_updates"))) GHC.Base.mempty)
-- | Represents a response of the operation 'getTxs_Hash_PoolUpdates'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTxsHashPoolUpdatesResponseError' is used.
data GetTxsHashPoolUpdatesResponse =
   GetTxsHashPoolUpdatesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTxsHashPoolUpdatesResponse200 ([TxContentPoolCerts]) -- ^ Obtain information about stake pool certificates of a specific transaction
  | GetTxsHashPoolUpdatesResponse400 GetTxsHashPoolUpdatesResponseBody400 -- ^ Bad request
  | GetTxsHashPoolUpdatesResponse403 GetTxsHashPoolUpdatesResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetTxsHashPoolUpdatesResponse404 GetTxsHashPoolUpdatesResponseBody404 -- ^ Component not found
  | GetTxsHashPoolUpdatesResponse418 GetTxsHashPoolUpdatesResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetTxsHashPoolUpdatesResponse429 GetTxsHashPoolUpdatesResponseBody429 -- ^ Usage limit reached
  | GetTxsHashPoolUpdatesResponse500 GetTxsHashPoolUpdatesResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody400 = GetTxsHashPoolUpdatesResponseBody400 {
  -- | error
  getTxsHashPoolUpdatesResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody400" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody400' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody400 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody400StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody400
mkGetTxsHashPoolUpdatesResponseBody400 getTxsHashPoolUpdatesResponseBody400Error getTxsHashPoolUpdatesResponseBody400Message getTxsHashPoolUpdatesResponseBody400StatusCode = GetTxsHashPoolUpdatesResponseBody400{getTxsHashPoolUpdatesResponseBody400Error = getTxsHashPoolUpdatesResponseBody400Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody400Message = getTxsHashPoolUpdatesResponseBody400Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody400StatusCode = getTxsHashPoolUpdatesResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody403 = GetTxsHashPoolUpdatesResponseBody403 {
  -- | error
  getTxsHashPoolUpdatesResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody403" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody403' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody403 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody403StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody403
mkGetTxsHashPoolUpdatesResponseBody403 getTxsHashPoolUpdatesResponseBody403Error getTxsHashPoolUpdatesResponseBody403Message getTxsHashPoolUpdatesResponseBody403StatusCode = GetTxsHashPoolUpdatesResponseBody403{getTxsHashPoolUpdatesResponseBody403Error = getTxsHashPoolUpdatesResponseBody403Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody403Message = getTxsHashPoolUpdatesResponseBody403Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody403StatusCode = getTxsHashPoolUpdatesResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody404 = GetTxsHashPoolUpdatesResponseBody404 {
  -- | error
  getTxsHashPoolUpdatesResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody404" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody404' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody404 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody404StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody404
mkGetTxsHashPoolUpdatesResponseBody404 getTxsHashPoolUpdatesResponseBody404Error getTxsHashPoolUpdatesResponseBody404Message getTxsHashPoolUpdatesResponseBody404StatusCode = GetTxsHashPoolUpdatesResponseBody404{getTxsHashPoolUpdatesResponseBody404Error = getTxsHashPoolUpdatesResponseBody404Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody404Message = getTxsHashPoolUpdatesResponseBody404Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody404StatusCode = getTxsHashPoolUpdatesResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody418 = GetTxsHashPoolUpdatesResponseBody418 {
  -- | error
  getTxsHashPoolUpdatesResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody418" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody418' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody418 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody418StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody418
mkGetTxsHashPoolUpdatesResponseBody418 getTxsHashPoolUpdatesResponseBody418Error getTxsHashPoolUpdatesResponseBody418Message getTxsHashPoolUpdatesResponseBody418StatusCode = GetTxsHashPoolUpdatesResponseBody418{getTxsHashPoolUpdatesResponseBody418Error = getTxsHashPoolUpdatesResponseBody418Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody418Message = getTxsHashPoolUpdatesResponseBody418Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody418StatusCode = getTxsHashPoolUpdatesResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody429 = GetTxsHashPoolUpdatesResponseBody429 {
  -- | error
  getTxsHashPoolUpdatesResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody429" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody429' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody429 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody429StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody429
mkGetTxsHashPoolUpdatesResponseBody429 getTxsHashPoolUpdatesResponseBody429Error getTxsHashPoolUpdatesResponseBody429Message getTxsHashPoolUpdatesResponseBody429StatusCode = GetTxsHashPoolUpdatesResponseBody429{getTxsHashPoolUpdatesResponseBody429Error = getTxsHashPoolUpdatesResponseBody429Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody429Message = getTxsHashPoolUpdatesResponseBody429Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody429StatusCode = getTxsHashPoolUpdatesResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashPoolUpdatesResponseBody500 = GetTxsHashPoolUpdatesResponseBody500 {
  -- | error
  getTxsHashPoolUpdatesResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashPoolUpdatesResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashPoolUpdatesResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashPoolUpdatesResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashPoolUpdatesResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashPoolUpdatesResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashPoolUpdatesResponseBody500" (\obj -> ((GHC.Base.pure GetTxsHashPoolUpdatesResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashPoolUpdatesResponseBody500' with all required fields.
mkGetTxsHashPoolUpdatesResponseBody500 :: Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashPoolUpdatesResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashPoolUpdatesResponseBody500StatusCode'
  -> GetTxsHashPoolUpdatesResponseBody500
mkGetTxsHashPoolUpdatesResponseBody500 getTxsHashPoolUpdatesResponseBody500Error getTxsHashPoolUpdatesResponseBody500Message getTxsHashPoolUpdatesResponseBody500StatusCode = GetTxsHashPoolUpdatesResponseBody500{getTxsHashPoolUpdatesResponseBody500Error = getTxsHashPoolUpdatesResponseBody500Error,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody500Message = getTxsHashPoolUpdatesResponseBody500Message,
                                                                                                                                                                                                                   getTxsHashPoolUpdatesResponseBody500StatusCode = getTxsHashPoolUpdatesResponseBody500StatusCode}
-- | > GET /txs/{hash}/pool_updates
-- 
-- The same as 'getTxs_Hash_PoolUpdates' but accepts an explicit configuration.
getTxs_Hash_PoolUpdatesWithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> m (Network.HTTP.Client.Types.Response GetTxsHashPoolUpdatesResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_PoolUpdatesWithConfiguration config
                                         hash = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetTxsHashPoolUpdatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     ([TxContentPoolCerts]))
                                                                                                                                                                                                | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody400)
                                                                                                                                                                                                | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody403)
                                                                                                                                                                                                | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody404)
                                                                                                                                                                                                | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody418)
                                                                                                                                                                                                | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody429)
                                                                                                                                                                                                | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashPoolUpdatesResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashPoolUpdatesResponseBody500)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/pool_updates"))) GHC.Base.mempty)
-- | > GET /txs/{hash}/pool_updates
-- 
-- The same as 'getTxs_Hash_PoolUpdates' but returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_PoolUpdatesRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_PoolUpdatesRaw hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/pool_updates"))) GHC.Base.mempty)
-- | > GET /txs/{hash}/pool_updates
-- 
-- The same as 'getTxs_Hash_PoolUpdates' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_PoolUpdatesWithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_PoolUpdatesWithConfigurationRaw config
                                            hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/pool_updates"))) GHC.Base.mempty)
