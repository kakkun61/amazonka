{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.KinesisAnalytics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.KinesisAnalytics where

import qualified Data.Proxy as Proxy
import Network.AWS.KinesisAnalytics
import Test.AWS.Fixture
import Test.AWS.KinesisAnalytics.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestAddApplicationOutput $
--             newAddApplicationOutput
--
--         , requestDiscoverInputSchema $
--             newDiscoverInputSchema
--
--         , requestDescribeApplication $
--             newDescribeApplication
--
--         , requestStartApplication $
--             newStartApplication
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestDeleteApplicationReferenceDataSource $
--             newDeleteApplicationReferenceDataSource
--
--         , requestDeleteApplication $
--             newDeleteApplication
--
--         , requestUpdateApplication $
--             newUpdateApplication
--
--         , requestDeleteApplicationCloudWatchLoggingOption $
--             newDeleteApplicationCloudWatchLoggingOption
--
--         , requestAddApplicationInputProcessingConfiguration $
--             newAddApplicationInputProcessingConfiguration
--
--         , requestCreateApplication $
--             newCreateApplication
--
--         , requestDeleteApplicationOutput $
--             newDeleteApplicationOutput
--
--         , requestStopApplication $
--             newStopApplication
--
--         , requestAddApplicationReferenceDataSource $
--             newAddApplicationReferenceDataSource
--
--         , requestAddApplicationInput $
--             newAddApplicationInput
--
--         , requestTagResource $
--             newTagResource
--
--         , requestAddApplicationCloudWatchLoggingOption $
--             newAddApplicationCloudWatchLoggingOption
--
--         , requestListApplications $
--             newListApplications
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestDeleteApplicationInputProcessingConfiguration $
--             newDeleteApplicationInputProcessingConfiguration
--
--           ]

--     , testGroup "response"
--         [ responseAddApplicationOutput $
--             newAddApplicationOutputResponse
--
--         , responseDiscoverInputSchema $
--             newDiscoverInputSchemaResponse
--
--         , responseDescribeApplication $
--             newDescribeApplicationResponse
--
--         , responseStartApplication $
--             newStartApplicationResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseDeleteApplicationReferenceDataSource $
--             newDeleteApplicationReferenceDataSourceResponse
--
--         , responseDeleteApplication $
--             newDeleteApplicationResponse
--
--         , responseUpdateApplication $
--             newUpdateApplicationResponse
--
--         , responseDeleteApplicationCloudWatchLoggingOption $
--             newDeleteApplicationCloudWatchLoggingOptionResponse
--
--         , responseAddApplicationInputProcessingConfiguration $
--             newAddApplicationInputProcessingConfigurationResponse
--
--         , responseCreateApplication $
--             newCreateApplicationResponse
--
--         , responseDeleteApplicationOutput $
--             newDeleteApplicationOutputResponse
--
--         , responseStopApplication $
--             newStopApplicationResponse
--
--         , responseAddApplicationReferenceDataSource $
--             newAddApplicationReferenceDataSourceResponse
--
--         , responseAddApplicationInput $
--             newAddApplicationInputResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseAddApplicationCloudWatchLoggingOption $
--             newAddApplicationCloudWatchLoggingOptionResponse
--
--         , responseListApplications $
--             newListApplicationsResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseDeleteApplicationInputProcessingConfiguration $
--             newDeleteApplicationInputProcessingConfigurationResponse
--
--           ]
--     ]

-- Requests

requestAddApplicationOutput :: AddApplicationOutput -> TestTree
requestAddApplicationOutput =
  req
    "AddApplicationOutput"
    "fixture/AddApplicationOutput.yaml"

requestDiscoverInputSchema :: DiscoverInputSchema -> TestTree
requestDiscoverInputSchema =
  req
    "DiscoverInputSchema"
    "fixture/DiscoverInputSchema.yaml"

requestDescribeApplication :: DescribeApplication -> TestTree
requestDescribeApplication =
  req
    "DescribeApplication"
    "fixture/DescribeApplication.yaml"

requestStartApplication :: StartApplication -> TestTree
requestStartApplication =
  req
    "StartApplication"
    "fixture/StartApplication.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteApplicationReferenceDataSource :: DeleteApplicationReferenceDataSource -> TestTree
requestDeleteApplicationReferenceDataSource =
  req
    "DeleteApplicationReferenceDataSource"
    "fixture/DeleteApplicationReferenceDataSource.yaml"

requestDeleteApplication :: DeleteApplication -> TestTree
requestDeleteApplication =
  req
    "DeleteApplication"
    "fixture/DeleteApplication.yaml"

requestUpdateApplication :: UpdateApplication -> TestTree
requestUpdateApplication =
  req
    "UpdateApplication"
    "fixture/UpdateApplication.yaml"

requestDeleteApplicationCloudWatchLoggingOption :: DeleteApplicationCloudWatchLoggingOption -> TestTree
requestDeleteApplicationCloudWatchLoggingOption =
  req
    "DeleteApplicationCloudWatchLoggingOption"
    "fixture/DeleteApplicationCloudWatchLoggingOption.yaml"

requestAddApplicationInputProcessingConfiguration :: AddApplicationInputProcessingConfiguration -> TestTree
requestAddApplicationInputProcessingConfiguration =
  req
    "AddApplicationInputProcessingConfiguration"
    "fixture/AddApplicationInputProcessingConfiguration.yaml"

requestCreateApplication :: CreateApplication -> TestTree
requestCreateApplication =
  req
    "CreateApplication"
    "fixture/CreateApplication.yaml"

requestDeleteApplicationOutput :: DeleteApplicationOutput -> TestTree
requestDeleteApplicationOutput =
  req
    "DeleteApplicationOutput"
    "fixture/DeleteApplicationOutput.yaml"

