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
-- Module      : Network.AWS.VoiceId.Types.StreamingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Types.StreamingStatus
  ( StreamingStatus
      ( ..,
        StreamingStatus_ENDED,
        StreamingStatus_ONGOING,
        StreamingStatus_PENDING_CONFIGURATION
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype StreamingStatus = StreamingStatus'
  { fromStreamingStatus ::
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

pattern StreamingStatus_ENDED :: StreamingStatus
pattern StreamingStatus_ENDED = StreamingStatus' "ENDED"

pattern StreamingStatus_ONGOING :: StreamingStatus
pattern StreamingStatus_ONGOING = StreamingStatus' "ONGOING"

pattern StreamingStatus_PENDING_CONFIGURATION :: StreamingStatus
pattern StreamingStatus_PENDING_CONFIGURATION = StreamingStatus' "PENDING_CONFIGURATION"

{-# COMPLETE
  StreamingStatus_ENDED,
  StreamingStatus_ONGOING,
  StreamingStatus_PENDING_CONFIGURATION,
  StreamingStatus'
  #-}
