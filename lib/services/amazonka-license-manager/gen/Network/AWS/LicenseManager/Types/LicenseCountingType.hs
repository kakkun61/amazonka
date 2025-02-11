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
-- Module      : Network.AWS.LicenseManager.Types.LicenseCountingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.LicenseCountingType
  ( LicenseCountingType
      ( ..,
        LicenseCountingType_Core,
        LicenseCountingType_Instance,
        LicenseCountingType_Socket,
        LicenseCountingType_VCPU
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype LicenseCountingType = LicenseCountingType'
  { fromLicenseCountingType ::
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

pattern LicenseCountingType_Core :: LicenseCountingType
pattern LicenseCountingType_Core = LicenseCountingType' "Core"

pattern LicenseCountingType_Instance :: LicenseCountingType
pattern LicenseCountingType_Instance = LicenseCountingType' "Instance"

pattern LicenseCountingType_Socket :: LicenseCountingType
pattern LicenseCountingType_Socket = LicenseCountingType' "Socket"

pattern LicenseCountingType_VCPU :: LicenseCountingType
pattern LicenseCountingType_VCPU = LicenseCountingType' "vCPU"

{-# COMPLETE
  LicenseCountingType_Core,
  LicenseCountingType_Instance,
  LicenseCountingType_Socket,
  LicenseCountingType_VCPU,
  LicenseCountingType'
  #-}
