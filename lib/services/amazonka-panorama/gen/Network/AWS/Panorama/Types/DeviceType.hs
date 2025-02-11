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
-- Module      : Network.AWS.Panorama.Types.DeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.DeviceType
  ( DeviceType
      ( ..,
        DeviceType_PANORAMA_APPLIANCE,
        DeviceType_PANORAMA_APPLIANCE_DEVELOPER_KIT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DeviceType = DeviceType'
  { fromDeviceType ::
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

pattern DeviceType_PANORAMA_APPLIANCE :: DeviceType
pattern DeviceType_PANORAMA_APPLIANCE = DeviceType' "PANORAMA_APPLIANCE"

pattern DeviceType_PANORAMA_APPLIANCE_DEVELOPER_KIT :: DeviceType
pattern DeviceType_PANORAMA_APPLIANCE_DEVELOPER_KIT = DeviceType' "PANORAMA_APPLIANCE_DEVELOPER_KIT"

{-# COMPLETE
  DeviceType_PANORAMA_APPLIANCE,
  DeviceType_PANORAMA_APPLIANCE_DEVELOPER_KIT,
  DeviceType'
  #-}
