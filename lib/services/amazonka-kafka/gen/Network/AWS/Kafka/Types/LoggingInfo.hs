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
-- Module      : Network.AWS.Kafka.Types.LoggingInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.LoggingInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.BrokerLogs
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newLoggingInfo' smart constructor.
data LoggingInfo = LoggingInfo'
  { brokerLogs :: BrokerLogs
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoggingInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'brokerLogs', 'loggingInfo_brokerLogs' - Undocumented member.
newLoggingInfo ::
  -- | 'brokerLogs'
  BrokerLogs ->
  LoggingInfo
newLoggingInfo pBrokerLogs_ =
  LoggingInfo' {brokerLogs = pBrokerLogs_}

-- | Undocumented member.
loggingInfo_brokerLogs :: Lens.Lens' LoggingInfo BrokerLogs
loggingInfo_brokerLogs = Lens.lens (\LoggingInfo' {brokerLogs} -> brokerLogs) (\s@LoggingInfo' {} a -> s {brokerLogs = a} :: LoggingInfo)

instance Core.FromJSON LoggingInfo where
  parseJSON =
    Core.withObject
      "LoggingInfo"
      ( \x ->
          LoggingInfo' Prelude.<$> (x Core..: "brokerLogs")
      )

instance Prelude.Hashable LoggingInfo

instance Prelude.NFData LoggingInfo

instance Core.ToJSON LoggingInfo where
  toJSON LoggingInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("brokerLogs" Core..= brokerLogs)]
      )
