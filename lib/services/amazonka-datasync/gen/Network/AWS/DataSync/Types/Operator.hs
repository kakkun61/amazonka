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
-- Module      : Network.AWS.DataSync.Types.Operator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.Operator
  ( Operator
      ( ..,
        Operator_BeginsWith,
        Operator_Contains,
        Operator_Equals,
        Operator_GreaterThan,
        Operator_GreaterThanOrEqual,
        Operator_In,
        Operator_LessThan,
        Operator_LessThanOrEqual,
        Operator_NotContains,
        Operator_NotEquals
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Operator = Operator'
  { fromOperator ::
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

pattern Operator_BeginsWith :: Operator
pattern Operator_BeginsWith = Operator' "BeginsWith"

pattern Operator_Contains :: Operator
pattern Operator_Contains = Operator' "Contains"

pattern Operator_Equals :: Operator
pattern Operator_Equals = Operator' "Equals"

pattern Operator_GreaterThan :: Operator
pattern Operator_GreaterThan = Operator' "GreaterThan"

pattern Operator_GreaterThanOrEqual :: Operator
pattern Operator_GreaterThanOrEqual = Operator' "GreaterThanOrEqual"

pattern Operator_In :: Operator
pattern Operator_In = Operator' "In"

pattern Operator_LessThan :: Operator
pattern Operator_LessThan = Operator' "LessThan"

pattern Operator_LessThanOrEqual :: Operator
pattern Operator_LessThanOrEqual = Operator' "LessThanOrEqual"

pattern Operator_NotContains :: Operator
pattern Operator_NotContains = Operator' "NotContains"

pattern Operator_NotEquals :: Operator
pattern Operator_NotEquals = Operator' "NotEquals"

{-# COMPLETE
  Operator_BeginsWith,
  Operator_Contains,
  Operator_Equals,
  Operator_GreaterThan,
  Operator_GreaterThanOrEqual,
  Operator_In,
  Operator_LessThan,
  Operator_LessThanOrEqual,
  Operator_NotContains,
  Operator_NotEquals,
  Operator'
  #-}
