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
-- Module      : Network.AWS.Schemas.Types.CodeGenerationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Schemas.Types.CodeGenerationStatus
  ( CodeGenerationStatus
      ( ..,
        CodeGenerationStatus_CREATE_COMPLETE,
        CodeGenerationStatus_CREATE_FAILED,
        CodeGenerationStatus_CREATE_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype CodeGenerationStatus = CodeGenerationStatus'
  { fromCodeGenerationStatus ::
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

pattern CodeGenerationStatus_CREATE_COMPLETE :: CodeGenerationStatus
pattern CodeGenerationStatus_CREATE_COMPLETE = CodeGenerationStatus' "CREATE_COMPLETE"

pattern CodeGenerationStatus_CREATE_FAILED :: CodeGenerationStatus
pattern CodeGenerationStatus_CREATE_FAILED = CodeGenerationStatus' "CREATE_FAILED"

pattern CodeGenerationStatus_CREATE_IN_PROGRESS :: CodeGenerationStatus
pattern CodeGenerationStatus_CREATE_IN_PROGRESS = CodeGenerationStatus' "CREATE_IN_PROGRESS"

{-# COMPLETE
  CodeGenerationStatus_CREATE_COMPLETE,
  CodeGenerationStatus_CREATE_FAILED,
  CodeGenerationStatus_CREATE_IN_PROGRESS,
  CodeGenerationStatus'
  #-}
