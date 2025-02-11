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
-- Module      : Network.AWS.LicenseManager.Types.S3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.S3Location where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details of the S3 bucket that report generator reports are published to.
--
-- /See:/ 'newS3Location' smart constructor.
data S3Location = S3Location'
  { -- | Name of the S3 bucket reports are published to.
    bucket :: Prelude.Maybe Prelude.Text,
    -- | Prefix of the S3 bucket reports are published to.
    keyPrefix :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucket', 's3Location_bucket' - Name of the S3 bucket reports are published to.
--
-- 'keyPrefix', 's3Location_keyPrefix' - Prefix of the S3 bucket reports are published to.
newS3Location ::
  S3Location
newS3Location =
  S3Location'
    { bucket = Prelude.Nothing,
      keyPrefix = Prelude.Nothing
    }

-- | Name of the S3 bucket reports are published to.
s3Location_bucket :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_bucket = Lens.lens (\S3Location' {bucket} -> bucket) (\s@S3Location' {} a -> s {bucket = a} :: S3Location)

-- | Prefix of the S3 bucket reports are published to.
s3Location_keyPrefix :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_keyPrefix = Lens.lens (\S3Location' {keyPrefix} -> keyPrefix) (\s@S3Location' {} a -> s {keyPrefix = a} :: S3Location)

instance Core.FromJSON S3Location where
  parseJSON =
    Core.withObject
      "S3Location"
      ( \x ->
          S3Location'
            Prelude.<$> (x Core..:? "bucket")
            Prelude.<*> (x Core..:? "keyPrefix")
      )

instance Prelude.Hashable S3Location

instance Prelude.NFData S3Location
