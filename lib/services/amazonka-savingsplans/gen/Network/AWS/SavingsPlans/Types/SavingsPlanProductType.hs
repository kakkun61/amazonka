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
-- Module      : Network.AWS.SavingsPlans.Types.SavingsPlanProductType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SavingsPlans.Types.SavingsPlanProductType
  ( SavingsPlanProductType
      ( ..,
        SavingsPlanProductType_EC2,
        SavingsPlanProductType_Fargate,
        SavingsPlanProductType_Lambda,
        SavingsPlanProductType_SageMaker
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SavingsPlanProductType = SavingsPlanProductType'
  { fromSavingsPlanProductType ::
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

pattern SavingsPlanProductType_EC2 :: SavingsPlanProductType
pattern SavingsPlanProductType_EC2 = SavingsPlanProductType' "EC2"

pattern SavingsPlanProductType_Fargate :: SavingsPlanProductType
pattern SavingsPlanProductType_Fargate = SavingsPlanProductType' "Fargate"

pattern SavingsPlanProductType_Lambda :: SavingsPlanProductType
pattern SavingsPlanProductType_Lambda = SavingsPlanProductType' "Lambda"

pattern SavingsPlanProductType_SageMaker :: SavingsPlanProductType
pattern SavingsPlanProductType_SageMaker = SavingsPlanProductType' "SageMaker"

{-# COMPLETE
  SavingsPlanProductType_EC2,
  SavingsPlanProductType_Fargate,
  SavingsPlanProductType_Lambda,
  SavingsPlanProductType_SageMaker,
  SavingsPlanProductType'
  #-}
