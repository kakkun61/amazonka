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
-- Module      : Network.AWS.KafkaConnect.Types.ApacheKafkaClusterDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ApacheKafkaClusterDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.VpcDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The description of the Apache Kafka cluster to which the connector is
-- connected.
--
-- /See:/ 'newApacheKafkaClusterDescription' smart constructor.
data ApacheKafkaClusterDescription = ApacheKafkaClusterDescription'
  { -- | The bootstrap servers of the cluster.
    bootstrapServers :: Prelude.Maybe Prelude.Text,
    -- | Details of an Amazon VPC which has network connectivity to the Apache
    -- Kafka cluster.
    vpc :: Prelude.Maybe VpcDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApacheKafkaClusterDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bootstrapServers', 'apacheKafkaClusterDescription_bootstrapServers' - The bootstrap servers of the cluster.
--
-- 'vpc', 'apacheKafkaClusterDescription_vpc' - Details of an Amazon VPC which has network connectivity to the Apache
-- Kafka cluster.
newApacheKafkaClusterDescription ::
  ApacheKafkaClusterDescription
newApacheKafkaClusterDescription =
  ApacheKafkaClusterDescription'
    { bootstrapServers =
        Prelude.Nothing,
      vpc = Prelude.Nothing
    }

-- | The bootstrap servers of the cluster.
apacheKafkaClusterDescription_bootstrapServers :: Lens.Lens' ApacheKafkaClusterDescription (Prelude.Maybe Prelude.Text)
apacheKafkaClusterDescription_bootstrapServers = Lens.lens (\ApacheKafkaClusterDescription' {bootstrapServers} -> bootstrapServers) (\s@ApacheKafkaClusterDescription' {} a -> s {bootstrapServers = a} :: ApacheKafkaClusterDescription)

-- | Details of an Amazon VPC which has network connectivity to the Apache
-- Kafka cluster.
apacheKafkaClusterDescription_vpc :: Lens.Lens' ApacheKafkaClusterDescription (Prelude.Maybe VpcDescription)
apacheKafkaClusterDescription_vpc = Lens.lens (\ApacheKafkaClusterDescription' {vpc} -> vpc) (\s@ApacheKafkaClusterDescription' {} a -> s {vpc = a} :: ApacheKafkaClusterDescription)

instance Core.FromJSON ApacheKafkaClusterDescription where
  parseJSON =
    Core.withObject
      "ApacheKafkaClusterDescription"
      ( \x ->
          ApacheKafkaClusterDescription'
            Prelude.<$> (x Core..:? "bootstrapServers")
            Prelude.<*> (x Core..:? "vpc")
      )

instance
  Prelude.Hashable
    ApacheKafkaClusterDescription

instance Prelude.NFData ApacheKafkaClusterDescription
