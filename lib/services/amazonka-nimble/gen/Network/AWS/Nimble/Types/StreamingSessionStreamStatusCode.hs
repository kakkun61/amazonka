{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Nimble.Types.StreamingSessionStreamStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Nimble.Types.StreamingSessionStreamStatusCode
  ( StreamingSessionStreamStatusCode
      ( ..,
        StreamingSessionStreamStatusCode_INTERNAL_ERROR,
        StreamingSessionStreamStatusCode_NETWORK_CONNECTION_ERROR,
        StreamingSessionStreamStatusCode_STREAM_CREATE_IN_PROGRESS,
        StreamingSessionStreamStatusCode_STREAM_DELETED,
        StreamingSessionStreamStatusCode_STREAM_DELETE_IN_PROGRESS,
        StreamingSessionStreamStatusCode_STREAM_READY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype StreamingSessionStreamStatusCode = StreamingSessionStreamStatusCode'
  { fromStreamingSessionStreamStatusCode ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern StreamingSessionStreamStatusCode_INTERNAL_ERROR :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_INTERNAL_ERROR = StreamingSessionStreamStatusCode' "INTERNAL_ERROR"

pattern StreamingSessionStreamStatusCode_NETWORK_CONNECTION_ERROR :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_NETWORK_CONNECTION_ERROR = StreamingSessionStreamStatusCode' "NETWORK_CONNECTION_ERROR"

pattern StreamingSessionStreamStatusCode_STREAM_CREATE_IN_PROGRESS :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_STREAM_CREATE_IN_PROGRESS = StreamingSessionStreamStatusCode' "STREAM_CREATE_IN_PROGRESS"

pattern StreamingSessionStreamStatusCode_STREAM_DELETED :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_STREAM_DELETED = StreamingSessionStreamStatusCode' "STREAM_DELETED"

pattern StreamingSessionStreamStatusCode_STREAM_DELETE_IN_PROGRESS :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_STREAM_DELETE_IN_PROGRESS = StreamingSessionStreamStatusCode' "STREAM_DELETE_IN_PROGRESS"

pattern StreamingSessionStreamStatusCode_STREAM_READY :: StreamingSessionStreamStatusCode
pattern StreamingSessionStreamStatusCode_STREAM_READY = StreamingSessionStreamStatusCode' "STREAM_READY"

{-# COMPLETE
  StreamingSessionStreamStatusCode_INTERNAL_ERROR,
  StreamingSessionStreamStatusCode_NETWORK_CONNECTION_ERROR,
  StreamingSessionStreamStatusCode_STREAM_CREATE_IN_PROGRESS,
  StreamingSessionStreamStatusCode_STREAM_DELETED,
  StreamingSessionStreamStatusCode_STREAM_DELETE_IN_PROGRESS,
  StreamingSessionStreamStatusCode_STREAM_READY,
  StreamingSessionStreamStatusCode'
  #-}
