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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationMaintenanceConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationMaintenanceConfigurationUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the updated maintenance configuration for the application.
--
-- /See:/ 'newApplicationMaintenanceConfigurationUpdate' smart constructor.
data ApplicationMaintenanceConfigurationUpdate = ApplicationMaintenanceConfigurationUpdate'
  { -- | The updated start time for the maintenance window.
    applicationMaintenanceWindowStartTimeUpdate :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationMaintenanceConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationMaintenanceWindowStartTimeUpdate', 'applicationMaintenanceConfigurationUpdate_applicationMaintenanceWindowStartTimeUpdate' - The updated start time for the maintenance window.
newApplicationMaintenanceConfigurationUpdate ::
  -- | 'applicationMaintenanceWindowStartTimeUpdate'
  Prelude.Text ->
  ApplicationMaintenanceConfigurationUpdate
newApplicationMaintenanceConfigurationUpdate
  pApplicationMaintenanceWindowStartTimeUpdate_ =
    ApplicationMaintenanceConfigurationUpdate'
      { applicationMaintenanceWindowStartTimeUpdate =
          pApplicationMaintenanceWindowStartTimeUpdate_
      }

-- | The updated start time for the maintenance window.
applicationMaintenanceConfigurationUpdate_applicationMaintenanceWindowStartTimeUpdate :: Lens.Lens' ApplicationMaintenanceConfigurationUpdate Prelude.Text
applicationMaintenanceConfigurationUpdate_applicationMaintenanceWindowStartTimeUpdate = Lens.lens (\ApplicationMaintenanceConfigurationUpdate' {applicationMaintenanceWindowStartTimeUpdate} -> applicationMaintenanceWindowStartTimeUpdate) (\s@ApplicationMaintenanceConfigurationUpdate' {} a -> s {applicationMaintenanceWindowStartTimeUpdate = a} :: ApplicationMaintenanceConfigurationUpdate)

instance
  Prelude.Hashable
    ApplicationMaintenanceConfigurationUpdate

instance
  Prelude.NFData
    ApplicationMaintenanceConfigurationUpdate

instance
  Core.ToJSON
    ApplicationMaintenanceConfigurationUpdate
  where
  toJSON ApplicationMaintenanceConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ApplicationMaintenanceWindowStartTimeUpdate"
                  Core..= applicationMaintenanceWindowStartTimeUpdate
              )
          ]
      )
