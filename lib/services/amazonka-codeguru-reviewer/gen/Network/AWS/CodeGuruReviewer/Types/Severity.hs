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
-- Module      : Network.AWS.CodeGuruReviewer.Types.Severity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.Severity
  ( Severity
      ( ..,
        Severity_Critical,
        Severity_High,
        Severity_Info,
        Severity_Low,
        Severity_Medium
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Severity = Severity'
  { fromSeverity ::
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

pattern Severity_Critical :: Severity
pattern Severity_Critical = Severity' "Critical"

pattern Severity_High :: Severity
pattern Severity_High = Severity' "High"

pattern Severity_Info :: Severity
pattern Severity_Info = Severity' "Info"

pattern Severity_Low :: Severity
pattern Severity_Low = Severity' "Low"

pattern Severity_Medium :: Severity
pattern Severity_Medium = Severity' "Medium"

{-# COMPLETE
  Severity_Critical,
  Severity_High,
  Severity_Info,
  Severity_Low,
  Severity_Medium,
  Severity'
  #-}
