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
-- Module      : Network.AWS.KafkaConnect.Types.ConnectorSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ConnectorSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.CapacityDescription
import Network.AWS.KafkaConnect.Types.ConnectorState
import Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationDescription
import Network.AWS.KafkaConnect.Types.KafkaClusterDescription
import Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransitDescription
import Network.AWS.KafkaConnect.Types.LogDeliveryDescription
import Network.AWS.KafkaConnect.Types.PluginDescription
import Network.AWS.KafkaConnect.Types.WorkerConfigurationDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of a connector.
--
-- /See:/ 'newConnectorSummary' smart constructor.
data ConnectorSummary = ConnectorSummary'
  { -- | The time that the connector was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The details of the Apache Kafka cluster to which the connector is
    -- connected.
    kafkaCluster :: Prelude.Maybe KafkaClusterDescription,
    -- | The version of Kafka Connect. It has to be compatible with both the
    -- Apache Kafka cluster\'s version and the plugins.
    kafkaConnectVersion :: Prelude.Maybe Prelude.Text,
    -- | The settings for delivering connector logs to Amazon CloudWatch Logs.
    logDelivery :: Prelude.Maybe LogDeliveryDescription,
    -- | The current version of the connector.
    currentVersion :: Prelude.Maybe Prelude.Text,
    -- | The worker configurations that are in use with the connector.
    workerConfiguration :: Prelude.Maybe WorkerConfigurationDescription,
    -- | The Amazon Resource Name (ARN) of the connector.
    connectorArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the connector.
    connectorName :: Prelude.Maybe Prelude.Text,
    -- | The state of the connector.
    connectorState :: Prelude.Maybe ConnectorState,
    -- | The connector\'s compute capacity settings.
    capacity :: Prelude.Maybe CapacityDescription,
    -- | Specifies which plugins were used for this connector.
    plugins :: Prelude.Maybe [PluginDescription],
    -- | The description of the connector.
    connectorDescription :: Prelude.Maybe Prelude.Text,
    -- | The type of client authentication used to connect to the Apache Kafka
    -- cluster. The value is NONE when no client authentication is used.
    kafkaClusterClientAuthentication :: Prelude.Maybe KafkaClusterClientAuthenticationDescription,
    -- | Details of encryption in transit to the Apache Kafka cluster.
    kafkaClusterEncryptionInTransit :: Prelude.Maybe KafkaClusterEncryptionInTransitDescription,
    -- | The Amazon Resource Name (ARN) of the IAM role used by the connector to
    -- access Amazon Web Services resources.
    serviceExecutionRoleArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectorSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'connectorSummary_creationTime' - The time that the connector was created.
--
-- 'kafkaCluster', 'connectorSummary_kafkaCluster' - The details of the Apache Kafka cluster to which the connector is
-- connected.
--
-- 'kafkaConnectVersion', 'connectorSummary_kafkaConnectVersion' - The version of Kafka Connect. It has to be compatible with both the
-- Apache Kafka cluster\'s version and the plugins.
--
-- 'logDelivery', 'connectorSummary_logDelivery' - The settings for delivering connector logs to Amazon CloudWatch Logs.
--
-- 'currentVersion', 'connectorSummary_currentVersion' - The current version of the connector.
--
-- 'workerConfiguration', 'connectorSummary_workerConfiguration' - The worker configurations that are in use with the connector.
--
-- 'connectorArn', 'connectorSummary_connectorArn' - The Amazon Resource Name (ARN) of the connector.
--
-- 'connectorName', 'connectorSummary_connectorName' - The name of the connector.
--
-- 'connectorState', 'connectorSummary_connectorState' - The state of the connector.
--
-- 'capacity', 'connectorSummary_capacity' - The connector\'s compute capacity settings.
--
-- 'plugins', 'connectorSummary_plugins' - Specifies which plugins were used for this connector.
--
-- 'connectorDescription', 'connectorSummary_connectorDescription' - The description of the connector.
--
-- 'kafkaClusterClientAuthentication', 'connectorSummary_kafkaClusterClientAuthentication' - The type of client authentication used to connect to the Apache Kafka
-- cluster. The value is NONE when no client authentication is used.
--
-- 'kafkaClusterEncryptionInTransit', 'connectorSummary_kafkaClusterEncryptionInTransit' - Details of encryption in transit to the Apache Kafka cluster.
--
-- 'serviceExecutionRoleArn', 'connectorSummary_serviceExecutionRoleArn' - The Amazon Resource Name (ARN) of the IAM role used by the connector to
-- access Amazon Web Services resources.
newConnectorSummary ::
  ConnectorSummary
newConnectorSummary =
  ConnectorSummary'
    { creationTime = Prelude.Nothing,
      kafkaCluster = Prelude.Nothing,
      kafkaConnectVersion = Prelude.Nothing,
      logDelivery = Prelude.Nothing,
      currentVersion = Prelude.Nothing,
      workerConfiguration = Prelude.Nothing,
      connectorArn = Prelude.Nothing,
      connectorName = Prelude.Nothing,
      connectorState = Prelude.Nothing,
      capacity = Prelude.Nothing,
      plugins = Prelude.Nothing,
      connectorDescription = Prelude.Nothing,
      kafkaClusterClientAuthentication = Prelude.Nothing,
      kafkaClusterEncryptionInTransit = Prelude.Nothing,
      serviceExecutionRoleArn = Prelude.Nothing
    }

-- | The time that the connector was created.
connectorSummary_creationTime :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.UTCTime)
connectorSummary_creationTime = Lens.lens (\ConnectorSummary' {creationTime} -> creationTime) (\s@ConnectorSummary' {} a -> s {creationTime = a} :: ConnectorSummary) Prelude.. Lens.mapping Core._Time

