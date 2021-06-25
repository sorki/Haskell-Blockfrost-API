-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTxs_Hash_Delegations
module BlockfrostAPI.Operations.GetTxsHashDelegations where

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

-- | > GET /txs/{hash}/delegations
-- 
-- Obtain information about delegation certificates of a specific transaction.
getTxs_Hash_Delegations :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction.
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetTxsHashDelegationsResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_Delegations hash = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTxsHashDelegationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    TxContentDelegations)
                                                                                                                                                                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody400)
                                                                                                                                                                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody403)
                                                                                                                                                                               | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody404)
                                                                                                                                                                               | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody418)
                                                                                                                                                                               | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody429)
                                                                                                                                                                               | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTxsHashDelegationsResponseBody500)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/delegations"))) GHC.Base.mempty)
-- | Represents a response of the operation 'getTxs_Hash_Delegations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTxsHashDelegationsResponseError' is used.
data GetTxsHashDelegationsResponse =
   GetTxsHashDelegationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTxsHashDelegationsResponse200 TxContentDelegations -- ^ Obtain information about delegation certificates of a specific transaction
  | GetTxsHashDelegationsResponse400 GetTxsHashDelegationsResponseBody400 -- ^ Bad request
  | GetTxsHashDelegationsResponse403 GetTxsHashDelegationsResponseBody403 -- ^ Authentication secret is missing or invalid
  | GetTxsHashDelegationsResponse404 GetTxsHashDelegationsResponseBody404 -- ^ Component not found
  | GetTxsHashDelegationsResponse418 GetTxsHashDelegationsResponseBody418 -- ^ IP has been auto-banned for extensive sending of requests after usage limit has been reached
  | GetTxsHashDelegationsResponse429 GetTxsHashDelegationsResponseBody429 -- ^ Usage limit reached
  | GetTxsHashDelegationsResponse500 GetTxsHashDelegationsResponseBody500 -- ^ Internal Server Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.bad_request.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody400 = GetTxsHashDelegationsResponseBody400 {
  -- | error
  getTxsHashDelegationsResponseBody400Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody400Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody400StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody400StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody400" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody400' with all required fields.
mkGetTxsHashDelegationsResponseBody400 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody400Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody400Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody400StatusCode'
  -> GetTxsHashDelegationsResponseBody400
mkGetTxsHashDelegationsResponseBody400 getTxsHashDelegationsResponseBody400Error getTxsHashDelegationsResponseBody400Message getTxsHashDelegationsResponseBody400StatusCode = GetTxsHashDelegationsResponseBody400{getTxsHashDelegationsResponseBody400Error = getTxsHashDelegationsResponseBody400Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody400Message = getTxsHashDelegationsResponseBody400Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody400StatusCode = getTxsHashDelegationsResponseBody400StatusCode}
-- | Defines the object schema located at @components.responses.unauthorized_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody403 = GetTxsHashDelegationsResponseBody403 {
  -- | error
  getTxsHashDelegationsResponseBody403Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody403Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody403StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody403
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody403StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody403
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody403" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody403 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody403' with all required fields.
mkGetTxsHashDelegationsResponseBody403 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody403Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody403Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody403StatusCode'
  -> GetTxsHashDelegationsResponseBody403
mkGetTxsHashDelegationsResponseBody403 getTxsHashDelegationsResponseBody403Error getTxsHashDelegationsResponseBody403Message getTxsHashDelegationsResponseBody403StatusCode = GetTxsHashDelegationsResponseBody403{getTxsHashDelegationsResponseBody403Error = getTxsHashDelegationsResponseBody403Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody403Message = getTxsHashDelegationsResponseBody403Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody403StatusCode = getTxsHashDelegationsResponseBody403StatusCode}
-- | Defines the object schema located at @components.responses.not_found.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody404 = GetTxsHashDelegationsResponseBody404 {
  -- | error
  getTxsHashDelegationsResponseBody404Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody404Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody404StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody404
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody404StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody404
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody404" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody404 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody404' with all required fields.
mkGetTxsHashDelegationsResponseBody404 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody404Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody404Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody404StatusCode'
  -> GetTxsHashDelegationsResponseBody404
mkGetTxsHashDelegationsResponseBody404 getTxsHashDelegationsResponseBody404Error getTxsHashDelegationsResponseBody404Message getTxsHashDelegationsResponseBody404StatusCode = GetTxsHashDelegationsResponseBody404{getTxsHashDelegationsResponseBody404Error = getTxsHashDelegationsResponseBody404Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody404Message = getTxsHashDelegationsResponseBody404Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody404StatusCode = getTxsHashDelegationsResponseBody404StatusCode}
-- | Defines the object schema located at @components.responses.autobanned.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody418 = GetTxsHashDelegationsResponseBody418 {
  -- | error
  getTxsHashDelegationsResponseBody418Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody418Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody418StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody418
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody418StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody418
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody418" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody418 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody418' with all required fields.
mkGetTxsHashDelegationsResponseBody418 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody418Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody418Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody418StatusCode'
  -> GetTxsHashDelegationsResponseBody418
mkGetTxsHashDelegationsResponseBody418 getTxsHashDelegationsResponseBody418Error getTxsHashDelegationsResponseBody418Message getTxsHashDelegationsResponseBody418StatusCode = GetTxsHashDelegationsResponseBody418{getTxsHashDelegationsResponseBody418Error = getTxsHashDelegationsResponseBody418Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody418Message = getTxsHashDelegationsResponseBody418Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody418StatusCode = getTxsHashDelegationsResponseBody418StatusCode}
-- | Defines the object schema located at @components.responses.overusage_limit.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody429 = GetTxsHashDelegationsResponseBody429 {
  -- | error
  getTxsHashDelegationsResponseBody429Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody429Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody429StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody429StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody429" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody429' with all required fields.
mkGetTxsHashDelegationsResponseBody429 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody429Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody429Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody429StatusCode'
  -> GetTxsHashDelegationsResponseBody429
mkGetTxsHashDelegationsResponseBody429 getTxsHashDelegationsResponseBody429Error getTxsHashDelegationsResponseBody429Message getTxsHashDelegationsResponseBody429StatusCode = GetTxsHashDelegationsResponseBody429{getTxsHashDelegationsResponseBody429Error = getTxsHashDelegationsResponseBody429Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody429Message = getTxsHashDelegationsResponseBody429Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody429StatusCode = getTxsHashDelegationsResponseBody429StatusCode}
-- | Defines the object schema located at @components.responses.internal_server_error.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTxsHashDelegationsResponseBody500 = GetTxsHashDelegationsResponseBody500 {
  -- | error
  getTxsHashDelegationsResponseBody500Error :: Data.Text.Internal.Text
  -- | message
  , getTxsHashDelegationsResponseBody500Message :: Data.Text.Internal.Text
  -- | status_code
  , getTxsHashDelegationsResponseBody500StatusCode :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTxsHashDelegationsResponseBody500
    where toJSON obj = Data.Aeson.Types.Internal.object ("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500Error obj : "message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500Message obj : "status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500StatusCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500Error obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500Message obj) GHC.Base.<> ("status_code" Data.Aeson.Types.ToJSON..= getTxsHashDelegationsResponseBody500StatusCode obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTxsHashDelegationsResponseBody500
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTxsHashDelegationsResponseBody500" (\obj -> ((GHC.Base.pure GetTxsHashDelegationsResponseBody500 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_code"))
-- | Create a new 'GetTxsHashDelegationsResponseBody500' with all required fields.
mkGetTxsHashDelegationsResponseBody500 :: Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody500Error'
  -> Data.Text.Internal.Text -- ^ 'getTxsHashDelegationsResponseBody500Message'
  -> GHC.Integer.Type.Integer -- ^ 'getTxsHashDelegationsResponseBody500StatusCode'
  -> GetTxsHashDelegationsResponseBody500
mkGetTxsHashDelegationsResponseBody500 getTxsHashDelegationsResponseBody500Error getTxsHashDelegationsResponseBody500Message getTxsHashDelegationsResponseBody500StatusCode = GetTxsHashDelegationsResponseBody500{getTxsHashDelegationsResponseBody500Error = getTxsHashDelegationsResponseBody500Error,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody500Message = getTxsHashDelegationsResponseBody500Message,
                                                                                                                                                                                                                   getTxsHashDelegationsResponseBody500StatusCode = getTxsHashDelegationsResponseBody500StatusCode}
-- | > GET /txs/{hash}/delegations
-- 
-- The same as 'getTxs_Hash_Delegations' but accepts an explicit configuration.
getTxs_Hash_DelegationsWithConfiguration :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction.
  -> m (Network.HTTP.Client.Types.Response GetTxsHashDelegationsResponse) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_DelegationsWithConfiguration config
                                         hash = GHC.Base.fmap (\response_8 -> GHC.Base.fmap (Data.Either.either GetTxsHashDelegationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_9 -> Network.HTTP.Types.Status.statusCode status_9 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     TxContentDelegations)
                                                                                                                                                                                                | (\status_10 -> Network.HTTP.Types.Status.statusCode status_10 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody400)
                                                                                                                                                                                                | (\status_11 -> Network.HTTP.Types.Status.statusCode status_11 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse403 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody403)
                                                                                                                                                                                                | (\status_12 -> Network.HTTP.Types.Status.statusCode status_12 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse404 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody404)
                                                                                                                                                                                                | (\status_13 -> Network.HTTP.Types.Status.statusCode status_13 GHC.Classes.== 418) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse418 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody418)
                                                                                                                                                                                                | (\status_14 -> Network.HTTP.Types.Status.statusCode status_14 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody429)
                                                                                                                                                                                                | (\status_15 -> Network.HTTP.Types.Status.statusCode status_15 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> GetTxsHashDelegationsResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTxsHashDelegationsResponseBody500)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_8) response_8) (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/delegations"))) GHC.Base.mempty)
-- | > GET /txs/{hash}/delegations
-- 
-- The same as 'getTxs_Hash_Delegations' but returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_DelegationsRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction.
  -> BlockfrostAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_DelegationsRaw hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/delegations"))) GHC.Base.mempty)
-- | > GET /txs/{hash}/delegations
-- 
-- The same as 'getTxs_Hash_Delegations' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getTxs_Hash_DelegationsWithConfigurationRaw :: forall m . BlockfrostAPI.Common.MonadHTTP m => BlockfrostAPI.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ hash: Hash of the requested transaction.
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getTxs_Hash_DelegationsWithConfigurationRaw config
                                            hash = GHC.Base.id (BlockfrostAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/txs/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ BlockfrostAPI.Common.stringifyModel hash)) GHC.Base.++ "/delegations"))) GHC.Base.mempty)
