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
-- Module      : Network.AWS.HealthLake.Types.InputDataConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HealthLake.Types.InputDataConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The input properties for an import job.
--
-- /See:/ 'newInputDataConfig' smart constructor.
data InputDataConfig = InputDataConfig'
  { -- | The S3Uri is the user specified S3 location of the FHIR data to be
    -- imported into Amazon HealthLake.
    s3Uri :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputDataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Uri', 'inputDataConfig_s3Uri' - The S3Uri is the user specified S3 location of the FHIR data to be
-- imported into Amazon HealthLake.
newInputDataConfig ::
  InputDataConfig
newInputDataConfig =
  InputDataConfig' {s3Uri = Prelude.Nothing}

-- | The S3Uri is the user specified S3 location of the FHIR data to be
-- imported into Amazon HealthLake.
inputDataConfig_s3Uri :: Lens.Lens' InputDataConfig (Prelude.Maybe Prelude.Text)
inputDataConfig_s3Uri = Lens.lens (\InputDataConfig' {s3Uri} -> s3Uri) (\s@InputDataConfig' {} a -> s {s3Uri = a} :: InputDataConfig)

instance Core.FromJSON InputDataConfig where
  parseJSON =
    Core.withObject
      "InputDataConfig"
      ( \x ->
          InputDataConfig' Prelude.<$> (x Core..:? "S3Uri")
      )

instance Prelude.Hashable InputDataConfig

instance Prelude.NFData InputDataConfig

instance Core.ToJSON InputDataConfig where
  toJSON InputDataConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("S3Uri" Core..=) Prelude.<$> s3Uri]
      )