-- | The details of the Apache Kafka cluster to which the connector is
-- connected.
connectorSummary_kafkaCluster :: Lens.Lens' ConnectorSummary (Prelude.Maybe KafkaClusterDescription)
connectorSummary_kafkaCluster = Lens.lens (\ConnectorSummary' {kafkaCluster} -> kafkaCluster) (\s@ConnectorSummary' {} a -> s {kafkaCluster = a} :: ConnectorSummary)

-- | The version of Kafka Connect. It has to be compatible with both the
-- Apache Kafka cluster\'s version and the plugins.
connectorSummary_kafkaConnectVersion :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_kafkaConnectVersion = Lens.lens (\ConnectorSummary' {kafkaConnectVersion} -> kafkaConnectVersion) (\s@ConnectorSummary' {} a -> s {kafkaConnectVersion = a} :: ConnectorSummary)

-- | The settings for delivering connector logs to Amazon CloudWatch Logs.
connectorSummary_logDelivery :: Lens.Lens' ConnectorSummary (Prelude.Maybe LogDeliveryDescription)
connectorSummary_logDelivery = Lens.lens (\ConnectorSummary' {logDelivery} -> logDelivery) (\s@ConnectorSummary' {} a -> s {logDelivery = a} :: ConnectorSummary)

-- | The current version of the connector.
connectorSummary_currentVersion :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_currentVersion = Lens.lens (\ConnectorSummary' {currentVersion} -> currentVersion) (\s@ConnectorSummary' {} a -> s {currentVersion = a} :: ConnectorSummary)

-- | The worker configurations that are in use with the connector.
connectorSummary_workerConfiguration :: Lens.Lens' ConnectorSummary (Prelude.Maybe WorkerConfigurationDescription)
connectorSummary_workerConfiguration = Lens.lens (\ConnectorSummary' {workerConfiguration} -> workerConfiguration) (\s@ConnectorSummary' {} a -> s {workerConfiguration = a} :: ConnectorSummary)

-- | The Amazon Resource Name (ARN) of the connector.
connectorSummary_connectorArn :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_connectorArn = Lens.lens (\ConnectorSummary' {connectorArn} -> connectorArn) (\s@ConnectorSummary' {} a -> s {connectorArn = a} :: ConnectorSummary)

-- | The name of the connector.
connectorSummary_connectorName :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_connectorName = Lens.lens (\ConnectorSummary' {connectorName} -> connectorName) (\s@ConnectorSummary' {} a -> s {connectorName = a} :: ConnectorSummary)

