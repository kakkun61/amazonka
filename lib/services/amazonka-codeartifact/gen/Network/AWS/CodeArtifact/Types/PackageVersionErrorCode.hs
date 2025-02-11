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
-- Module      : Network.AWS.CodeArtifact.Types.PackageVersionErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeArtifact.Types.PackageVersionErrorCode
  ( PackageVersionErrorCode
      ( ..,
        PackageVersionErrorCode_ALREADY_EXISTS,
        PackageVersionErrorCode_MISMATCHED_REVISION,
        PackageVersionErrorCode_MISMATCHED_STATUS,
        PackageVersionErrorCode_NOT_ALLOWED,
        PackageVersionErrorCode_NOT_FOUND,
        PackageVersionErrorCode_SKIPPED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PackageVersionErrorCode = PackageVersionErrorCode'
  { fromPackageVersionErrorCode ::
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

pattern PackageVersionErrorCode_ALREADY_EXISTS :: PackageVersionErrorCode
pattern PackageVersionErrorCode_ALREADY_EXISTS = PackageVersionErrorCode' "ALREADY_EXISTS"

pattern PackageVersionErrorCode_MISMATCHED_REVISION :: PackageVersionErrorCode
pattern PackageVersionErrorCode_MISMATCHED_REVISION = PackageVersionErrorCode' "MISMATCHED_REVISION"

pattern PackageVersionErrorCode_MISMATCHED_STATUS :: PackageVersionErrorCode
pattern PackageVersionErrorCode_MISMATCHED_STATUS = PackageVersionErrorCode' "MISMATCHED_STATUS"

pattern PackageVersionErrorCode_NOT_ALLOWED :: PackageVersionErrorCode
pattern PackageVersionErrorCode_NOT_ALLOWED = PackageVersionErrorCode' "NOT_ALLOWED"

pattern PackageVersionErrorCode_NOT_FOUND :: PackageVersionErrorCode
pattern PackageVersionErrorCode_NOT_FOUND = PackageVersionErrorCode' "NOT_FOUND"

pattern PackageVersionErrorCode_SKIPPED :: PackageVersionErrorCode
pattern PackageVersionErrorCode_SKIPPED = PackageVersionErrorCode' "SKIPPED"

{-# COMPLETE
  PackageVersionErrorCode_ALREADY_EXISTS,
  PackageVersionErrorCode_MISMATCHED_REVISION,
  PackageVersionErrorCode_MISMATCHED_STATUS,
  PackageVersionErrorCode_NOT_ALLOWED,
  PackageVersionErrorCode_NOT_FOUND,
  PackageVersionErrorCode_SKIPPED,
  PackageVersionErrorCode'
  #-}
