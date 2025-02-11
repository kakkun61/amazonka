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
-- Module      : Network.AWS.AppFlow.Types.InforNexusConnectorOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.InforNexusConnectorOperator
  ( InforNexusConnectorOperator
      ( ..,
        InforNexusConnectorOperator_ADDITION,
        InforNexusConnectorOperator_BETWEEN,
        InforNexusConnectorOperator_DIVISION,
        InforNexusConnectorOperator_EQUAL_TO,
        InforNexusConnectorOperator_MASK_ALL,
        InforNexusConnectorOperator_MASK_FIRST_N,
        InforNexusConnectorOperator_MASK_LAST_N,
        InforNexusConnectorOperator_MULTIPLICATION,
        InforNexusConnectorOperator_NO_OP,
        InforNexusConnectorOperator_PROJECTION,
        InforNexusConnectorOperator_SUBTRACTION,
        InforNexusConnectorOperator_VALIDATE_NON_NEGATIVE,
        InforNexusConnectorOperator_VALIDATE_NON_NULL,
        InforNexusConnectorOperator_VALIDATE_NON_ZERO,
        InforNexusConnectorOperator_VALIDATE_NUMERIC
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InforNexusConnectorOperator = InforNexusConnectorOperator'
  { fromInforNexusConnectorOperator ::
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

pattern InforNexusConnectorOperator_ADDITION :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_ADDITION = InforNexusConnectorOperator' "ADDITION"

pattern InforNexusConnectorOperator_BETWEEN :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_BETWEEN = InforNexusConnectorOperator' "BETWEEN"

pattern InforNexusConnectorOperator_DIVISION :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_DIVISION = InforNexusConnectorOperator' "DIVISION"

pattern InforNexusConnectorOperator_EQUAL_TO :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_EQUAL_TO = InforNexusConnectorOperator' "EQUAL_TO"

pattern InforNexusConnectorOperator_MASK_ALL :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_MASK_ALL = InforNexusConnectorOperator' "MASK_ALL"

pattern InforNexusConnectorOperator_MASK_FIRST_N :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_MASK_FIRST_N = InforNexusConnectorOperator' "MASK_FIRST_N"

pattern InforNexusConnectorOperator_MASK_LAST_N :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_MASK_LAST_N = InforNexusConnectorOperator' "MASK_LAST_N"

pattern InforNexusConnectorOperator_MULTIPLICATION :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_MULTIPLICATION = InforNexusConnectorOperator' "MULTIPLICATION"

pattern InforNexusConnectorOperator_NO_OP :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_NO_OP = InforNexusConnectorOperator' "NO_OP"

pattern InforNexusConnectorOperator_PROJECTION :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_PROJECTION = InforNexusConnectorOperator' "PROJECTION"

pattern InforNexusConnectorOperator_SUBTRACTION :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_SUBTRACTION = InforNexusConnectorOperator' "SUBTRACTION"

pattern InforNexusConnectorOperator_VALIDATE_NON_NEGATIVE :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_VALIDATE_NON_NEGATIVE = InforNexusConnectorOperator' "VALIDATE_NON_NEGATIVE"

pattern InforNexusConnectorOperator_VALIDATE_NON_NULL :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_VALIDATE_NON_NULL = InforNexusConnectorOperator' "VALIDATE_NON_NULL"

pattern InforNexusConnectorOperator_VALIDATE_NON_ZERO :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_VALIDATE_NON_ZERO = InforNexusConnectorOperator' "VALIDATE_NON_ZERO"

pattern InforNexusConnectorOperator_VALIDATE_NUMERIC :: InforNexusConnectorOperator
pattern InforNexusConnectorOperator_VALIDATE_NUMERIC = InforNexusConnectorOperator' "VALIDATE_NUMERIC"

{-# COMPLETE
  InforNexusConnectorOperator_ADDITION,
  InforNexusConnectorOperator_BETWEEN,
  InforNexusConnectorOperator_DIVISION,
  InforNexusConnectorOperator_EQUAL_TO,
  InforNexusConnectorOperator_MASK_ALL,
  InforNexusConnectorOperator_MASK_FIRST_N,
  InforNexusConnectorOperator_MASK_LAST_N,
  InforNexusConnectorOperator_MULTIPLICATION,
  InforNexusConnectorOperator_NO_OP,
  InforNexusConnectorOperator_PROJECTION,
  InforNexusConnectorOperator_SUBTRACTION,
  InforNexusConnectorOperator_VALIDATE_NON_NEGATIVE,
  InforNexusConnectorOperator_VALIDATE_NON_NULL,
  InforNexusConnectorOperator_VALIDATE_NON_ZERO,
  InforNexusConnectorOperator_VALIDATE_NUMERIC,
  InforNexusConnectorOperator'
  #-}
