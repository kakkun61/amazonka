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
-- Module      : Network.AWS.SavingsPlans.Types.SavingsPlanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SavingsPlans.Types.SavingsPlanType
  ( SavingsPlanType
      ( ..,
        SavingsPlanType_Compute,
        SavingsPlanType_EC2Instance,
        SavingsPlanType_SageMaker
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SavingsPlanType = SavingsPlanType'
  { fromSavingsPlanType ::
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

pattern SavingsPlanType_Compute :: SavingsPlanType
pattern SavingsPlanType_Compute = SavingsPlanType' "Compute"

pattern SavingsPlanType_EC2Instance :: SavingsPlanType
pattern SavingsPlanType_EC2Instance = SavingsPlanType' "EC2Instance"

pattern SavingsPlanType_SageMaker :: SavingsPlanType
pattern SavingsPlanType_SageMaker = SavingsPlanType' "SageMaker"

{-# COMPLETE
  SavingsPlanType_Compute,
  SavingsPlanType_EC2Instance,
  SavingsPlanType_SageMaker,
  SavingsPlanType'
  #-}
