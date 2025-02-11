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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocationUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Updates to the configuration information required to deploy an Amazon
-- Data Analytics Studio notebook as an application with durable state.
--
-- /See:/ 'newDeployAsApplicationConfigurationUpdate' smart constructor.
data DeployAsApplicationConfigurationUpdate = DeployAsApplicationConfigurationUpdate'
  { -- | Updates to the location that holds the data required to specify an
    -- Amazon Data Analytics application.
    s3ContentLocationUpdate :: Prelude.Maybe S3ContentBaseLocationUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeployAsApplicationConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3ContentLocationUpdate', 'deployAsApplicationConfigurationUpdate_s3ContentLocationUpdate' - Updates to the location that holds the data required to specify an
-- Amazon Data Analytics application.
newDeployAsApplicationConfigurationUpdate ::
  DeployAsApplicationConfigurationUpdate
newDeployAsApplicationConfigurationUpdate =
  DeployAsApplicationConfigurationUpdate'
    { s3ContentLocationUpdate =
        Prelude.Nothing
    }

-- | Updates to the location that holds the data required to specify an
-- Amazon Data Analytics application.
deployAsApplicationConfigurationUpdate_s3ContentLocationUpdate :: Lens.Lens' DeployAsApplicationConfigurationUpdate (Prelude.Maybe S3ContentBaseLocationUpdate)
deployAsApplicationConfigurationUpdate_s3ContentLocationUpdate = Lens.lens (\DeployAsApplicationConfigurationUpdate' {s3ContentLocationUpdate} -> s3ContentLocationUpdate) (\s@DeployAsApplicationConfigurationUpdate' {} a -> s {s3ContentLocationUpdate = a} :: DeployAsApplicationConfigurationUpdate)

instance
  Prelude.Hashable
    DeployAsApplicationConfigurationUpdate

instance
  Prelude.NFData
    DeployAsApplicationConfigurationUpdate

instance
  Core.ToJSON
    DeployAsApplicationConfigurationUpdate
  where
  toJSON DeployAsApplicationConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3ContentLocationUpdate" Core..=)
              Prelude.<$> s3ContentLocationUpdate
          ]
      )
