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
-- Module      : Network.AWS.ComprehendMedical.Types.ICD10CMTraitName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComprehendMedical.Types.ICD10CMTraitName
  ( ICD10CMTraitName
      ( ..,
        ICD10CMTraitName_DIAGNOSIS,
        ICD10CMTraitName_NEGATION,
        ICD10CMTraitName_SIGN,
        ICD10CMTraitName_SYMPTOM
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ICD10CMTraitName = ICD10CMTraitName'
  { fromICD10CMTraitName ::
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

pattern ICD10CMTraitName_DIAGNOSIS :: ICD10CMTraitName
pattern ICD10CMTraitName_DIAGNOSIS = ICD10CMTraitName' "DIAGNOSIS"

pattern ICD10CMTraitName_NEGATION :: ICD10CMTraitName
pattern ICD10CMTraitName_NEGATION = ICD10CMTraitName' "NEGATION"

pattern ICD10CMTraitName_SIGN :: ICD10CMTraitName
pattern ICD10CMTraitName_SIGN = ICD10CMTraitName' "SIGN"

pattern ICD10CMTraitName_SYMPTOM :: ICD10CMTraitName
pattern ICD10CMTraitName_SYMPTOM = ICD10CMTraitName' "SYMPTOM"

{-# COMPLETE
  ICD10CMTraitName_DIAGNOSIS,
  ICD10CMTraitName_NEGATION,
  ICD10CMTraitName_SIGN,
  ICD10CMTraitName_SYMPTOM,
  ICD10CMTraitName'
  #-}
