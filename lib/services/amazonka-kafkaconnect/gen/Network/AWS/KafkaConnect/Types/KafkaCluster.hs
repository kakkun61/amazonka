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
-- Module      : Network.AWS.KafkaConnect.Types.KafkaCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.KafkaCluster where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.ApacheKafkaCluster
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of the Apache Kafka cluster to which the connector is
-- connected.
--
-- /See:/ 'newKafkaCluster' smart constructor.
data KafkaCluster = KafkaCluster'
  { -- | The Apache Kafka cluster to which the connector is connected.
    apacheKafkaCluster :: ApacheKafkaCluster
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KafkaCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apacheKafkaCluster', 'kafkaCluster_apacheKafkaCluster' - The Apache Kafka cluster to which the connector is connected.
newKafkaCluster ::
  -- | 'apacheKafkaCluster'
  ApacheKafkaCluster ->
  KafkaCluster
newKafkaCluster pApacheKafkaCluster_ =
  KafkaCluster'
    { apacheKafkaCluster =
        pApacheKafkaCluster_
    }

-- | The Apache Kafka cluster to which the connector is connected.
kafkaCluster_apacheKafkaCluster :: Lens.Lens' KafkaCluster ApacheKafkaCluster
kafkaCluster_apacheKafkaCluster = Lens.lens (\KafkaCluster' {apacheKafkaCluster} -> apacheKafkaCluster) (\s@KafkaCluster' {} a -> s {apacheKafkaCluster = a} :: KafkaCluster)

instance Prelude.Hashable KafkaCluster

instance Prelude.NFData KafkaCluster

instance Core.ToJSON KafkaCluster where
  toJSON KafkaCluster' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("apacheKafkaCluster" Core..= apacheKafkaCluster)
          ]
      )
