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
-- Module      : Network.AWS.EMRContainers.Types.S3MonitoringConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMRContainers.Types.S3MonitoringConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Amazon S3 configuration for monitoring log publishing. You can configure
-- your jobs to send log information to Amazon S3.
--
-- /See:/ 'newS3MonitoringConfiguration' smart constructor.
data S3MonitoringConfiguration = S3MonitoringConfiguration'
  { -- | Amazon S3 destination URI for log publishing.
    logUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3MonitoringConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logUri', 's3MonitoringConfiguration_logUri' - Amazon S3 destination URI for log publishing.
newS3MonitoringConfiguration ::
  -- | 'logUri'
  Prelude.Text ->
  S3MonitoringConfiguration
newS3MonitoringConfiguration pLogUri_ =
  S3MonitoringConfiguration' {logUri = pLogUri_}

-- | Amazon S3 destination URI for log publishing.
s3MonitoringConfiguration_logUri :: Lens.Lens' S3MonitoringConfiguration Prelude.Text
s3MonitoringConfiguration_logUri = Lens.lens (\S3MonitoringConfiguration' {logUri} -> logUri) (\s@S3MonitoringConfiguration' {} a -> s {logUri = a} :: S3MonitoringConfiguration)

instance Core.FromJSON S3MonitoringConfiguration where
  parseJSON =
    Core.withObject
      "S3MonitoringConfiguration"
      ( \x ->
          S3MonitoringConfiguration'
            Prelude.<$> (x Core..: "logUri")
      )

instance Prelude.Hashable S3MonitoringConfiguration

instance Prelude.NFData S3MonitoringConfiguration

instance Core.ToJSON S3MonitoringConfiguration where
  toJSON S3MonitoringConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("logUri" Core..= logUri)]
      )
