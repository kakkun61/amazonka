{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMailMessageFlow.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMailMessageFlow.Lens
  ( -- * Operations

    -- ** PutRawMessageContent
    putRawMessageContent_messageId,
    putRawMessageContent_content,
    putRawMessageContentResponse_httpStatus,

    -- ** GetRawMessageContent
    getRawMessageContent_messageId,
    getRawMessageContentResponse_httpStatus,
    getRawMessageContentResponse_messageContent,

    -- * Types

    -- ** RawMessageContent
    rawMessageContent_s3Reference,

    -- ** S3Reference
    s3Reference_objectVersion,
    s3Reference_bucket,
    s3Reference_key,
  )
where

import Network.AWS.WorkMailMessageFlow.GetRawMessageContent
import Network.AWS.WorkMailMessageFlow.PutRawMessageContent
import Network.AWS.WorkMailMessageFlow.Types.RawMessageContent
import Network.AWS.WorkMailMessageFlow.Types.S3Reference
