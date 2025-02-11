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
-- Module      : Network.AWS.Personalize.Types.ObjectiveSensitivity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.ObjectiveSensitivity
  ( ObjectiveSensitivity
      ( ..,
        ObjectiveSensitivity_HIGH,
        ObjectiveSensitivity_LOW,
        ObjectiveSensitivity_MEDIUM,
        ObjectiveSensitivity_OFF
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ObjectiveSensitivity = ObjectiveSensitivity'
  { fromObjectiveSensitivity ::
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

pattern ObjectiveSensitivity_HIGH :: ObjectiveSensitivity
pattern ObjectiveSensitivity_HIGH = ObjectiveSensitivity' "HIGH"

pattern ObjectiveSensitivity_LOW :: ObjectiveSensitivity
pattern ObjectiveSensitivity_LOW = ObjectiveSensitivity' "LOW"

pattern ObjectiveSensitivity_MEDIUM :: ObjectiveSensitivity
pattern ObjectiveSensitivity_MEDIUM = ObjectiveSensitivity' "MEDIUM"

pattern ObjectiveSensitivity_OFF :: ObjectiveSensitivity
pattern ObjectiveSensitivity_OFF = ObjectiveSensitivity' "OFF"

{-# COMPLETE
  ObjectiveSensitivity_HIGH,
  ObjectiveSensitivity_LOW,
  ObjectiveSensitivity_MEDIUM,
  ObjectiveSensitivity_OFF,
  ObjectiveSensitivity'
  #-}
