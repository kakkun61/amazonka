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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationRestoreConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationRestoreConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationRestoreType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the method and snapshot to use when restarting an application
-- using previously saved application state.
--
-- /See:/ 'newApplicationRestoreConfiguration' smart constructor.
data ApplicationRestoreConfiguration = ApplicationRestoreConfiguration'
  { -- | The identifier of an existing snapshot of application state to use to
    -- restart an application. The application uses this value if
    -- @RESTORE_FROM_CUSTOM_SNAPSHOT@ is specified for the
    -- @ApplicationRestoreType@.
    snapshotName :: Prelude.Maybe Prelude.Text,
    -- | Specifies how the application should be restored.
    applicationRestoreType :: ApplicationRestoreType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationRestoreConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snapshotName', 'applicationRestoreConfiguration_snapshotName' - The identifier of an existing snapshot of application state to use to
-- restart an application. The application uses this value if
-- @RESTORE_FROM_CUSTOM_SNAPSHOT@ is specified for the
-- @ApplicationRestoreType@.
--
-- 'applicationRestoreType', 'applicationRestoreConfiguration_applicationRestoreType' - Specifies how the application should be restored.
newApplicationRestoreConfiguration ::
  -- | 'applicationRestoreType'
  ApplicationRestoreType ->
  ApplicationRestoreConfiguration
newApplicationRestoreConfiguration
  pApplicationRestoreType_ =
    ApplicationRestoreConfiguration'
      { snapshotName =
          Prelude.Nothing,
        applicationRestoreType =
          pApplicationRestoreType_
      }

-- | The identifier of an existing snapshot of application state to use to
-- restart an application. The application uses this value if
-- @RESTORE_FROM_CUSTOM_SNAPSHOT@ is specified for the
-- @ApplicationRestoreType@.
applicationRestoreConfiguration_snapshotName :: Lens.Lens' ApplicationRestoreConfiguration (Prelude.Maybe Prelude.Text)
applicationRestoreConfiguration_snapshotName = Lens.lens (\ApplicationRestoreConfiguration' {snapshotName} -> snapshotName) (\s@ApplicationRestoreConfiguration' {} a -> s {snapshotName = a} :: ApplicationRestoreConfiguration)

-- | Specifies how the application should be restored.
applicationRestoreConfiguration_applicationRestoreType :: Lens.Lens' ApplicationRestoreConfiguration ApplicationRestoreType
applicationRestoreConfiguration_applicationRestoreType = Lens.lens (\ApplicationRestoreConfiguration' {applicationRestoreType} -> applicationRestoreType) (\s@ApplicationRestoreConfiguration' {} a -> s {applicationRestoreType = a} :: ApplicationRestoreConfiguration)

instance
  Core.FromJSON
    ApplicationRestoreConfiguration
  where
  parseJSON =
    Core.withObject
      "ApplicationRestoreConfiguration"
      ( \x ->
          ApplicationRestoreConfiguration'
            Prelude.<$> (x Core..:? "SnapshotName")
            Prelude.<*> (x Core..: "ApplicationRestoreType")
      )

instance
  Prelude.Hashable
    ApplicationRestoreConfiguration

instance
  Prelude.NFData
    ApplicationRestoreConfiguration

instance Core.ToJSON ApplicationRestoreConfiguration where
  toJSON ApplicationRestoreConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SnapshotName" Core..=) Prelude.<$> snapshotName,
            Prelude.Just
              ( "ApplicationRestoreType"
                  Core..= applicationRestoreType
              )
          ]
      )
