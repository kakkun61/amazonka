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
-- Module      : Network.AWS.VoiceId.Types.DomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Types.DomainStatus
  ( DomainStatus
      ( ..,
        DomainStatus_ACTIVE,
        DomainStatus_PENDING,
        DomainStatus_SUSPENDED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DomainStatus = DomainStatus'
  { fromDomainStatus ::
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

pattern DomainStatus_ACTIVE :: DomainStatus
pattern DomainStatus_ACTIVE = DomainStatus' "ACTIVE"

pattern DomainStatus_PENDING :: DomainStatus
pattern DomainStatus_PENDING = DomainStatus' "PENDING"

pattern DomainStatus_SUSPENDED :: DomainStatus
pattern DomainStatus_SUSPENDED = DomainStatus' "SUSPENDED"

{-# COMPLETE
  DomainStatus_ACTIVE,
  DomainStatus_PENDING,
  DomainStatus_SUSPENDED,
  DomainStatus'
  #-}
