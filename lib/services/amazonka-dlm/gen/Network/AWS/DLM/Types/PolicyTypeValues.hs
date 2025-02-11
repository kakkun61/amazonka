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
-- Module      : Network.AWS.DLM.Types.PolicyTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DLM.Types.PolicyTypeValues
  ( PolicyTypeValues
      ( ..,
        PolicyTypeValues_EBS_SNAPSHOT_MANAGEMENT,
        PolicyTypeValues_EVENT_BASED_POLICY,
        PolicyTypeValues_IMAGE_MANAGEMENT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PolicyTypeValues = PolicyTypeValues'
  { fromPolicyTypeValues ::
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

pattern PolicyTypeValues_EBS_SNAPSHOT_MANAGEMENT :: PolicyTypeValues
pattern PolicyTypeValues_EBS_SNAPSHOT_MANAGEMENT = PolicyTypeValues' "EBS_SNAPSHOT_MANAGEMENT"

pattern PolicyTypeValues_EVENT_BASED_POLICY :: PolicyTypeValues
pattern PolicyTypeValues_EVENT_BASED_POLICY = PolicyTypeValues' "EVENT_BASED_POLICY"

pattern PolicyTypeValues_IMAGE_MANAGEMENT :: PolicyTypeValues
pattern PolicyTypeValues_IMAGE_MANAGEMENT = PolicyTypeValues' "IMAGE_MANAGEMENT"

{-# COMPLETE
  PolicyTypeValues_EBS_SNAPSHOT_MANAGEMENT,
  PolicyTypeValues_EVENT_BASED_POLICY,
  PolicyTypeValues_IMAGE_MANAGEMENT,
  PolicyTypeValues'
  #-}
