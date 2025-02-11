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
-- Module      : Network.AWS.AccessAnalyzer.Types.AnalyzerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.AnalyzerStatus
  ( AnalyzerStatus
      ( ..,
        AnalyzerStatus_ACTIVE,
        AnalyzerStatus_CREATING,
        AnalyzerStatus_DISABLED,
        AnalyzerStatus_FAILED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AnalyzerStatus = AnalyzerStatus'
  { fromAnalyzerStatus ::
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

pattern AnalyzerStatus_ACTIVE :: AnalyzerStatus
pattern AnalyzerStatus_ACTIVE = AnalyzerStatus' "ACTIVE"

pattern AnalyzerStatus_CREATING :: AnalyzerStatus
pattern AnalyzerStatus_CREATING = AnalyzerStatus' "CREATING"

pattern AnalyzerStatus_DISABLED :: AnalyzerStatus
pattern AnalyzerStatus_DISABLED = AnalyzerStatus' "DISABLED"

pattern AnalyzerStatus_FAILED :: AnalyzerStatus
pattern AnalyzerStatus_FAILED = AnalyzerStatus' "FAILED"

{-# COMPLETE
  AnalyzerStatus_ACTIVE,
  AnalyzerStatus_CREATING,
  AnalyzerStatus_DISABLED,
  AnalyzerStatus_FAILED,
  AnalyzerStatus'
  #-}
