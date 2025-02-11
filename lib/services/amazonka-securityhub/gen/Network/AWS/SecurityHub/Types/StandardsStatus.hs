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
-- Module      : Network.AWS.SecurityHub.Types.StandardsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.StandardsStatus
  ( StandardsStatus
      ( ..,
        StandardsStatus_DELETING,
        StandardsStatus_FAILED,
        StandardsStatus_INCOMPLETE,
        StandardsStatus_PENDING,
        StandardsStatus_READY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype StandardsStatus = StandardsStatus'
  { fromStandardsStatus ::
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

pattern StandardsStatus_DELETING :: StandardsStatus
pattern StandardsStatus_DELETING = StandardsStatus' "DELETING"

pattern StandardsStatus_FAILED :: StandardsStatus
pattern StandardsStatus_FAILED = StandardsStatus' "FAILED"

pattern StandardsStatus_INCOMPLETE :: StandardsStatus
pattern StandardsStatus_INCOMPLETE = StandardsStatus' "INCOMPLETE"

pattern StandardsStatus_PENDING :: StandardsStatus
pattern StandardsStatus_PENDING = StandardsStatus' "PENDING"

pattern StandardsStatus_READY :: StandardsStatus
pattern StandardsStatus_READY = StandardsStatus' "READY"

{-# COMPLETE
  StandardsStatus_DELETING,
  StandardsStatus_FAILED,
  StandardsStatus_INCOMPLETE,
  StandardsStatus_PENDING,
  StandardsStatus_READY,
  StandardsStatus'
  #-}
