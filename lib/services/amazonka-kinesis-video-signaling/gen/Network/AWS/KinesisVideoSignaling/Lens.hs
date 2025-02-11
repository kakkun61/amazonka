{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoSignaling.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoSignaling.Lens
  ( -- * Operations

    -- ** SendAlexaOfferToMaster
    sendAlexaOfferToMaster_channelARN,
    sendAlexaOfferToMaster_senderClientId,
    sendAlexaOfferToMaster_messagePayload,
    sendAlexaOfferToMasterResponse_answer,
    sendAlexaOfferToMasterResponse_httpStatus,

    -- ** GetIceServerConfig
    getIceServerConfig_clientId,
    getIceServerConfig_service,
    getIceServerConfig_username,
    getIceServerConfig_channelARN,
    getIceServerConfigResponse_iceServerList,
    getIceServerConfigResponse_httpStatus,

    -- * Types

    -- ** IceServer
    iceServer_ttl,
    iceServer_uris,
    iceServer_username,
    iceServer_password,
  )
where

import Network.AWS.KinesisVideoSignaling.GetIceServerConfig
import Network.AWS.KinesisVideoSignaling.SendAlexaOfferToMaster
import Network.AWS.KinesisVideoSignaling.Types.IceServer
