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
-- Module      : Network.AWS.Kafka.Types.OpenMonitoringInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.OpenMonitoringInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.PrometheusInfo
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | JMX and Node monitoring for the MSK cluster.
--
-- /See:/ 'newOpenMonitoringInfo' smart constructor.
data OpenMonitoringInfo = OpenMonitoringInfo'
  { -- | Prometheus settings.
    prometheus :: PrometheusInfo
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OpenMonitoringInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prometheus', 'openMonitoringInfo_prometheus' - Prometheus settings.
newOpenMonitoringInfo ::
  -- | 'prometheus'
  PrometheusInfo ->
  OpenMonitoringInfo
newOpenMonitoringInfo pPrometheus_ =
  OpenMonitoringInfo' {prometheus = pPrometheus_}

-- | Prometheus settings.
openMonitoringInfo_prometheus :: Lens.Lens' OpenMonitoringInfo PrometheusInfo
openMonitoringInfo_prometheus = Lens.lens (\OpenMonitoringInfo' {prometheus} -> prometheus) (\s@OpenMonitoringInfo' {} a -> s {prometheus = a} :: OpenMonitoringInfo)

instance Prelude.Hashable OpenMonitoringInfo

instance Prelude.NFData OpenMonitoringInfo

instance Core.ToJSON OpenMonitoringInfo where
  toJSON OpenMonitoringInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("prometheus" Core..= prometheus)]
      )
