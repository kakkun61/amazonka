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
-- Module      : Network.AWS.WellArchitected.Types.DifferenceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WellArchitected.Types.DifferenceStatus
  ( DifferenceStatus
      ( ..,
        DifferenceStatus_DELETED,
        DifferenceStatus_NEW,
        DifferenceStatus_UPDATED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DifferenceStatus = DifferenceStatus'
  { fromDifferenceStatus ::
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

pattern DifferenceStatus_DELETED :: DifferenceStatus
pattern DifferenceStatus_DELETED = DifferenceStatus' "DELETED"

pattern DifferenceStatus_NEW :: DifferenceStatus
pattern DifferenceStatus_NEW = DifferenceStatus' "NEW"

pattern DifferenceStatus_UPDATED :: DifferenceStatus
pattern DifferenceStatus_UPDATED = DifferenceStatus' "UPDATED"

{-# COMPLETE
  DifferenceStatus_DELETED,
  DifferenceStatus_NEW,
  DifferenceStatus_UPDATED,
  DifferenceStatus'
  #-}
