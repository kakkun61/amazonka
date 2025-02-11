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
-- Module      : Network.AWS.VoiceId.Types.SpeakerEnrollmentJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Types.SpeakerEnrollmentJobStatus
  ( SpeakerEnrollmentJobStatus
      ( ..,
        SpeakerEnrollmentJobStatus_COMPLETED,
        SpeakerEnrollmentJobStatus_COMPLETED_WITH_ERRORS,
        SpeakerEnrollmentJobStatus_FAILED,
        SpeakerEnrollmentJobStatus_IN_PROGRESS,
        SpeakerEnrollmentJobStatus_SUBMITTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SpeakerEnrollmentJobStatus = SpeakerEnrollmentJobStatus'
  { fromSpeakerEnrollmentJobStatus ::
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

pattern SpeakerEnrollmentJobStatus_COMPLETED :: SpeakerEnrollmentJobStatus
pattern SpeakerEnrollmentJobStatus_COMPLETED = SpeakerEnrollmentJobStatus' "COMPLETED"

pattern SpeakerEnrollmentJobStatus_COMPLETED_WITH_ERRORS :: SpeakerEnrollmentJobStatus
pattern SpeakerEnrollmentJobStatus_COMPLETED_WITH_ERRORS = SpeakerEnrollmentJobStatus' "COMPLETED_WITH_ERRORS"

pattern SpeakerEnrollmentJobStatus_FAILED :: SpeakerEnrollmentJobStatus
pattern SpeakerEnrollmentJobStatus_FAILED = SpeakerEnrollmentJobStatus' "FAILED"

pattern SpeakerEnrollmentJobStatus_IN_PROGRESS :: SpeakerEnrollmentJobStatus
pattern SpeakerEnrollmentJobStatus_IN_PROGRESS = SpeakerEnrollmentJobStatus' "IN_PROGRESS"

pattern SpeakerEnrollmentJobStatus_SUBMITTED :: SpeakerEnrollmentJobStatus
pattern SpeakerEnrollmentJobStatus_SUBMITTED = SpeakerEnrollmentJobStatus' "SUBMITTED"

{-# COMPLETE
  SpeakerEnrollmentJobStatus_COMPLETED,
  SpeakerEnrollmentJobStatus_COMPLETED_WITH_ERRORS,
  SpeakerEnrollmentJobStatus_FAILED,
  SpeakerEnrollmentJobStatus_IN_PROGRESS,
  SpeakerEnrollmentJobStatus_SUBMITTED,
  SpeakerEnrollmentJobStatus'
  #-}
