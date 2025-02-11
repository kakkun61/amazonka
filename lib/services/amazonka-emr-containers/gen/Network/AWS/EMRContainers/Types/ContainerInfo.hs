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
-- Module      : Network.AWS.EMRContainers.Types.ContainerInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMRContainers.Types.ContainerInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.EMRContainers.Types.EksInfo
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The information about the container used for a job run or a managed
-- endpoint.
--
-- /See:/ 'newContainerInfo' smart constructor.
data ContainerInfo = ContainerInfo'
  { -- | The information about the EKS cluster.
    eksInfo :: Prelude.Maybe EksInfo
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContainerInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eksInfo', 'containerInfo_eksInfo' - The information about the EKS cluster.
newContainerInfo ::
  ContainerInfo
newContainerInfo =
  ContainerInfo' {eksInfo = Prelude.Nothing}

-- | The information about the EKS cluster.
containerInfo_eksInfo :: Lens.Lens' ContainerInfo (Prelude.Maybe EksInfo)
containerInfo_eksInfo = Lens.lens (\ContainerInfo' {eksInfo} -> eksInfo) (\s@ContainerInfo' {} a -> s {eksInfo = a} :: ContainerInfo)

instance Core.FromJSON ContainerInfo where
  parseJSON =
    Core.withObject
      "ContainerInfo"
      ( \x ->
          ContainerInfo' Prelude.<$> (x Core..:? "eksInfo")
      )

instance Prelude.Hashable ContainerInfo

instance Prelude.NFData ContainerInfo

instance Core.ToJSON ContainerInfo where
  toJSON ContainerInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [("eksInfo" Core..=) Prelude.<$> eksInfo]
      )
