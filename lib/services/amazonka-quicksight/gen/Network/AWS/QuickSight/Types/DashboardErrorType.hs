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
-- Module      : Network.AWS.QuickSight.Types.DashboardErrorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.DashboardErrorType
  ( DashboardErrorType
      ( ..,
        DashboardErrorType_ACCESS_DENIED,
        DashboardErrorType_COLUMN_GEOGRAPHIC_ROLE_MISMATCH,
        DashboardErrorType_COLUMN_REPLACEMENT_MISSING,
        DashboardErrorType_COLUMN_TYPE_MISMATCH,
        DashboardErrorType_DATA_SET_NOT_FOUND,
        DashboardErrorType_INTERNAL_FAILURE,
        DashboardErrorType_PARAMETER_NOT_FOUND,
        DashboardErrorType_PARAMETER_TYPE_INVALID,
        DashboardErrorType_PARAMETER_VALUE_INCOMPATIBLE,
        DashboardErrorType_SOURCE_NOT_FOUND
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DashboardErrorType = DashboardErrorType'
  { fromDashboardErrorType ::
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

pattern DashboardErrorType_ACCESS_DENIED :: DashboardErrorType
pattern DashboardErrorType_ACCESS_DENIED = DashboardErrorType' "ACCESS_DENIED"

pattern DashboardErrorType_COLUMN_GEOGRAPHIC_ROLE_MISMATCH :: DashboardErrorType
pattern DashboardErrorType_COLUMN_GEOGRAPHIC_ROLE_MISMATCH = DashboardErrorType' "COLUMN_GEOGRAPHIC_ROLE_MISMATCH"

pattern DashboardErrorType_COLUMN_REPLACEMENT_MISSING :: DashboardErrorType
pattern DashboardErrorType_COLUMN_REPLACEMENT_MISSING = DashboardErrorType' "COLUMN_REPLACEMENT_MISSING"

pattern DashboardErrorType_COLUMN_TYPE_MISMATCH :: DashboardErrorType
pattern DashboardErrorType_COLUMN_TYPE_MISMATCH = DashboardErrorType' "COLUMN_TYPE_MISMATCH"

pattern DashboardErrorType_DATA_SET_NOT_FOUND :: DashboardErrorType
pattern DashboardErrorType_DATA_SET_NOT_FOUND = DashboardErrorType' "DATA_SET_NOT_FOUND"

pattern DashboardErrorType_INTERNAL_FAILURE :: DashboardErrorType
pattern DashboardErrorType_INTERNAL_FAILURE = DashboardErrorType' "INTERNAL_FAILURE"

pattern DashboardErrorType_PARAMETER_NOT_FOUND :: DashboardErrorType
pattern DashboardErrorType_PARAMETER_NOT_FOUND = DashboardErrorType' "PARAMETER_NOT_FOUND"

pattern DashboardErrorType_PARAMETER_TYPE_INVALID :: DashboardErrorType
pattern DashboardErrorType_PARAMETER_TYPE_INVALID = DashboardErrorType' "PARAMETER_TYPE_INVALID"

pattern DashboardErrorType_PARAMETER_VALUE_INCOMPATIBLE :: DashboardErrorType
pattern DashboardErrorType_PARAMETER_VALUE_INCOMPATIBLE = DashboardErrorType' "PARAMETER_VALUE_INCOMPATIBLE"

pattern DashboardErrorType_SOURCE_NOT_FOUND :: DashboardErrorType
pattern DashboardErrorType_SOURCE_NOT_FOUND = DashboardErrorType' "SOURCE_NOT_FOUND"

{-# COMPLETE
  DashboardErrorType_ACCESS_DENIED,
  DashboardErrorType_COLUMN_GEOGRAPHIC_ROLE_MISMATCH,
  DashboardErrorType_COLUMN_REPLACEMENT_MISSING,
  DashboardErrorType_COLUMN_TYPE_MISMATCH,
  DashboardErrorType_DATA_SET_NOT_FOUND,
  DashboardErrorType_INTERNAL_FAILURE,
  DashboardErrorType_PARAMETER_NOT_FOUND,
  DashboardErrorType_PARAMETER_TYPE_INVALID,
  DashboardErrorType_PARAMETER_VALUE_INCOMPATIBLE,
  DashboardErrorType_SOURCE_NOT_FOUND,
  DashboardErrorType'
  #-}
