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
-- Module      : Network.AWS.ManagedBlockChain.Types.MemberStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.MemberStatus
  ( MemberStatus
      ( ..,
        MemberStatus_AVAILABLE,
        MemberStatus_CREATE_FAILED,
        MemberStatus_CREATING,
        MemberStatus_DELETED,
        MemberStatus_DELETING,
        MemberStatus_INACCESSIBLE_ENCRYPTION_KEY,
        MemberStatus_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype MemberStatus = MemberStatus'
  { fromMemberStatus ::
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

pattern MemberStatus_AVAILABLE :: MemberStatus
pattern MemberStatus_AVAILABLE = MemberStatus' "AVAILABLE"

pattern MemberStatus_CREATE_FAILED :: MemberStatus
pattern MemberStatus_CREATE_FAILED = MemberStatus' "CREATE_FAILED"

pattern MemberStatus_CREATING :: MemberStatus
pattern MemberStatus_CREATING = MemberStatus' "CREATING"

pattern MemberStatus_DELETED :: MemberStatus
pattern MemberStatus_DELETED = MemberStatus' "DELETED"

pattern MemberStatus_DELETING :: MemberStatus
pattern MemberStatus_DELETING = MemberStatus' "DELETING"

pattern MemberStatus_INACCESSIBLE_ENCRYPTION_KEY :: MemberStatus
pattern MemberStatus_INACCESSIBLE_ENCRYPTION_KEY = MemberStatus' "INACCESSIBLE_ENCRYPTION_KEY"

pattern MemberStatus_UPDATING :: MemberStatus
pattern MemberStatus_UPDATING = MemberStatus' "UPDATING"

{-# COMPLETE
  MemberStatus_AVAILABLE,
  MemberStatus_CREATE_FAILED,
  MemberStatus_CREATING,
  MemberStatus_DELETED,
  MemberStatus_DELETING,
  MemberStatus_INACCESSIBLE_ENCRYPTION_KEY,
  MemberStatus_UPDATING,
  MemberStatus'
  #-}
