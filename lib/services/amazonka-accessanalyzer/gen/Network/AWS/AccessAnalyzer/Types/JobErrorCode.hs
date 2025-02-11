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
-- Module      : Network.AWS.AccessAnalyzer.Types.JobErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.JobErrorCode
  ( JobErrorCode
      ( ..,
        JobErrorCode_AUTHORIZATION_ERROR,
        JobErrorCode_RESOURCE_NOT_FOUND_ERROR,
        JobErrorCode_SERVICE_ERROR,
        JobErrorCode_SERVICE_QUOTA_EXCEEDED_ERROR
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype JobErrorCode = JobErrorCode'
  { fromJobErrorCode ::
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

pattern JobErrorCode_AUTHORIZATION_ERROR :: JobErrorCode
pattern JobErrorCode_AUTHORIZATION_ERROR = JobErrorCode' "AUTHORIZATION_ERROR"

pattern JobErrorCode_RESOURCE_NOT_FOUND_ERROR :: JobErrorCode
pattern JobErrorCode_RESOURCE_NOT_FOUND_ERROR = JobErrorCode' "RESOURCE_NOT_FOUND_ERROR"

pattern JobErrorCode_SERVICE_ERROR :: JobErrorCode
pattern JobErrorCode_SERVICE_ERROR = JobErrorCode' "SERVICE_ERROR"

pattern JobErrorCode_SERVICE_QUOTA_EXCEEDED_ERROR :: JobErrorCode
pattern JobErrorCode_SERVICE_QUOTA_EXCEEDED_ERROR = JobErrorCode' "SERVICE_QUOTA_EXCEEDED_ERROR"

{-# COMPLETE
  JobErrorCode_AUTHORIZATION_ERROR,
  JobErrorCode_RESOURCE_NOT_FOUND_ERROR,
  JobErrorCode_SERVICE_ERROR,
  JobErrorCode_SERVICE_QUOTA_EXCEEDED_ERROR,
  JobErrorCode'
  #-}
