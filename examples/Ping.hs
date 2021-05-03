{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

-- blockfrost-api
import BlockfrostAPI
-- http-conduit
import Network.HTTP.Simple (Response)

import qualified Data.Text
import qualified Data.Text.IO
import qualified System.Environment

main :: IO ()
main = do
  tokPath <- System.Environment.getEnv "BLOCKFROST_TESTNET_TOKEN_PATH"
  tok <- Data.Text.strip <$> Data.Text.IO.readFile tokPath
  let cfg = BlockfrostAPI.defaultConfiguration
              { configBaseURL = "https://cardano-testnet.blockfrost.io/api/v0/"
              , configSecurityScheme = apiKeyInHeaderAuthenticationSecurityScheme tok
              }

  (r :: Response GetHealthResponse) <- BlockfrostAPI.runWithConfiguration cfg getHealth
  print r