requestStopApplication :: StopApplication -> TestTree
requestStopApplication =
  req
    "StopApplication"
    "fixture/StopApplication.yaml"

requestAddApplicationReferenceDataSource :: AddApplicationReferenceDataSource -> TestTree
requestAddApplicationReferenceDataSource =
  req
    "AddApplicationReferenceDataSource"
    "fixture/AddApplicationReferenceDataSource.yaml"

requestAddApplicationInput :: AddApplicationInput -> TestTree
requestAddApplicationInput =
  req
    "AddApplicationInput"
    "fixture/AddApplicationInput.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestAddApplicationCloudWatchLoggingOption :: AddApplicationCloudWatchLoggingOption -> TestTree
requestAddApplicationCloudWatchLoggingOption =
  req
    "AddApplicationCloudWatchLoggingOption"
    "fixture/AddApplicationCloudWatchLoggingOption.yaml"

requestListApplications :: ListApplications -> TestTree
requestListApplications =
  req
    "ListApplications"
    "fixture/ListApplications.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteApplicationInputProcessingConfiguration :: DeleteApplicationInputProcessingConfiguration -> TestTree
requestDeleteApplicationInputProcessingConfiguration =
  req
    "DeleteApplicationInputProcessingConfiguration"
    "fixture/DeleteApplicationInputProcessingConfiguration.yaml"

-- Responses

responseAddApplicationOutput :: AddApplicationOutputResponse -> TestTree
responseAddApplicationOutput =
  res
    "AddApplicationOutputResponse"
    "fixture/AddApplicationOutputResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddApplicationOutput)

responseDiscoverInputSchema :: DiscoverInputSchemaResponse -> TestTree
responseDiscoverInputSchema =
  res
    "DiscoverInputSchemaResponse"
    "fixture/DiscoverInputSchemaResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DiscoverInputSchema)

responseDescribeApplication :: DescribeApplicationResponse -> TestTree
responseDescribeApplication =
  res
    "DescribeApplicationResponse"
    "fixture/DescribeApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeApplication)

responseStartApplication :: StartApplicationResponse -> TestTree
responseStartApplication =
  res
    "StartApplicationResponse"
    "fixture/StartApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartApplication)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseDeleteApplicationReferenceDataSource :: DeleteApplicationReferenceDataSourceResponse -> TestTree
responseDeleteApplicationReferenceDataSource =
  res
    "DeleteApplicationReferenceDataSourceResponse"
    "fixture/DeleteApplicationReferenceDataSourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteApplicationReferenceDataSource)

responseDeleteApplication :: DeleteApplicationResponse -> TestTree
responseDeleteApplication =
  res
    "DeleteApplicationResponse"
    "fixture/DeleteApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteApplication)

responseUpdateApplication :: UpdateApplicationResponse -> TestTree
responseUpdateApplication =
  res
    "UpdateApplicationResponse"
    "fixture/UpdateApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateApplication)

responseDeleteApplicationCloudWatchLoggingOption :: DeleteApplicationCloudWatchLoggingOptionResponse -> TestTree
responseDeleteApplicationCloudWatchLoggingOption =
  res
    "DeleteApplicationCloudWatchLoggingOptionResponse"
    "fixture/DeleteApplicationCloudWatchLoggingOptionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteApplicationCloudWatchLoggingOption)

responseAddApplicationInputProcessingConfiguration :: AddApplicationInputProcessingConfigurationResponse -> TestTree
responseAddApplicationInputProcessingConfiguration =
  res
    "AddApplicationInputProcessingConfigurationResponse"
    "fixture/AddApplicationInputProcessingConfigurationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddApplicationInputProcessingConfiguration)

responseCreateApplication :: CreateApplicationResponse -> TestTree
responseCreateApplication =
  res
    "CreateApplicationResponse"
    "fixture/CreateApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateApplication)

responseDeleteApplicationOutput :: DeleteApplicationOutputResponse -> TestTree
responseDeleteApplicationOutput =
  res
    "DeleteApplicationOutputResponse"
    "fixture/DeleteApplicationOutputResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteApplicationOutput)

responseStopApplication :: StopApplicationResponse -> TestTree
responseStopApplication =
  res
    "StopApplicationResponse"
    "fixture/StopApplicationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StopApplication)

responseAddApplicationReferenceDataSource :: AddApplicationReferenceDataSourceResponse -> TestTree
responseAddApplicationReferenceDataSource =
  res
    "AddApplicationReferenceDataSourceResponse"
    "fixture/AddApplicationReferenceDataSourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddApplicationReferenceDataSource)

responseAddApplicationInput :: AddApplicationInputResponse -> TestTree
responseAddApplicationInput =
  res
    "AddApplicationInputResponse"
    "fixture/AddApplicationInputResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddApplicationInput)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy TagResource)

responseAddApplicationCloudWatchLoggingOption :: AddApplicationCloudWatchLoggingOptionResponse -> TestTree
responseAddApplicationCloudWatchLoggingOption =
  res
    "AddApplicationCloudWatchLoggingOptionResponse"
    "fixture/AddApplicationCloudWatchLoggingOptionResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy AddApplicationCloudWatchLoggingOption)

responseListApplications :: ListApplicationsResponse -> TestTree
responseListApplications =
  res
    "ListApplicationsResponse"
    "fixture/ListApplicationsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListApplications)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UntagResource)

responseDeleteApplicationInputProcessingConfiguration :: DeleteApplicationInputProcessingConfigurationResponse -> TestTree
responseDeleteApplicationInputProcessingConfiguration =
  res
    "DeleteApplicationInputProcessingConfigurationResponse"
    "fixture/DeleteApplicationInputProcessingConfigurationResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteApplicationInputProcessingConfiguration)
