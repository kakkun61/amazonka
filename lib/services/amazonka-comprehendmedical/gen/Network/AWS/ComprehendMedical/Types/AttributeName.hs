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
-- Module      : Network.AWS.ComprehendMedical.Types.AttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComprehendMedical.Types.AttributeName
  ( AttributeName
      ( ..,
        AttributeName_DIAGNOSIS,
        AttributeName_NEGATION,
        AttributeName_SIGN,
        AttributeName_SYMPTOM
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AttributeName = AttributeName'
  { fromAttributeName ::
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

pattern AttributeName_DIAGNOSIS :: AttributeName
pattern AttributeName_DIAGNOSIS = AttributeName' "DIAGNOSIS"

pattern AttributeName_NEGATION :: AttributeName
pattern AttributeName_NEGATION = AttributeName' "NEGATION"

pattern AttributeName_SIGN :: AttributeName
pattern AttributeName_SIGN = AttributeName' "SIGN"

pattern AttributeName_SYMPTOM :: AttributeName
pattern AttributeName_SYMPTOM = AttributeName' "SYMPTOM"

{-# COMPLETE
  AttributeName_DIAGNOSIS,
  AttributeName_NEGATION,
  AttributeName_SIGN,
  AttributeName_SYMPTOM,
  AttributeName'
  #-}
