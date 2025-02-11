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
-- Module      : Network.AWS.KafkaConnect.Types.CustomPluginLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.CustomPluginLocation where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.S3Location
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the location of a custom plugin.
--
-- /See:/ 'newCustomPluginLocation' smart constructor.
data CustomPluginLocation = CustomPluginLocation'
  { -- | The S3 bucket Amazon Resource Name (ARN), file key, and object version
    -- of the plugin file stored in Amazon S3.
    s3Location :: S3Location
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomPluginLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Location', 'customPluginLocation_s3Location' - The S3 bucket Amazon Resource Name (ARN), file key, and object version
-- of the plugin file stored in Amazon S3.
newCustomPluginLocation ::
  -- | 's3Location'
  S3Location ->
  CustomPluginLocation
newCustomPluginLocation pS3Location_ =
  CustomPluginLocation' {s3Location = pS3Location_}

-- | The S3 bucket Amazon Resource Name (ARN), file key, and object version
-- of the plugin file stored in Amazon S3.
customPluginLocation_s3Location :: Lens.Lens' CustomPluginLocation S3Location
customPluginLocation_s3Location = Lens.lens (\CustomPluginLocation' {s3Location} -> s3Location) (\s@CustomPluginLocation' {} a -> s {s3Location = a} :: CustomPluginLocation)

instance Prelude.Hashable CustomPluginLocation

instance Prelude.NFData CustomPluginLocation

instance Core.ToJSON CustomPluginLocation where
  toJSON CustomPluginLocation' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("s3Location" Core..= s3Location)]
      )