-- | The state of the connector.
connectorSummary_connectorState :: Lens.Lens' ConnectorSummary (Prelude.Maybe ConnectorState)
connectorSummary_connectorState = Lens.lens (\ConnectorSummary' {connectorState} -> connectorState) (\s@ConnectorSummary' {} a -> s {connectorState = a} :: ConnectorSummary)

-- | The connector\'s compute capacity settings.
connectorSummary_capacity :: Lens.Lens' ConnectorSummary (Prelude.Maybe CapacityDescription)
connectorSummary_capacity = Lens.lens (\ConnectorSummary' {capacity} -> capacity) (\s@ConnectorSummary' {} a -> s {capacity = a} :: ConnectorSummary)

-- | Specifies which plugins were used for this connector.
connectorSummary_plugins :: Lens.Lens' ConnectorSummary (Prelude.Maybe [PluginDescription])
connectorSummary_plugins = Lens.lens (\ConnectorSummary' {plugins} -> plugins) (\s@ConnectorSummary' {} a -> s {plugins = a} :: ConnectorSummary) Prelude.. Lens.mapping Lens.coerced

-- | The description of the connector.
connectorSummary_connectorDescription :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_connectorDescription = Lens.lens (\ConnectorSummary' {connectorDescription} -> connectorDescription) (\s@ConnectorSummary' {} a -> s {connectorDescription = a} :: ConnectorSummary)

-- | The type of client authentication used to connect to the Apache Kafka
-- cluster. The value is NONE when no client authentication is used.
connectorSummary_kafkaClusterClientAuthentication :: Lens.Lens' ConnectorSummary (Prelude.Maybe KafkaClusterClientAuthenticationDescription)
connectorSummary_kafkaClusterClientAuthentication = Lens.lens (\ConnectorSummary' {kafkaClusterClientAuthentication} -> kafkaClusterClientAuthentication) (\s@ConnectorSummary' {} a -> s {kafkaClusterClientAuthentication = a} :: ConnectorSummary)

-- | Details of encryption in transit to the Apache Kafka cluster.
connectorSummary_kafkaClusterEncryptionInTransit :: Lens.Lens' ConnectorSummary (Prelude.Maybe KafkaClusterEncryptionInTransitDescription)
connectorSummary_kafkaClusterEncryptionInTransit = Lens.lens (\ConnectorSummary' {kafkaClusterEncryptionInTransit} -> kafkaClusterEncryptionInTransit) (\s@ConnectorSummary' {} a -> s {kafkaClusterEncryptionInTransit = a} :: ConnectorSummary)

-- | The Amazon Resource Name (ARN) of the IAM role used by the connector to
-- access Amazon Web Services resources.
connectorSummary_serviceExecutionRoleArn :: Lens.Lens' ConnectorSummary (Prelude.Maybe Prelude.Text)
connectorSummary_serviceExecutionRoleArn = Lens.lens (\ConnectorSummary' {serviceExecutionRoleArn} -> serviceExecutionRoleArn) (\s@ConnectorSummary' {} a -> s {serviceExecutionRoleArn = a} :: ConnectorSummary)

instance Core.FromJSON ConnectorSummary where
  parseJSON =
    Core.withObject
      "ConnectorSummary"
      ( \x ->
          ConnectorSummary'
            Prelude.<$> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "kafkaCluster")
            Prelude.<*> (x Core..:? "kafkaConnectVersion")
            Prelude.<*> (x Core..:? "logDelivery")
            Prelude.<*> (x Core..:? "currentVersion")
            Prelude.<*> (x Core..:? "workerConfiguration")
            Prelude.<*> (x Core..:? "connectorArn")
            Prelude.<*> (x Core..:? "connectorName")
            Prelude.<*> (x Core..:? "connectorState")
            Prelude.<*> (x Core..:? "capacity")
            Prelude.<*> (x Core..:? "plugins" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "connectorDescription")
            Prelude.<*> (x Core..:? "kafkaClusterClientAuthentication")
            Prelude.<*> (x Core..:? "kafkaClusterEncryptionInTransit")
            Prelude.<*> (x Core..:? "serviceExecutionRoleArn")
      )

instance Prelude.Hashable ConnectorSummary

instance Prelude.NFData ConnectorSummary
