{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.LogDeliveryConfigurationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.LogDeliveryConfigurationRequest where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types.DestinationDetails
import Network.AWS.ElastiCache.Types.DestinationType
import Network.AWS.ElastiCache.Types.LogFormat
import Network.AWS.ElastiCache.Types.LogType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the destination, format and type of the logs.
--
-- /See:/ 'newLogDeliveryConfigurationRequest' smart constructor.
data LogDeliveryConfigurationRequest = LogDeliveryConfigurationRequest'
  { -- | Specifies either JSON or TEXT
    logFormat :: Prelude.Maybe LogFormat,
    -- | Specify if log delivery is enabled. Default @true@.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | Configuration details of either a CloudWatch Logs destination or Kinesis
    -- Data Firehose destination.
    destinationDetails :: Prelude.Maybe DestinationDetails,
    -- | Refers to <https://redis.io/commands/slowlog slow-log>.
    logType :: Prelude.Maybe LogType,
    -- | Specify either @cloudwatch-logs@ or @kinesis-firehose@ as the
    -- destination type.
    destinationType :: Prelude.Maybe DestinationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogDeliveryConfigurationRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logFormat', 'logDeliveryConfigurationRequest_logFormat' - Specifies either JSON or TEXT
--
-- 'enabled', 'logDeliveryConfigurationRequest_enabled' - Specify if log delivery is enabled. Default @true@.
--
-- 'destinationDetails', 'logDeliveryConfigurationRequest_destinationDetails' - Configuration details of either a CloudWatch Logs destination or Kinesis
-- Data Firehose destination.
--
-- 'logType', 'logDeliveryConfigurationRequest_logType' - Refers to <https://redis.io/commands/slowlog slow-log>.
--
-- 'destinationType', 'logDeliveryConfigurationRequest_destinationType' - Specify either @cloudwatch-logs@ or @kinesis-firehose@ as the
-- destination type.
newLogDeliveryConfigurationRequest ::
  LogDeliveryConfigurationRequest
newLogDeliveryConfigurationRequest =
  LogDeliveryConfigurationRequest'
    { logFormat =
        Prelude.Nothing,
      enabled = Prelude.Nothing,
      destinationDetails = Prelude.Nothing,
      logType = Prelude.Nothing,
      destinationType = Prelude.Nothing
    }

-- | Specifies either JSON or TEXT
logDeliveryConfigurationRequest_logFormat :: Lens.Lens' LogDeliveryConfigurationRequest (Prelude.Maybe LogFormat)
logDeliveryConfigurationRequest_logFormat = Lens.lens (\LogDeliveryConfigurationRequest' {logFormat} -> logFormat) (\s@LogDeliveryConfigurationRequest' {} a -> s {logFormat = a} :: LogDeliveryConfigurationRequest)

-- | Specify if log delivery is enabled. Default @true@.
logDeliveryConfigurationRequest_enabled :: Lens.Lens' LogDeliveryConfigurationRequest (Prelude.Maybe Prelude.Bool)
logDeliveryConfigurationRequest_enabled = Lens.lens (\LogDeliveryConfigurationRequest' {enabled} -> enabled) (\s@LogDeliveryConfigurationRequest' {} a -> s {enabled = a} :: LogDeliveryConfigurationRequest)

-- | Configuration details of either a CloudWatch Logs destination or Kinesis
-- Data Firehose destination.
logDeliveryConfigurationRequest_destinationDetails :: Lens.Lens' LogDeliveryConfigurationRequest (Prelude.Maybe DestinationDetails)
logDeliveryConfigurationRequest_destinationDetails = Lens.lens (\LogDeliveryConfigurationRequest' {destinationDetails} -> destinationDetails) (\s@LogDeliveryConfigurationRequest' {} a -> s {destinationDetails = a} :: LogDeliveryConfigurationRequest)

-- | Refers to <https://redis.io/commands/slowlog slow-log>.
logDeliveryConfigurationRequest_logType :: Lens.Lens' LogDeliveryConfigurationRequest (Prelude.Maybe LogType)
logDeliveryConfigurationRequest_logType = Lens.lens (\LogDeliveryConfigurationRequest' {logType} -> logType) (\s@LogDeliveryConfigurationRequest' {} a -> s {logType = a} :: LogDeliveryConfigurationRequest)

-- | Specify either @cloudwatch-logs@ or @kinesis-firehose@ as the
-- destination type.
logDeliveryConfigurationRequest_destinationType :: Lens.Lens' LogDeliveryConfigurationRequest (Prelude.Maybe DestinationType)
logDeliveryConfigurationRequest_destinationType = Lens.lens (\LogDeliveryConfigurationRequest' {destinationType} -> destinationType) (\s@LogDeliveryConfigurationRequest' {} a -> s {destinationType = a} :: LogDeliveryConfigurationRequest)

instance
  Prelude.Hashable
    LogDeliveryConfigurationRequest

instance
  Prelude.NFData
    LogDeliveryConfigurationRequest

instance Core.ToQuery LogDeliveryConfigurationRequest where
  toQuery LogDeliveryConfigurationRequest' {..} =
    Prelude.mconcat
      [ "LogFormat" Core.=: logFormat,
        "Enabled" Core.=: enabled,
        "DestinationDetails" Core.=: destinationDetails,
        "LogType" Core.=: logType,
        "DestinationType" Core.=: destinationType
      ]
