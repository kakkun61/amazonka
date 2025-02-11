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
-- Module      : Network.AWS.Wisdom.Types.AssistantStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Wisdom.Types.AssistantStatus
  ( AssistantStatus
      ( ..,
        AssistantStatus_ACTIVE,
        AssistantStatus_CREATE_FAILED,
        AssistantStatus_CREATE_IN_PROGRESS,
        AssistantStatus_DELETED,
        AssistantStatus_DELETE_FAILED,
        AssistantStatus_DELETE_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AssistantStatus = AssistantStatus'
  { fromAssistantStatus ::
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

pattern AssistantStatus_ACTIVE :: AssistantStatus
pattern AssistantStatus_ACTIVE = AssistantStatus' "ACTIVE"

pattern AssistantStatus_CREATE_FAILED :: AssistantStatus
pattern AssistantStatus_CREATE_FAILED = AssistantStatus' "CREATE_FAILED"

pattern AssistantStatus_CREATE_IN_PROGRESS :: AssistantStatus
pattern AssistantStatus_CREATE_IN_PROGRESS = AssistantStatus' "CREATE_IN_PROGRESS"

pattern AssistantStatus_DELETED :: AssistantStatus
pattern AssistantStatus_DELETED = AssistantStatus' "DELETED"

pattern AssistantStatus_DELETE_FAILED :: AssistantStatus
pattern AssistantStatus_DELETE_FAILED = AssistantStatus' "DELETE_FAILED"

pattern AssistantStatus_DELETE_IN_PROGRESS :: AssistantStatus
pattern AssistantStatus_DELETE_IN_PROGRESS = AssistantStatus' "DELETE_IN_PROGRESS"

{-# COMPLETE
  AssistantStatus_ACTIVE,
  AssistantStatus_CREATE_FAILED,
  AssistantStatus_CREATE_IN_PROGRESS,
  AssistantStatus_DELETED,
  AssistantStatus_DELETE_FAILED,
  AssistantStatus_DELETE_IN_PROGRESS,
  AssistantStatus'
  #-}
