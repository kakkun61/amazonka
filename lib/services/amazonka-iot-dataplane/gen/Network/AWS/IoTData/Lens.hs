{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTData.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTData.Lens
  ( -- * Operations

    -- ** GetThingShadow
    getThingShadow_shadowName,
    getThingShadow_thingName,
    getThingShadowResponse_payload,
    getThingShadowResponse_httpStatus,

    -- ** ListNamedShadowsForThing
    listNamedShadowsForThing_nextToken,
    listNamedShadowsForThing_pageSize,
    listNamedShadowsForThing_thingName,
    listNamedShadowsForThingResponse_results,
    listNamedShadowsForThingResponse_nextToken,
    listNamedShadowsForThingResponse_timestamp,
    listNamedShadowsForThingResponse_httpStatus,

    -- ** DeleteThingShadow
    deleteThingShadow_shadowName,
    deleteThingShadow_thingName,
    deleteThingShadowResponse_httpStatus,
    deleteThingShadowResponse_payload,

    -- ** UpdateThingShadow
    updateThingShadow_shadowName,
    updateThingShadow_thingName,
    updateThingShadow_payload,
    updateThingShadowResponse_payload,
    updateThingShadowResponse_httpStatus,

    -- ** ListRetainedMessages
    listRetainedMessages_nextToken,
    listRetainedMessages_maxResults,
    listRetainedMessagesResponse_retainedTopics,
    listRetainedMessagesResponse_nextToken,
    listRetainedMessagesResponse_httpStatus,

    -- ** GetRetainedMessage
    getRetainedMessage_topic,
    getRetainedMessageResponse_lastModifiedTime,
    getRetainedMessageResponse_payload,
    getRetainedMessageResponse_topic,
    getRetainedMessageResponse_qos,
    getRetainedMessageResponse_httpStatus,

    -- ** Publish
    publish_retain,
    publish_payload,
    publish_qos,
    publish_topic,

    -- * Types

    -- ** RetainedMessageSummary
    retainedMessageSummary_lastModifiedTime,
    retainedMessageSummary_topic,
    retainedMessageSummary_qos,
    retainedMessageSummary_payloadSize,
  )
where

import Network.AWS.IoTData.DeleteThingShadow
import Network.AWS.IoTData.GetRetainedMessage
import Network.AWS.IoTData.GetThingShadow
import Network.AWS.IoTData.ListNamedShadowsForThing
import Network.AWS.IoTData.ListRetainedMessages
import Network.AWS.IoTData.Publish
import Network.AWS.IoTData.Types.RetainedMessageSummary
import Network.AWS.IoTData.UpdateThingShadow
