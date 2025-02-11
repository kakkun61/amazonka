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
-- Module      : Network.AWS.ComprehendMedical.Types.ICD10CMEntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComprehendMedical.Types.ICD10CMEntityType
  ( ICD10CMEntityType
      ( ..,
        ICD10CMEntityType_DX_NAME,
        ICD10CMEntityType_TIME_EXPRESSION
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ICD10CMEntityType = ICD10CMEntityType'
  { fromICD10CMEntityType ::
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

pattern ICD10CMEntityType_DX_NAME :: ICD10CMEntityType
pattern ICD10CMEntityType_DX_NAME = ICD10CMEntityType' "DX_NAME"

pattern ICD10CMEntityType_TIME_EXPRESSION :: ICD10CMEntityType
pattern ICD10CMEntityType_TIME_EXPRESSION = ICD10CMEntityType' "TIME_EXPRESSION"

{-# COMPLETE
  ICD10CMEntityType_DX_NAME,
  ICD10CMEntityType_TIME_EXPRESSION,
  ICD10CMEntityType'
  #-}
