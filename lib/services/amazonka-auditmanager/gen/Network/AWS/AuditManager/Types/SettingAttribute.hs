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
-- Module      : Network.AWS.AuditManager.Types.SettingAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AuditManager.Types.SettingAttribute
  ( SettingAttribute
      ( ..,
        SettingAttribute_ALL,
        SettingAttribute_DEFAULT_ASSESSMENT_REPORTS_DESTINATION,
        SettingAttribute_DEFAULT_PROCESS_OWNERS,
        SettingAttribute_IS_AWS_ORG_ENABLED,
        SettingAttribute_SNS_TOPIC
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SettingAttribute = SettingAttribute'
  { fromSettingAttribute ::
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

pattern SettingAttribute_ALL :: SettingAttribute
pattern SettingAttribute_ALL = SettingAttribute' "ALL"

pattern SettingAttribute_DEFAULT_ASSESSMENT_REPORTS_DESTINATION :: SettingAttribute
pattern SettingAttribute_DEFAULT_ASSESSMENT_REPORTS_DESTINATION = SettingAttribute' "DEFAULT_ASSESSMENT_REPORTS_DESTINATION"

pattern SettingAttribute_DEFAULT_PROCESS_OWNERS :: SettingAttribute
pattern SettingAttribute_DEFAULT_PROCESS_OWNERS = SettingAttribute' "DEFAULT_PROCESS_OWNERS"

pattern SettingAttribute_IS_AWS_ORG_ENABLED :: SettingAttribute
pattern SettingAttribute_IS_AWS_ORG_ENABLED = SettingAttribute' "IS_AWS_ORG_ENABLED"

pattern SettingAttribute_SNS_TOPIC :: SettingAttribute
pattern SettingAttribute_SNS_TOPIC = SettingAttribute' "SNS_TOPIC"

{-# COMPLETE
  SettingAttribute_ALL,
  SettingAttribute_DEFAULT_ASSESSMENT_REPORTS_DESTINATION,
  SettingAttribute_DEFAULT_PROCESS_OWNERS,
  SettingAttribute_IS_AWS_ORG_ENABLED,
  SettingAttribute_SNS_TOPIC,
  SettingAttribute'
  #-}
