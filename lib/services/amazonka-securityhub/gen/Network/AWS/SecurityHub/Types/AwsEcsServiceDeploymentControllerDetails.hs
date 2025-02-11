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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsServiceDeploymentControllerDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsServiceDeploymentControllerDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the deployment controller type that the service uses.
--
-- /See:/ 'newAwsEcsServiceDeploymentControllerDetails' smart constructor.
data AwsEcsServiceDeploymentControllerDetails = AwsEcsServiceDeploymentControllerDetails'
  { -- | The rolling update (@ECS@) deployment type replaces the current running
    -- version of the container with the latest version.
    --
    -- The blue\/green (@CODE_DEPLOY@) deployment type uses the blue\/green
    -- deployment model that is powered by CodeDeploy. This deployment model a
    -- new deployment of a service can be verified before production traffic is
    -- sent to it.
    --
    -- The external (@EXTERNAL@) deployment type allows the use of any
    -- third-party deployment controller for full control over the deployment
    -- process for an Amazon ECS service.
    --
    -- Valid values: @ECS@ | @CODE_DEPLOY@ | @EXTERNAL@
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsServiceDeploymentControllerDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'awsEcsServiceDeploymentControllerDetails_type' - The rolling update (@ECS@) deployment type replaces the current running
-- version of the container with the latest version.
--
-- The blue\/green (@CODE_DEPLOY@) deployment type uses the blue\/green
-- deployment model that is powered by CodeDeploy. This deployment model a
-- new deployment of a service can be verified before production traffic is
-- sent to it.
--
-- The external (@EXTERNAL@) deployment type allows the use of any
-- third-party deployment controller for full control over the deployment
-- process for an Amazon ECS service.
--
-- Valid values: @ECS@ | @CODE_DEPLOY@ | @EXTERNAL@
newAwsEcsServiceDeploymentControllerDetails ::
  AwsEcsServiceDeploymentControllerDetails
newAwsEcsServiceDeploymentControllerDetails =
  AwsEcsServiceDeploymentControllerDetails'
    { type' =
        Prelude.Nothing
    }

-- | The rolling update (@ECS@) deployment type replaces the current running
-- version of the container with the latest version.
--
-- The blue\/green (@CODE_DEPLOY@) deployment type uses the blue\/green
-- deployment model that is powered by CodeDeploy. This deployment model a
-- new deployment of a service can be verified before production traffic is
-- sent to it.
--
-- The external (@EXTERNAL@) deployment type allows the use of any
-- third-party deployment controller for full control over the deployment
-- process for an Amazon ECS service.
--
-- Valid values: @ECS@ | @CODE_DEPLOY@ | @EXTERNAL@
awsEcsServiceDeploymentControllerDetails_type :: Lens.Lens' AwsEcsServiceDeploymentControllerDetails (Prelude.Maybe Prelude.Text)
awsEcsServiceDeploymentControllerDetails_type = Lens.lens (\AwsEcsServiceDeploymentControllerDetails' {type'} -> type') (\s@AwsEcsServiceDeploymentControllerDetails' {} a -> s {type' = a} :: AwsEcsServiceDeploymentControllerDetails)

instance
  Core.FromJSON
    AwsEcsServiceDeploymentControllerDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsServiceDeploymentControllerDetails"
      ( \x ->
          AwsEcsServiceDeploymentControllerDetails'
            Prelude.<$> (x Core..:? "Type")
      )

instance
  Prelude.Hashable
    AwsEcsServiceDeploymentControllerDetails

instance
  Prelude.NFData
    AwsEcsServiceDeploymentControllerDetails

instance
  Core.ToJSON
    AwsEcsServiceDeploymentControllerDetails
  where
  toJSON AwsEcsServiceDeploymentControllerDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Type" Core..=) Prelude.<$> type']
      )
