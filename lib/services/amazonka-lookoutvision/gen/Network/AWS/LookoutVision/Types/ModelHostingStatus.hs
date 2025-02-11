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
-- Module      : Network.AWS.LookoutVision.Types.ModelHostingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutVision.Types.ModelHostingStatus
  ( ModelHostingStatus
      ( ..,
        ModelHostingStatus_HOSTED,
        ModelHostingStatus_HOSTING_FAILED,
        ModelHostingStatus_STARTING_HOSTING,
        ModelHostingStatus_STOPPING_HOSTING,
        ModelHostingStatus_SYSTEM_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ModelHostingStatus = ModelHostingStatus'
  { fromModelHostingStatus ::
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

pattern ModelHostingStatus_HOSTED :: ModelHostingStatus
pattern ModelHostingStatus_HOSTED = ModelHostingStatus' "HOSTED"

pattern ModelHostingStatus_HOSTING_FAILED :: ModelHostingStatus
pattern ModelHostingStatus_HOSTING_FAILED = ModelHostingStatus' "HOSTING_FAILED"

pattern ModelHostingStatus_STARTING_HOSTING :: ModelHostingStatus
pattern ModelHostingStatus_STARTING_HOSTING = ModelHostingStatus' "STARTING_HOSTING"

pattern ModelHostingStatus_STOPPING_HOSTING :: ModelHostingStatus
pattern ModelHostingStatus_STOPPING_HOSTING = ModelHostingStatus' "STOPPING_HOSTING"

pattern ModelHostingStatus_SYSTEM_UPDATING :: ModelHostingStatus
pattern ModelHostingStatus_SYSTEM_UPDATING = ModelHostingStatus' "SYSTEM_UPDATING"

{-# COMPLETE
  ModelHostingStatus_HOSTED,
  ModelHostingStatus_HOSTING_FAILED,
  ModelHostingStatus_STARTING_HOSTING,
  ModelHostingStatus_STOPPING_HOSTING,
  ModelHostingStatus_SYSTEM_UPDATING,
  ModelHostingStatus'
  #-}
