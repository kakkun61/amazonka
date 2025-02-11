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
-- Module      : Network.AWS.LakeFormation.Types.FieldNameString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.FieldNameString
  ( FieldNameString
      ( ..,
        FieldNameString_LAST_MODIFIED,
        FieldNameString_RESOURCE_ARN,
        FieldNameString_ROLE_ARN
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype FieldNameString = FieldNameString'
  { fromFieldNameString ::
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

pattern FieldNameString_LAST_MODIFIED :: FieldNameString
pattern FieldNameString_LAST_MODIFIED = FieldNameString' "LAST_MODIFIED"

pattern FieldNameString_RESOURCE_ARN :: FieldNameString
pattern FieldNameString_RESOURCE_ARN = FieldNameString' "RESOURCE_ARN"

pattern FieldNameString_ROLE_ARN :: FieldNameString
pattern FieldNameString_ROLE_ARN = FieldNameString' "ROLE_ARN"

{-# COMPLETE
  FieldNameString_LAST_MODIFIED,
  FieldNameString_RESOURCE_ARN,
  FieldNameString_ROLE_ARN,
  FieldNameString'
  #-}
