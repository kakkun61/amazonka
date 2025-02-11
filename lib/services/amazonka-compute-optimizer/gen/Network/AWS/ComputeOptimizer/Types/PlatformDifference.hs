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
-- Module      : Network.AWS.ComputeOptimizer.Types.PlatformDifference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComputeOptimizer.Types.PlatformDifference
  ( PlatformDifference
      ( ..,
        PlatformDifference_Architecture,
        PlatformDifference_Hypervisor,
        PlatformDifference_InstanceStoreAvailability,
        PlatformDifference_NetworkInterface,
        PlatformDifference_StorageInterface,
        PlatformDifference_VirtualizationType
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PlatformDifference = PlatformDifference'
  { fromPlatformDifference ::
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

pattern PlatformDifference_Architecture :: PlatformDifference
pattern PlatformDifference_Architecture = PlatformDifference' "Architecture"

pattern PlatformDifference_Hypervisor :: PlatformDifference
pattern PlatformDifference_Hypervisor = PlatformDifference' "Hypervisor"

pattern PlatformDifference_InstanceStoreAvailability :: PlatformDifference
pattern PlatformDifference_InstanceStoreAvailability = PlatformDifference' "InstanceStoreAvailability"

pattern PlatformDifference_NetworkInterface :: PlatformDifference
pattern PlatformDifference_NetworkInterface = PlatformDifference' "NetworkInterface"

pattern PlatformDifference_StorageInterface :: PlatformDifference
pattern PlatformDifference_StorageInterface = PlatformDifference' "StorageInterface"

pattern PlatformDifference_VirtualizationType :: PlatformDifference
pattern PlatformDifference_VirtualizationType = PlatformDifference' "VirtualizationType"

{-# COMPLETE
  PlatformDifference_Architecture,
  PlatformDifference_Hypervisor,
  PlatformDifference_InstanceStoreAvailability,
  PlatformDifference_NetworkInterface,
  PlatformDifference_StorageInterface,
  PlatformDifference_VirtualizationType,
  PlatformDifference'
  #-}
