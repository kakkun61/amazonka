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
-- Module      : Network.AWS.DevOpsGuru.Types.InsightFeedbackOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.InsightFeedbackOption
  ( InsightFeedbackOption
      ( ..,
        InsightFeedbackOption_ALERT_TOO_SENSITIVE,
        InsightFeedbackOption_DATA_INCORRECT,
        InsightFeedbackOption_DATA_NOISY_ANOMALY,
        InsightFeedbackOption_RECOMMENDATION_USEFUL,
        InsightFeedbackOption_VALID_COLLECTION
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InsightFeedbackOption = InsightFeedbackOption'
  { fromInsightFeedbackOption ::
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

pattern InsightFeedbackOption_ALERT_TOO_SENSITIVE :: InsightFeedbackOption
pattern InsightFeedbackOption_ALERT_TOO_SENSITIVE = InsightFeedbackOption' "ALERT_TOO_SENSITIVE"

pattern InsightFeedbackOption_DATA_INCORRECT :: InsightFeedbackOption
pattern InsightFeedbackOption_DATA_INCORRECT = InsightFeedbackOption' "DATA_INCORRECT"

pattern InsightFeedbackOption_DATA_NOISY_ANOMALY :: InsightFeedbackOption
pattern InsightFeedbackOption_DATA_NOISY_ANOMALY = InsightFeedbackOption' "DATA_NOISY_ANOMALY"

pattern InsightFeedbackOption_RECOMMENDATION_USEFUL :: InsightFeedbackOption
pattern InsightFeedbackOption_RECOMMENDATION_USEFUL = InsightFeedbackOption' "RECOMMENDATION_USEFUL"

pattern InsightFeedbackOption_VALID_COLLECTION :: InsightFeedbackOption
pattern InsightFeedbackOption_VALID_COLLECTION = InsightFeedbackOption' "VALID_COLLECTION"

{-# COMPLETE
  InsightFeedbackOption_ALERT_TOO_SENSITIVE,
  InsightFeedbackOption_DATA_INCORRECT,
  InsightFeedbackOption_DATA_NOISY_ANOMALY,
  InsightFeedbackOption_RECOMMENDATION_USEFUL,
  InsightFeedbackOption_VALID_COLLECTION,
  InsightFeedbackOption'
  #-}
