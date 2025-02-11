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
-- Module      : Network.AWS.ManagedBlockChain.Types.InvitationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.InvitationStatus
  ( InvitationStatus
      ( ..,
        InvitationStatus_ACCEPTED,
        InvitationStatus_ACCEPTING,
        InvitationStatus_EXPIRED,
        InvitationStatus_PENDING,
        InvitationStatus_REJECTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InvitationStatus = InvitationStatus'
  { fromInvitationStatus ::
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

pattern InvitationStatus_ACCEPTED :: InvitationStatus
pattern InvitationStatus_ACCEPTED = InvitationStatus' "ACCEPTED"

pattern InvitationStatus_ACCEPTING :: InvitationStatus
pattern InvitationStatus_ACCEPTING = InvitationStatus' "ACCEPTING"

pattern InvitationStatus_EXPIRED :: InvitationStatus
pattern InvitationStatus_EXPIRED = InvitationStatus' "EXPIRED"

pattern InvitationStatus_PENDING :: InvitationStatus
pattern InvitationStatus_PENDING = InvitationStatus' "PENDING"

pattern InvitationStatus_REJECTED :: InvitationStatus
pattern InvitationStatus_REJECTED = InvitationStatus' "REJECTED"

{-# COMPLETE
  InvitationStatus_ACCEPTED,
  InvitationStatus_ACCEPTING,
  InvitationStatus_EXPIRED,
  InvitationStatus_PENDING,
  InvitationStatus_REJECTED,
  InvitationStatus'
  #-}
