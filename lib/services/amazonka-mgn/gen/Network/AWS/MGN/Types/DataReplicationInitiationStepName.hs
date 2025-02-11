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
-- Module      : Network.AWS.MGN.Types.DataReplicationInitiationStepName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.DataReplicationInitiationStepName
  ( DataReplicationInitiationStepName
      ( ..,
        DataReplicationInitiationStepName_ATTACH_STAGING_DISKS,
        DataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE,
        DataReplicationInitiationStepName_BOOT_REPLICATION_SERVER,
        DataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER,
        DataReplicationInitiationStepName_CREATE_SECURITY_GROUP,
        DataReplicationInitiationStepName_CREATE_STAGING_DISKS,
        DataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE,
        DataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER,
        DataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT,
        DataReplicationInitiationStepName_START_DATA_TRANSFER,
        DataReplicationInitiationStepName_WAIT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DataReplicationInitiationStepName = DataReplicationInitiationStepName'
  { fromDataReplicationInitiationStepName ::
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

pattern DataReplicationInitiationStepName_ATTACH_STAGING_DISKS :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_ATTACH_STAGING_DISKS = DataReplicationInitiationStepName' "ATTACH_STAGING_DISKS"

pattern DataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE = DataReplicationInitiationStepName' "AUTHENTICATE_WITH_SERVICE"

pattern DataReplicationInitiationStepName_BOOT_REPLICATION_SERVER :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_BOOT_REPLICATION_SERVER = DataReplicationInitiationStepName' "BOOT_REPLICATION_SERVER"

pattern DataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER = DataReplicationInitiationStepName' "CONNECT_AGENT_TO_REPLICATION_SERVER"

pattern DataReplicationInitiationStepName_CREATE_SECURITY_GROUP :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_CREATE_SECURITY_GROUP = DataReplicationInitiationStepName' "CREATE_SECURITY_GROUP"

pattern DataReplicationInitiationStepName_CREATE_STAGING_DISKS :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_CREATE_STAGING_DISKS = DataReplicationInitiationStepName' "CREATE_STAGING_DISKS"

pattern DataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE = DataReplicationInitiationStepName' "DOWNLOAD_REPLICATION_SOFTWARE"

pattern DataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER = DataReplicationInitiationStepName' "LAUNCH_REPLICATION_SERVER"

pattern DataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT = DataReplicationInitiationStepName' "PAIR_REPLICATION_SERVER_WITH_AGENT"

pattern DataReplicationInitiationStepName_START_DATA_TRANSFER :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_START_DATA_TRANSFER = DataReplicationInitiationStepName' "START_DATA_TRANSFER"

pattern DataReplicationInitiationStepName_WAIT :: DataReplicationInitiationStepName
pattern DataReplicationInitiationStepName_WAIT = DataReplicationInitiationStepName' "WAIT"

{-# COMPLETE
  DataReplicationInitiationStepName_ATTACH_STAGING_DISKS,
  DataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE,
  DataReplicationInitiationStepName_BOOT_REPLICATION_SERVER,
  DataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER,
  DataReplicationInitiationStepName_CREATE_SECURITY_GROUP,
  DataReplicationInitiationStepName_CREATE_STAGING_DISKS,
  DataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE,
  DataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER,
  DataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT,
  DataReplicationInitiationStepName_START_DATA_TRANSFER,
  DataReplicationInitiationStepName_WAIT,
  DataReplicationInitiationStepName'
  #-}
