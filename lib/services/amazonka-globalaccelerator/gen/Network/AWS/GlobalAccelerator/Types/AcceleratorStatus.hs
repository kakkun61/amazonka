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
-- Module      : Network.AWS.GlobalAccelerator.Types.AcceleratorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GlobalAccelerator.Types.AcceleratorStatus
  ( AcceleratorStatus
      ( ..,
        AcceleratorStatus_DEPLOYED,
        AcceleratorStatus_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AcceleratorStatus = AcceleratorStatus'
  { fromAcceleratorStatus ::
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

pattern AcceleratorStatus_DEPLOYED :: AcceleratorStatus
pattern AcceleratorStatus_DEPLOYED = AcceleratorStatus' "DEPLOYED"

pattern AcceleratorStatus_IN_PROGRESS :: AcceleratorStatus
pattern AcceleratorStatus_IN_PROGRESS = AcceleratorStatus' "IN_PROGRESS"

{-# COMPLETE
  AcceleratorStatus_DEPLOYED,
  AcceleratorStatus_IN_PROGRESS,
  AcceleratorStatus'
  #-}
