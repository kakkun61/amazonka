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
-- Module      : Network.AWS.LicenseManager.Types.LicenseStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.LicenseStatus
  ( LicenseStatus
      ( ..,
        LicenseStatus_AVAILABLE,
        LicenseStatus_DEACTIVATED,
        LicenseStatus_DELETED,
        LicenseStatus_EXPIRED,
        LicenseStatus_PENDING_AVAILABLE,
        LicenseStatus_PENDING_DELETE,
        LicenseStatus_SUSPENDED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype LicenseStatus = LicenseStatus'
  { fromLicenseStatus ::
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

pattern LicenseStatus_AVAILABLE :: LicenseStatus
pattern LicenseStatus_AVAILABLE = LicenseStatus' "AVAILABLE"

pattern LicenseStatus_DEACTIVATED :: LicenseStatus
pattern LicenseStatus_DEACTIVATED = LicenseStatus' "DEACTIVATED"

pattern LicenseStatus_DELETED :: LicenseStatus
pattern LicenseStatus_DELETED = LicenseStatus' "DELETED"

pattern LicenseStatus_EXPIRED :: LicenseStatus
pattern LicenseStatus_EXPIRED = LicenseStatus' "EXPIRED"

pattern LicenseStatus_PENDING_AVAILABLE :: LicenseStatus
pattern LicenseStatus_PENDING_AVAILABLE = LicenseStatus' "PENDING_AVAILABLE"

pattern LicenseStatus_PENDING_DELETE :: LicenseStatus
pattern LicenseStatus_PENDING_DELETE = LicenseStatus' "PENDING_DELETE"

pattern LicenseStatus_SUSPENDED :: LicenseStatus
pattern LicenseStatus_SUSPENDED = LicenseStatus' "SUSPENDED"

{-# COMPLETE
  LicenseStatus_AVAILABLE,
  LicenseStatus_DEACTIVATED,
  LicenseStatus_DELETED,
  LicenseStatus_EXPIRED,
  LicenseStatus_PENDING_AVAILABLE,
  LicenseStatus_PENDING_DELETE,
  LicenseStatus_SUSPENDED,
  LicenseStatus'
  #-}
