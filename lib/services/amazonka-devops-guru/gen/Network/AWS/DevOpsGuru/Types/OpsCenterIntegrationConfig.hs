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
-- Module      : Network.AWS.DevOpsGuru.Types.OpsCenterIntegrationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.OpsCenterIntegrationConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types.OptInStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about whether DevOps Guru is configured to create an OpsItem
-- in AWS Systems Manager OpsCenter for each created insight.
--
-- /See:/ 'newOpsCenterIntegrationConfig' smart constructor.
data OpsCenterIntegrationConfig = OpsCenterIntegrationConfig'
  { -- | Specifies if DevOps Guru is enabled to create an AWS Systems Manager
    -- OpsItem for each created insight.
    optInStatus :: Prelude.Maybe OptInStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OpsCenterIntegrationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'optInStatus', 'opsCenterIntegrationConfig_optInStatus' - Specifies if DevOps Guru is enabled to create an AWS Systems Manager
-- OpsItem for each created insight.
newOpsCenterIntegrationConfig ::
  OpsCenterIntegrationConfig
newOpsCenterIntegrationConfig =
  OpsCenterIntegrationConfig'
    { optInStatus =
        Prelude.Nothing
    }

-- | Specifies if DevOps Guru is enabled to create an AWS Systems Manager
-- OpsItem for each created insight.
opsCenterIntegrationConfig_optInStatus :: Lens.Lens' OpsCenterIntegrationConfig (Prelude.Maybe OptInStatus)
opsCenterIntegrationConfig_optInStatus = Lens.lens (\OpsCenterIntegrationConfig' {optInStatus} -> optInStatus) (\s@OpsCenterIntegrationConfig' {} a -> s {optInStatus = a} :: OpsCenterIntegrationConfig)

instance Prelude.Hashable OpsCenterIntegrationConfig

instance Prelude.NFData OpsCenterIntegrationConfig

instance Core.ToJSON OpsCenterIntegrationConfig where
  toJSON OpsCenterIntegrationConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("OptInStatus" Core..=) Prelude.<$> optInStatus]
      )
