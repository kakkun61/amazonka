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
-- Module      : Network.AWS.GroundStation.Types.ConfigCapabilityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.ConfigCapabilityType
  ( ConfigCapabilityType
      ( ..,
        ConfigCapabilityType_Antenna_downlink,
        ConfigCapabilityType_Antenna_downlink_demod_decode,
        ConfigCapabilityType_Antenna_uplink,
        ConfigCapabilityType_Dataflow_endpoint,
        ConfigCapabilityType_S3_recording,
        ConfigCapabilityType_Tracking,
        ConfigCapabilityType_Uplink_echo
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ConfigCapabilityType = ConfigCapabilityType'
  { fromConfigCapabilityType ::
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

pattern ConfigCapabilityType_Antenna_downlink :: ConfigCapabilityType
pattern ConfigCapabilityType_Antenna_downlink = ConfigCapabilityType' "antenna-downlink"

pattern ConfigCapabilityType_Antenna_downlink_demod_decode :: ConfigCapabilityType
pattern ConfigCapabilityType_Antenna_downlink_demod_decode = ConfigCapabilityType' "antenna-downlink-demod-decode"

pattern ConfigCapabilityType_Antenna_uplink :: ConfigCapabilityType
pattern ConfigCapabilityType_Antenna_uplink = ConfigCapabilityType' "antenna-uplink"

pattern ConfigCapabilityType_Dataflow_endpoint :: ConfigCapabilityType
pattern ConfigCapabilityType_Dataflow_endpoint = ConfigCapabilityType' "dataflow-endpoint"

pattern ConfigCapabilityType_S3_recording :: ConfigCapabilityType
pattern ConfigCapabilityType_S3_recording = ConfigCapabilityType' "s3-recording"

pattern ConfigCapabilityType_Tracking :: ConfigCapabilityType
pattern ConfigCapabilityType_Tracking = ConfigCapabilityType' "tracking"

pattern ConfigCapabilityType_Uplink_echo :: ConfigCapabilityType
pattern ConfigCapabilityType_Uplink_echo = ConfigCapabilityType' "uplink-echo"

{-# COMPLETE
  ConfigCapabilityType_Antenna_downlink,
  ConfigCapabilityType_Antenna_downlink_demod_decode,
  ConfigCapabilityType_Antenna_uplink,
  ConfigCapabilityType_Dataflow_endpoint,
  ConfigCapabilityType_S3_recording,
  ConfigCapabilityType_Tracking,
  ConfigCapabilityType_Uplink_echo,
  ConfigCapabilityType'
  #-}
