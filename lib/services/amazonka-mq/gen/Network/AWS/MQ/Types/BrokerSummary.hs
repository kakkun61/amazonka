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
-- Module      : Network.AWS.MQ.Types.BrokerSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MQ.Types.BrokerState
import Network.AWS.MQ.Types.DeploymentMode
import Network.AWS.MQ.Types.EngineType
import qualified Network.AWS.Prelude as Prelude

-- | Returns information about all brokers.
--
-- /See:/ 'newBrokerSummary' smart constructor.
data BrokerSummary = BrokerSummary'
  { -- | The broker\'s name. This value is unique in your AWS account, 1-50
    -- characters long, and containing only letters, numbers, dashes, and
    -- underscores, and must not contain white spaces, brackets, wildcard
    -- characters, or special characters.
    brokerName :: Prelude.Maybe Prelude.Text,
    -- | The broker\'s status.
    brokerState :: Prelude.Maybe BrokerState,
    -- | The time when the broker was created.
    created :: Prelude.Maybe Core.POSIX,
    -- | The unique ID that Amazon MQ generates for the broker.
    brokerId :: Prelude.Maybe Prelude.Text,
    -- | The broker\'s Amazon Resource Name (ARN).
    brokerArn :: Prelude.Maybe Prelude.Text,
    -- | The broker\'s instance type.
    hostInstanceType :: Prelude.Maybe Prelude.Text,
    -- | The broker\'s deployment mode.
    deploymentMode :: DeploymentMode,
    -- | The type of broker engine.
    engineType :: EngineType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BrokerSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'brokerName', 'brokerSummary_brokerName' - The broker\'s name. This value is unique in your AWS account, 1-50
-- characters long, and containing only letters, numbers, dashes, and
-- underscores, and must not contain white spaces, brackets, wildcard
-- characters, or special characters.
--
-- 'brokerState', 'brokerSummary_brokerState' - The broker\'s status.
--
-- 'created', 'brokerSummary_created' - The time when the broker was created.
--
-- 'brokerId', 'brokerSummary_brokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- 'brokerArn', 'brokerSummary_brokerArn' - The broker\'s Amazon Resource Name (ARN).
--
-- 'hostInstanceType', 'brokerSummary_hostInstanceType' - The broker\'s instance type.
--
-- 'deploymentMode', 'brokerSummary_deploymentMode' - The broker\'s deployment mode.
--
-- 'engineType', 'brokerSummary_engineType' - The type of broker engine.
newBrokerSummary ::
  -- | 'deploymentMode'
  DeploymentMode ->
  -- | 'engineType'
  EngineType ->
  BrokerSummary
newBrokerSummary pDeploymentMode_ pEngineType_ =
  BrokerSummary'
    { brokerName = Prelude.Nothing,
      brokerState = Prelude.Nothing,
      created = Prelude.Nothing,
      brokerId = Prelude.Nothing,
      brokerArn = Prelude.Nothing,
      hostInstanceType = Prelude.Nothing,
      deploymentMode = pDeploymentMode_,
      engineType = pEngineType_
    }

-- | The broker\'s name. This value is unique in your AWS account, 1-50
-- characters long, and containing only letters, numbers, dashes, and
-- underscores, and must not contain white spaces, brackets, wildcard
-- characters, or special characters.
brokerSummary_brokerName :: Lens.Lens' BrokerSummary (Prelude.Maybe Prelude.Text)
brokerSummary_brokerName = Lens.lens (\BrokerSummary' {brokerName} -> brokerName) (\s@BrokerSummary' {} a -> s {brokerName = a} :: BrokerSummary)

-- | The broker\'s status.
brokerSummary_brokerState :: Lens.Lens' BrokerSummary (Prelude.Maybe BrokerState)
brokerSummary_brokerState = Lens.lens (\BrokerSummary' {brokerState} -> brokerState) (\s@BrokerSummary' {} a -> s {brokerState = a} :: BrokerSummary)

-- | The time when the broker was created.
brokerSummary_created :: Lens.Lens' BrokerSummary (Prelude.Maybe Prelude.UTCTime)
brokerSummary_created = Lens.lens (\BrokerSummary' {created} -> created) (\s@BrokerSummary' {} a -> s {created = a} :: BrokerSummary) Prelude.. Lens.mapping Core._Time

-- | The unique ID that Amazon MQ generates for the broker.
brokerSummary_brokerId :: Lens.Lens' BrokerSummary (Prelude.Maybe Prelude.Text)
brokerSummary_brokerId = Lens.lens (\BrokerSummary' {brokerId} -> brokerId) (\s@BrokerSummary' {} a -> s {brokerId = a} :: BrokerSummary)

-- | The broker\'s Amazon Resource Name (ARN).
brokerSummary_brokerArn :: Lens.Lens' BrokerSummary (Prelude.Maybe Prelude.Text)
brokerSummary_brokerArn = Lens.lens (\BrokerSummary' {brokerArn} -> brokerArn) (\s@BrokerSummary' {} a -> s {brokerArn = a} :: BrokerSummary)

-- | The broker\'s instance type.
brokerSummary_hostInstanceType :: Lens.Lens' BrokerSummary (Prelude.Maybe Prelude.Text)
brokerSummary_hostInstanceType = Lens.lens (\BrokerSummary' {hostInstanceType} -> hostInstanceType) (\s@BrokerSummary' {} a -> s {hostInstanceType = a} :: BrokerSummary)

-- | The broker\'s deployment mode.
brokerSummary_deploymentMode :: Lens.Lens' BrokerSummary DeploymentMode
brokerSummary_deploymentMode = Lens.lens (\BrokerSummary' {deploymentMode} -> deploymentMode) (\s@BrokerSummary' {} a -> s {deploymentMode = a} :: BrokerSummary)

-- | The type of broker engine.
brokerSummary_engineType :: Lens.Lens' BrokerSummary EngineType
brokerSummary_engineType = Lens.lens (\BrokerSummary' {engineType} -> engineType) (\s@BrokerSummary' {} a -> s {engineType = a} :: BrokerSummary)

instance Core.FromJSON BrokerSummary where
  parseJSON =
    Core.withObject
      "BrokerSummary"
      ( \x ->
          BrokerSummary'
            Prelude.<$> (x Core..:? "brokerName")
            Prelude.<*> (x Core..:? "brokerState")
            Prelude.<*> (x Core..:? "created")
            Prelude.<*> (x Core..:? "brokerId")
            Prelude.<*> (x Core..:? "brokerArn")
            Prelude.<*> (x Core..:? "hostInstanceType")
            Prelude.<*> (x Core..: "deploymentMode")
            Prelude.<*> (x Core..: "engineType")
      )

instance Prelude.Hashable BrokerSummary

instance Prelude.NFData BrokerSummary
