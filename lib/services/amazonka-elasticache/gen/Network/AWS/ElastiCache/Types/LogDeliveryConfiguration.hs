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
-- Module      : Network.AWS.ElastiCache.Types.LogDeliveryConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.LogDeliveryConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types.DestinationDetails
import Network.AWS.ElastiCache.Types.DestinationType
import Network.AWS.ElastiCache.Types.LogDeliveryConfigurationStatus
import Network.AWS.ElastiCache.Types.LogFormat
import Network.AWS.ElastiCache.Types.LogType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Returns the destination, format and type of the logs.
--
-- /See:/ 'newLogDeliveryConfiguration' smart constructor.
data LogDeliveryConfiguration = LogDeliveryConfiguration'
  { -- | Returns the log delivery configuration status. Values are one of
    -- @enabling@ | @disabling@ | @modifying@ | @active@ | @error@
    status :: Prelude.Maybe LogDeliveryConfigurationStatus,
    -- | Returns the log format, either JSON or TEXT.
    logFormat :: Prelude.Maybe LogFormat,
    -- | Configuration details of either a CloudWatch Logs destination or Kinesis
    -- Data Firehose destination.
    destinationDetails :: Prelude.Maybe DestinationDetails,
    -- | Refers to <https://redis.io/commands/slowlog slow-log>.
    logType :: Prelude.Maybe LogType,
    -- | Returns the destination type, either @cloudwatch-logs@ or
    -- @kinesis-firehose@.
    destinationType :: Prelude.Maybe DestinationType,
    -- | Returns an error message for the log delivery configuration.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogDeliveryConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'logDeliveryConfiguration_status' - Returns the log delivery configuration status. Values are one of
-- @enabling@ | @disabling@ | @modifying@ | @active@ | @error@
--
-- 'logFormat', 'logDeliveryConfiguration_logFormat' - Returns the log format, either JSON or TEXT.
--
-- 'destinationDetails', 'logDeliveryConfiguration_destinationDetails' - Configuration details of either a CloudWatch Logs destination or Kinesis
-- Data Firehose destination.
--
-- 'logType', 'logDeliveryConfiguration_logType' - Refers to <https://redis.io/commands/slowlog slow-log>.
--
-- 'destinationType', 'logDeliveryConfiguration_destinationType' - Returns the destination type, either @cloudwatch-logs@ or
-- @kinesis-firehose@.
--
-- 'message', 'logDeliveryConfiguration_message' - Returns an error message for the log delivery configuration.
newLogDeliveryConfiguration ::
  LogDeliveryConfiguration
newLogDeliveryConfiguration =
  LogDeliveryConfiguration'
    { status = Prelude.Nothing,
      logFormat = Prelude.Nothing,
      destinationDetails = Prelude.Nothing,
      logType = Prelude.Nothing,
      destinationType = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | Returns the log delivery configuration status. Values are one of
-- @enabling@ | @disabling@ | @modifying@ | @active@ | @error@
logDeliveryConfiguration_status :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe LogDeliveryConfigurationStatus)
logDeliveryConfiguration_status = Lens.lens (\LogDeliveryConfiguration' {status} -> status) (\s@LogDeliveryConfiguration' {} a -> s {status = a} :: LogDeliveryConfiguration)

-- | Returns the log format, either JSON or TEXT.
logDeliveryConfiguration_logFormat :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe LogFormat)
logDeliveryConfiguration_logFormat = Lens.lens (\LogDeliveryConfiguration' {logFormat} -> logFormat) (\s@LogDeliveryConfiguration' {} a -> s {logFormat = a} :: LogDeliveryConfiguration)

-- | Configuration details of either a CloudWatch Logs destination or Kinesis
-- Data Firehose destination.
logDeliveryConfiguration_destinationDetails :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe DestinationDetails)
logDeliveryConfiguration_destinationDetails = Lens.lens (\LogDeliveryConfiguration' {destinationDetails} -> destinationDetails) (\s@LogDeliveryConfiguration' {} a -> s {destinationDetails = a} :: LogDeliveryConfiguration)

-- | Refers to <https://redis.io/commands/slowlog slow-log>.
logDeliveryConfiguration_logType :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe LogType)
logDeliveryConfiguration_logType = Lens.lens (\LogDeliveryConfiguration' {logType} -> logType) (\s@LogDeliveryConfiguration' {} a -> s {logType = a} :: LogDeliveryConfiguration)

-- | Returns the destination type, either @cloudwatch-logs@ or
-- @kinesis-firehose@.
logDeliveryConfiguration_destinationType :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe DestinationType)
logDeliveryConfiguration_destinationType = Lens.lens (\LogDeliveryConfiguration' {destinationType} -> destinationType) (\s@LogDeliveryConfiguration' {} a -> s {destinationType = a} :: LogDeliveryConfiguration)

-- | Returns an error message for the log delivery configuration.
logDeliveryConfiguration_message :: Lens.Lens' LogDeliveryConfiguration (Prelude.Maybe Prelude.Text)
logDeliveryConfiguration_message = Lens.lens (\LogDeliveryConfiguration' {message} -> message) (\s@LogDeliveryConfiguration' {} a -> s {message = a} :: LogDeliveryConfiguration)

instance Core.FromXML LogDeliveryConfiguration where
  parseXML x =
    LogDeliveryConfiguration'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "LogFormat")
      Prelude.<*> (x Core..@? "DestinationDetails")
      Prelude.<*> (x Core..@? "LogType")
      Prelude.<*> (x Core..@? "DestinationType")
      Prelude.<*> (x Core..@? "Message")

instance Prelude.Hashable LogDeliveryConfiguration

instance Prelude.NFData LogDeliveryConfiguration
