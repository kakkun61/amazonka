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
-- Module      : Network.AWS.SSMContacts.Types.ActivationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMContacts.Types.ActivationStatus
  ( ActivationStatus
      ( ..,
        ActivationStatus_ACTIVATED,
        ActivationStatus_NOT_ACTIVATED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ActivationStatus = ActivationStatus'
  { fromActivationStatus ::
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

pattern ActivationStatus_ACTIVATED :: ActivationStatus
pattern ActivationStatus_ACTIVATED = ActivationStatus' "ACTIVATED"

pattern ActivationStatus_NOT_ACTIVATED :: ActivationStatus
pattern ActivationStatus_NOT_ACTIVATED = ActivationStatus' "NOT_ACTIVATED"

{-# COMPLETE
  ActivationStatus_ACTIVATED,
  ActivationStatus_NOT_ACTIVATED,
  ActivationStatus'
  #-}
