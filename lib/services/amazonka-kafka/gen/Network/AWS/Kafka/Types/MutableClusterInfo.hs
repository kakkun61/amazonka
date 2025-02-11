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
-- Module      : Network.AWS.Kafka.Types.MutableClusterInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.MutableClusterInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.BrokerEBSVolumeInfo
import Network.AWS.Kafka.Types.ClientAuthentication
import Network.AWS.Kafka.Types.ConfigurationInfo
import Network.AWS.Kafka.Types.EncryptionInfo
import Network.AWS.Kafka.Types.EnhancedMonitoring
import Network.AWS.Kafka.Types.LoggingInfo
import Network.AWS.Kafka.Types.OpenMonitoring
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about cluster attributes that can be updated via update
-- APIs.
--
-- /See:/ 'newMutableClusterInfo' smart constructor.
data MutableClusterInfo = MutableClusterInfo'
  { -- | The number of broker nodes in the cluster.
    numberOfBrokerNodes :: Prelude.Maybe Prelude.Int,
    -- | Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
    -- Amazon CloudWatch for this cluster.
    enhancedMonitoring :: Prelude.Maybe EnhancedMonitoring,
    -- | The settings for open monitoring.
    openMonitoring :: Prelude.Maybe OpenMonitoring,
    -- | Information about the changes in the configuration of the brokers.
    configurationInfo :: Prelude.Maybe ConfigurationInfo,
    -- | Information about the Amazon MSK broker type.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The Kafka version.
    kafkaVersion :: Prelude.Maybe Prelude.Text,
    -- | You can configure your MSK cluster to send broker logs to different
    -- destination types. This is a container for the configuration details
    -- related to broker logs.
    loggingInfo :: Prelude.Maybe LoggingInfo,
    -- | Includes all client authentication information.
    clientAuthentication :: Prelude.Maybe ClientAuthentication,
    -- | Specifies the size of the EBS volume and the ID of the associated
    -- broker.
    brokerEBSVolumeInfo :: Prelude.Maybe [BrokerEBSVolumeInfo],
    -- | Includes all encryption-related information.
    encryptionInfo :: Prelude.Maybe EncryptionInfo
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MutableClusterInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'numberOfBrokerNodes', 'mutableClusterInfo_numberOfBrokerNodes' - The number of broker nodes in the cluster.
--
-- 'enhancedMonitoring', 'mutableClusterInfo_enhancedMonitoring' - Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
-- Amazon CloudWatch for this cluster.
--
-- 'openMonitoring', 'mutableClusterInfo_openMonitoring' - The settings for open monitoring.
--
-- 'configurationInfo', 'mutableClusterInfo_configurationInfo' - Information about the changes in the configuration of the brokers.
--
-- 'instanceType', 'mutableClusterInfo_instanceType' - Information about the Amazon MSK broker type.
--
-- 'kafkaVersion', 'mutableClusterInfo_kafkaVersion' - The Kafka version.
--
-- 'loggingInfo', 'mutableClusterInfo_loggingInfo' - You can configure your MSK cluster to send broker logs to different
-- destination types. This is a container for the configuration details
-- related to broker logs.
--
-- 'clientAuthentication', 'mutableClusterInfo_clientAuthentication' - Includes all client authentication information.
--
-- 'brokerEBSVolumeInfo', 'mutableClusterInfo_brokerEBSVolumeInfo' - Specifies the size of the EBS volume and the ID of the associated
-- broker.
--
-- 'encryptionInfo', 'mutableClusterInfo_encryptionInfo' - Includes all encryption-related information.
newMutableClusterInfo ::
  MutableClusterInfo
newMutableClusterInfo =
  MutableClusterInfo'
    { numberOfBrokerNodes =
        Prelude.Nothing,
      enhancedMonitoring = Prelude.Nothing,
      openMonitoring = Prelude.Nothing,
      configurationInfo = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      kafkaVersion = Prelude.Nothing,
      loggingInfo = Prelude.Nothing,
      clientAuthentication = Prelude.Nothing,
      brokerEBSVolumeInfo = Prelude.Nothing,
      encryptionInfo = Prelude.Nothing
    }

-- | The number of broker nodes in the cluster.
mutableClusterInfo_numberOfBrokerNodes :: Lens.Lens' MutableClusterInfo (Prelude.Maybe Prelude.Int)
mutableClusterInfo_numberOfBrokerNodes = Lens.lens (\MutableClusterInfo' {numberOfBrokerNodes} -> numberOfBrokerNodes) (\s@MutableClusterInfo' {} a -> s {numberOfBrokerNodes = a} :: MutableClusterInfo)

-- | Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
-- Amazon CloudWatch for this cluster.
mutableClusterInfo_enhancedMonitoring :: Lens.Lens' MutableClusterInfo (Prelude.Maybe EnhancedMonitoring)
mutableClusterInfo_enhancedMonitoring = Lens.lens (\MutableClusterInfo' {enhancedMonitoring} -> enhancedMonitoring) (\s@MutableClusterInfo' {} a -> s {enhancedMonitoring = a} :: MutableClusterInfo)

-- | The settings for open monitoring.
mutableClusterInfo_openMonitoring :: Lens.Lens' MutableClusterInfo (Prelude.Maybe OpenMonitoring)
mutableClusterInfo_openMonitoring = Lens.lens (\MutableClusterInfo' {openMonitoring} -> openMonitoring) (\s@MutableClusterInfo' {} a -> s {openMonitoring = a} :: MutableClusterInfo)

-- | Information about the changes in the configuration of the brokers.
mutableClusterInfo_configurationInfo :: Lens.Lens' MutableClusterInfo (Prelude.Maybe ConfigurationInfo)
mutableClusterInfo_configurationInfo = Lens.lens (\MutableClusterInfo' {configurationInfo} -> configurationInfo) (\s@MutableClusterInfo' {} a -> s {configurationInfo = a} :: MutableClusterInfo)

-- | Information about the Amazon MSK broker type.
mutableClusterInfo_instanceType :: Lens.Lens' MutableClusterInfo (Prelude.Maybe Prelude.Text)
mutableClusterInfo_instanceType = Lens.lens (\MutableClusterInfo' {instanceType} -> instanceType) (\s@MutableClusterInfo' {} a -> s {instanceType = a} :: MutableClusterInfo)

-- | The Kafka version.
mutableClusterInfo_kafkaVersion :: Lens.Lens' MutableClusterInfo (Prelude.Maybe Prelude.Text)
mutableClusterInfo_kafkaVersion = Lens.lens (\MutableClusterInfo' {kafkaVersion} -> kafkaVersion) (\s@MutableClusterInfo' {} a -> s {kafkaVersion = a} :: MutableClusterInfo)

-- | You can configure your MSK cluster to send broker logs to different
-- destination types. This is a container for the configuration details
-- related to broker logs.
mutableClusterInfo_loggingInfo :: Lens.Lens' MutableClusterInfo (Prelude.Maybe LoggingInfo)
mutableClusterInfo_loggingInfo = Lens.lens (\MutableClusterInfo' {loggingInfo} -> loggingInfo) (\s@MutableClusterInfo' {} a -> s {loggingInfo = a} :: MutableClusterInfo)

-- | Includes all client authentication information.
mutableClusterInfo_clientAuthentication :: Lens.Lens' MutableClusterInfo (Prelude.Maybe ClientAuthentication)
mutableClusterInfo_clientAuthentication = Lens.lens (\MutableClusterInfo' {clientAuthentication} -> clientAuthentication) (\s@MutableClusterInfo' {} a -> s {clientAuthentication = a} :: MutableClusterInfo)

-- | Specifies the size of the EBS volume and the ID of the associated
-- broker.
mutableClusterInfo_brokerEBSVolumeInfo :: Lens.Lens' MutableClusterInfo (Prelude.Maybe [BrokerEBSVolumeInfo])
mutableClusterInfo_brokerEBSVolumeInfo = Lens.lens (\MutableClusterInfo' {brokerEBSVolumeInfo} -> brokerEBSVolumeInfo) (\s@MutableClusterInfo' {} a -> s {brokerEBSVolumeInfo = a} :: MutableClusterInfo) Prelude.. Lens.mapping Lens.coerced

-- | Includes all encryption-related information.
mutableClusterInfo_encryptionInfo :: Lens.Lens' MutableClusterInfo (Prelude.Maybe EncryptionInfo)
mutableClusterInfo_encryptionInfo = Lens.lens (\MutableClusterInfo' {encryptionInfo} -> encryptionInfo) (\s@MutableClusterInfo' {} a -> s {encryptionInfo = a} :: MutableClusterInfo)

instance Core.FromJSON MutableClusterInfo where
  parseJSON =
    Core.withObject
      "MutableClusterInfo"
      ( \x ->
          MutableClusterInfo'
            Prelude.<$> (x Core..:? "numberOfBrokerNodes")
            Prelude.<*> (x Core..:? "enhancedMonitoring")
            Prelude.<*> (x Core..:? "openMonitoring")
            Prelude.<*> (x Core..:? "configurationInfo")
            Prelude.<*> (x Core..:? "instanceType")
            Prelude.<*> (x Core..:? "kafkaVersion")
            Prelude.<*> (x Core..:? "loggingInfo")
            Prelude.<*> (x Core..:? "clientAuthentication")
            Prelude.<*> ( x Core..:? "brokerEBSVolumeInfo"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "encryptionInfo")
      )

instance Prelude.Hashable MutableClusterInfo

instance Prelude.NFData MutableClusterInfo
