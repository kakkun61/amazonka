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
-- Module      : Network.AWS.SavingsPlans.Types.SavingsPlansFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SavingsPlans.Types.SavingsPlansFilterName
  ( SavingsPlansFilterName
      ( ..,
        SavingsPlansFilterName_Commitment,
        SavingsPlansFilterName_Ec2_instance_family,
        SavingsPlansFilterName_End,
        SavingsPlansFilterName_Payment_option,
        SavingsPlansFilterName_Region,
        SavingsPlansFilterName_Savings_plan_type,
        SavingsPlansFilterName_Start,
        SavingsPlansFilterName_Term,
        SavingsPlansFilterName_Upfront
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SavingsPlansFilterName = SavingsPlansFilterName'
  { fromSavingsPlansFilterName ::
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

pattern SavingsPlansFilterName_Commitment :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Commitment = SavingsPlansFilterName' "commitment"

pattern SavingsPlansFilterName_Ec2_instance_family :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Ec2_instance_family = SavingsPlansFilterName' "ec2-instance-family"

pattern SavingsPlansFilterName_End :: SavingsPlansFilterName
pattern SavingsPlansFilterName_End = SavingsPlansFilterName' "end"

pattern SavingsPlansFilterName_Payment_option :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Payment_option = SavingsPlansFilterName' "payment-option"

pattern SavingsPlansFilterName_Region :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Region = SavingsPlansFilterName' "region"

pattern SavingsPlansFilterName_Savings_plan_type :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Savings_plan_type = SavingsPlansFilterName' "savings-plan-type"

pattern SavingsPlansFilterName_Start :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Start = SavingsPlansFilterName' "start"

pattern SavingsPlansFilterName_Term :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Term = SavingsPlansFilterName' "term"

pattern SavingsPlansFilterName_Upfront :: SavingsPlansFilterName
pattern SavingsPlansFilterName_Upfront = SavingsPlansFilterName' "upfront"

{-# COMPLETE
  SavingsPlansFilterName_Commitment,
  SavingsPlansFilterName_Ec2_instance_family,
  SavingsPlansFilterName_End,
  SavingsPlansFilterName_Payment_option,
  SavingsPlansFilterName_Region,
  SavingsPlansFilterName_Savings_plan_type,
  SavingsPlansFilterName_Start,
  SavingsPlansFilterName_Term,
  SavingsPlansFilterName_Upfront,
  SavingsPlansFilterName'
  #-}
