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
-- Module      : Network.AWS.AuditManager.Types.AssessmentReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AuditManager.Types.AssessmentReportStatus
  ( AssessmentReportStatus
      ( ..,
        AssessmentReportStatus_COMPLETE,
        AssessmentReportStatus_FAILED,
        AssessmentReportStatus_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AssessmentReportStatus = AssessmentReportStatus'
  { fromAssessmentReportStatus ::
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

pattern AssessmentReportStatus_COMPLETE :: AssessmentReportStatus
pattern AssessmentReportStatus_COMPLETE = AssessmentReportStatus' "COMPLETE"

pattern AssessmentReportStatus_FAILED :: AssessmentReportStatus
pattern AssessmentReportStatus_FAILED = AssessmentReportStatus' "FAILED"

pattern AssessmentReportStatus_IN_PROGRESS :: AssessmentReportStatus
pattern AssessmentReportStatus_IN_PROGRESS = AssessmentReportStatus' "IN_PROGRESS"

{-# COMPLETE
  AssessmentReportStatus_COMPLETE,
  AssessmentReportStatus_FAILED,
  AssessmentReportStatus_IN_PROGRESS,
  AssessmentReportStatus'
  #-}
