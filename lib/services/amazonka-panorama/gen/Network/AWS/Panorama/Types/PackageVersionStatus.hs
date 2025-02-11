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
-- Module      : Network.AWS.Panorama.Types.PackageVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.PackageVersionStatus
  ( PackageVersionStatus
      ( ..,
        PackageVersionStatus_DELETING,
        PackageVersionStatus_FAILED,
        PackageVersionStatus_REGISTER_COMPLETED,
        PackageVersionStatus_REGISTER_PENDING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PackageVersionStatus = PackageVersionStatus'
  { fromPackageVersionStatus ::
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

pattern PackageVersionStatus_DELETING :: PackageVersionStatus
pattern PackageVersionStatus_DELETING = PackageVersionStatus' "DELETING"

pattern PackageVersionStatus_FAILED :: PackageVersionStatus
pattern PackageVersionStatus_FAILED = PackageVersionStatus' "FAILED"

pattern PackageVersionStatus_REGISTER_COMPLETED :: PackageVersionStatus
pattern PackageVersionStatus_REGISTER_COMPLETED = PackageVersionStatus' "REGISTER_COMPLETED"

pattern PackageVersionStatus_REGISTER_PENDING :: PackageVersionStatus
pattern PackageVersionStatus_REGISTER_PENDING = PackageVersionStatus' "REGISTER_PENDING"

{-# COMPLETE
  PackageVersionStatus_DELETING,
  PackageVersionStatus_FAILED,
  PackageVersionStatus_REGISTER_COMPLETED,
  PackageVersionStatus_REGISTER_PENDING,
  PackageVersionStatus'
  #-}
