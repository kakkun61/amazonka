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
-- Module      : Network.AWS.AppFlow.Types.FlowStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.FlowStatus
  ( FlowStatus
      ( ..,
        FlowStatus_Active,
        FlowStatus_Deleted,
        FlowStatus_Deprecated,
        FlowStatus_Draft,
        FlowStatus_Errored,
        FlowStatus_Suspended
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype FlowStatus = FlowStatus'
  { fromFlowStatus ::
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

pattern FlowStatus_Active :: FlowStatus
pattern FlowStatus_Active = FlowStatus' "Active"

pattern FlowStatus_Deleted :: FlowStatus
pattern FlowStatus_Deleted = FlowStatus' "Deleted"

pattern FlowStatus_Deprecated :: FlowStatus
pattern FlowStatus_Deprecated = FlowStatus' "Deprecated"

pattern FlowStatus_Draft :: FlowStatus
pattern FlowStatus_Draft = FlowStatus' "Draft"

pattern FlowStatus_Errored :: FlowStatus
pattern FlowStatus_Errored = FlowStatus' "Errored"

pattern FlowStatus_Suspended :: FlowStatus
pattern FlowStatus_Suspended = FlowStatus' "Suspended"

{-# COMPLETE
  FlowStatus_Active,
  FlowStatus_Deleted,
  FlowStatus_Deprecated,
  FlowStatus_Draft,
  FlowStatus_Errored,
  FlowStatus_Suspended,
  FlowStatus'
  #-}
