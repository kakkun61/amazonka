{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-incomplete-uni-patterns #-}

module APIGateway where

import Control.Lens
import Data.Generics.Product
import Network.AWS
import Network.AWS.APIGateway
import System.IO

main :: Region -> IO Method
main r = do
  lgr <- newLogger Trace stdout
  env <- newEnv Discover <&> set (field @"envLogger") lgr . set (field @"envRegion") r
  runResourceT $ do
    restApi <- send env (newCreateRestApi "myApi")
    let Just apiId = restApi ^. field @"id"

    Just resources :: Maybe [Resource] <-
      view (field @"items") <$> send env (newGetResources apiId)
    let Just rootId = head resources ^. field @"id"

    resource :: Resource <- send env (newCreateResource apiId rootId "{file}")

    let Just fileResourceId = resource ^. field @"id"
    method :: Method <- send env (newPutMethod apiId fileResourceId "GET" "NONE")

    return method
