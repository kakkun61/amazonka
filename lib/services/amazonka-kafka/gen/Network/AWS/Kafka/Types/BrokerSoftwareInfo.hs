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
-- Module      : Network.AWS.Kafka.Types.BrokerSoftwareInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.BrokerSoftwareInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the current software installed on the cluster.
--
-- /See:/ 'newBrokerSoftwareInfo' smart constructor.
data BrokerSoftwareInfo = BrokerSoftwareInfo'
  { -- | The revision of the configuration to use. This field isn\'t visible in
    -- this preview release.
    configurationRevision :: Prelude.Maybe Prelude.Integer,
    -- | The version of Apache Kafka.
    kafkaVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the configuration used for the
    -- cluster. This field isn\'t visible in this preview release.
    configurationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BrokerSoftwareInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationRevision', 'brokerSoftwareInfo_configurationRevision' - The revision of the configuration to use. This field isn\'t visible in
-- this preview release.
--
-- 'kafkaVersion', 'brokerSoftwareInfo_kafkaVersion' - The version of Apache Kafka.
--
-- 'configurationArn', 'brokerSoftwareInfo_configurationArn' - The Amazon Resource Name (ARN) of the configuration used for the
-- cluster. This field isn\'t visible in this preview release.
newBrokerSoftwareInfo ::
  BrokerSoftwareInfo
newBrokerSoftwareInfo =
  BrokerSoftwareInfo'
    { configurationRevision =
        Prelude.Nothing,
      kafkaVersion = Prelude.Nothing,
      configurationArn = Prelude.Nothing
    }

-- | The revision of the configuration to use. This field isn\'t visible in
-- this preview release.
brokerSoftwareInfo_configurationRevision :: Lens.Lens' BrokerSoftwareInfo (Prelude.Maybe Prelude.Integer)
brokerSoftwareInfo_configurationRevision = Lens.lens (\BrokerSoftwareInfo' {configurationRevision} -> configurationRevision) (\s@BrokerSoftwareInfo' {} a -> s {configurationRevision = a} :: BrokerSoftwareInfo)

-- | The version of Apache Kafka.
brokerSoftwareInfo_kafkaVersion :: Lens.Lens' BrokerSoftwareInfo (Prelude.Maybe Prelude.Text)
brokerSoftwareInfo_kafkaVersion = Lens.lens (\BrokerSoftwareInfo' {kafkaVersion} -> kafkaVersion) (\s@BrokerSoftwareInfo' {} a -> s {kafkaVersion = a} :: BrokerSoftwareInfo)

-- | The Amazon Resource Name (ARN) of the configuration used for the
-- cluster. This field isn\'t visible in this preview release.
brokerSoftwareInfo_configurationArn :: Lens.Lens' BrokerSoftwareInfo (Prelude.Maybe Prelude.Text)
brokerSoftwareInfo_configurationArn = Lens.lens (\BrokerSoftwareInfo' {configurationArn} -> configurationArn) (\s@BrokerSoftwareInfo' {} a -> s {configurationArn = a} :: BrokerSoftwareInfo)

instance Core.FromJSON BrokerSoftwareInfo where
  parseJSON =
    Core.withObject
      "BrokerSoftwareInfo"
      ( \x ->
          BrokerSoftwareInfo'
            Prelude.<$> (x Core..:? "configurationRevision")
            Prelude.<*> (x Core..:? "kafkaVersion")
            Prelude.<*> (x Core..:? "configurationArn")
      )

instance Prelude.Hashable BrokerSoftwareInfo

instance Prelude.NFData BrokerSoftwareInfo
