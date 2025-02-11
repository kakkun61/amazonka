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
-- Module      : Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterParameterGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterParameterStatus

-- | A cluster parameter group that is associated with an Amazon Redshift
-- cluster.
--
-- /See:/ 'newAwsRedshiftClusterClusterParameterGroup' smart constructor.
data AwsRedshiftClusterClusterParameterGroup = AwsRedshiftClusterClusterParameterGroup'
  { -- | The list of parameter statuses.
    clusterParameterStatusList :: Prelude.Maybe [AwsRedshiftClusterClusterParameterStatus],
    -- | The status of updates to the parameters.
    parameterApplyStatus :: Prelude.Maybe Prelude.Text,
    -- | The name of the parameter group.
    parameterGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsRedshiftClusterClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterParameterStatusList', 'awsRedshiftClusterClusterParameterGroup_clusterParameterStatusList' - The list of parameter statuses.
--
-- 'parameterApplyStatus', 'awsRedshiftClusterClusterParameterGroup_parameterApplyStatus' - The status of updates to the parameters.
--
-- 'parameterGroupName', 'awsRedshiftClusterClusterParameterGroup_parameterGroupName' - The name of the parameter group.
newAwsRedshiftClusterClusterParameterGroup ::
  AwsRedshiftClusterClusterParameterGroup
newAwsRedshiftClusterClusterParameterGroup =
  AwsRedshiftClusterClusterParameterGroup'
    { clusterParameterStatusList =
        Prelude.Nothing,
      parameterApplyStatus =
        Prelude.Nothing,
      parameterGroupName =
        Prelude.Nothing
    }

-- | The list of parameter statuses.
awsRedshiftClusterClusterParameterGroup_clusterParameterStatusList :: Lens.Lens' AwsRedshiftClusterClusterParameterGroup (Prelude.Maybe [AwsRedshiftClusterClusterParameterStatus])
awsRedshiftClusterClusterParameterGroup_clusterParameterStatusList = Lens.lens (\AwsRedshiftClusterClusterParameterGroup' {clusterParameterStatusList} -> clusterParameterStatusList) (\s@AwsRedshiftClusterClusterParameterGroup' {} a -> s {clusterParameterStatusList = a} :: AwsRedshiftClusterClusterParameterGroup) Prelude.. Lens.mapping Lens.coerced

-- | The status of updates to the parameters.
awsRedshiftClusterClusterParameterGroup_parameterApplyStatus :: Lens.Lens' AwsRedshiftClusterClusterParameterGroup (Prelude.Maybe Prelude.Text)
awsRedshiftClusterClusterParameterGroup_parameterApplyStatus = Lens.lens (\AwsRedshiftClusterClusterParameterGroup' {parameterApplyStatus} -> parameterApplyStatus) (\s@AwsRedshiftClusterClusterParameterGroup' {} a -> s {parameterApplyStatus = a} :: AwsRedshiftClusterClusterParameterGroup)

-- | The name of the parameter group.
awsRedshiftClusterClusterParameterGroup_parameterGroupName :: Lens.Lens' AwsRedshiftClusterClusterParameterGroup (Prelude.Maybe Prelude.Text)
awsRedshiftClusterClusterParameterGroup_parameterGroupName = Lens.lens (\AwsRedshiftClusterClusterParameterGroup' {parameterGroupName} -> parameterGroupName) (\s@AwsRedshiftClusterClusterParameterGroup' {} a -> s {parameterGroupName = a} :: AwsRedshiftClusterClusterParameterGroup)

instance
  Core.FromJSON
    AwsRedshiftClusterClusterParameterGroup
  where
  parseJSON =
    Core.withObject
      "AwsRedshiftClusterClusterParameterGroup"
      ( \x ->
          AwsRedshiftClusterClusterParameterGroup'
            Prelude.<$> ( x Core..:? "ClusterParameterStatusList"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ParameterApplyStatus")
            Prelude.<*> (x Core..:? "ParameterGroupName")
      )

instance
  Prelude.Hashable
    AwsRedshiftClusterClusterParameterGroup

instance
  Prelude.NFData
    AwsRedshiftClusterClusterParameterGroup

instance
  Core.ToJSON
    AwsRedshiftClusterClusterParameterGroup
  where
  toJSON AwsRedshiftClusterClusterParameterGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClusterParameterStatusList" Core..=)
              Prelude.<$> clusterParameterStatusList,
            ("ParameterApplyStatus" Core..=)
              Prelude.<$> parameterApplyStatus,
            ("ParameterGroupName" Core..=)
              Prelude.<$> parameterGroupName
          ]
      )
