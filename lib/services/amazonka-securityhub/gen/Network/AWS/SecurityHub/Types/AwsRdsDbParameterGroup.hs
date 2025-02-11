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
-- Module      : Network.AWS.SecurityHub.Types.AwsRdsDbParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsRdsDbParameterGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a parameter group for a DB instance.
--
-- /See:/ 'newAwsRdsDbParameterGroup' smart constructor.
data AwsRdsDbParameterGroup = AwsRdsDbParameterGroup'
  { -- | The name of the parameter group.
    dbParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The status of parameter updates.
    parameterApplyStatus :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsRdsDbParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbParameterGroupName', 'awsRdsDbParameterGroup_dbParameterGroupName' - The name of the parameter group.
--
-- 'parameterApplyStatus', 'awsRdsDbParameterGroup_parameterApplyStatus' - The status of parameter updates.
newAwsRdsDbParameterGroup ::
  AwsRdsDbParameterGroup
newAwsRdsDbParameterGroup =
  AwsRdsDbParameterGroup'
    { dbParameterGroupName =
        Prelude.Nothing,
      parameterApplyStatus = Prelude.Nothing
    }

-- | The name of the parameter group.
awsRdsDbParameterGroup_dbParameterGroupName :: Lens.Lens' AwsRdsDbParameterGroup (Prelude.Maybe Prelude.Text)
awsRdsDbParameterGroup_dbParameterGroupName = Lens.lens (\AwsRdsDbParameterGroup' {dbParameterGroupName} -> dbParameterGroupName) (\s@AwsRdsDbParameterGroup' {} a -> s {dbParameterGroupName = a} :: AwsRdsDbParameterGroup)

-- | The status of parameter updates.
awsRdsDbParameterGroup_parameterApplyStatus :: Lens.Lens' AwsRdsDbParameterGroup (Prelude.Maybe Prelude.Text)
awsRdsDbParameterGroup_parameterApplyStatus = Lens.lens (\AwsRdsDbParameterGroup' {parameterApplyStatus} -> parameterApplyStatus) (\s@AwsRdsDbParameterGroup' {} a -> s {parameterApplyStatus = a} :: AwsRdsDbParameterGroup)

instance Core.FromJSON AwsRdsDbParameterGroup where
  parseJSON =
    Core.withObject
      "AwsRdsDbParameterGroup"
      ( \x ->
          AwsRdsDbParameterGroup'
            Prelude.<$> (x Core..:? "DbParameterGroupName")
            Prelude.<*> (x Core..:? "ParameterApplyStatus")
      )

instance Prelude.Hashable AwsRdsDbParameterGroup

instance Prelude.NFData AwsRdsDbParameterGroup

instance Core.ToJSON AwsRdsDbParameterGroup where
  toJSON AwsRdsDbParameterGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DbParameterGroupName" Core..=)
              Prelude.<$> dbParameterGroupName,
            ("ParameterApplyStatus" Core..=)
              Prelude.<$> parameterApplyStatus
          ]
      )
