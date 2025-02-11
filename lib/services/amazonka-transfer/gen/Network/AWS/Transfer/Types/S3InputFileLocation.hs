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
-- Module      : Network.AWS.Transfer.Types.S3InputFileLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.S3InputFileLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the customer input S3 file location. If it is used inside
-- @copyStepDetails.DestinationFileLocation@, it should be the S3 copy
-- destination.
--
-- You need to provide the bucket and key. The key can represent either a
-- path or a file. This is determined by whether or not you end the key
-- value with the forward slash (\/) character. If the final character is
-- \"\/\", then your file is copied to the folder, and its name does not
-- change. If, rather, the final character is alphanumeric, your uploaded
-- file is renamed to the path value. In this case, if a file with that
-- name already exists, it is overwritten.
--
-- For example, if your path is @shared-files\/bob\/@, your uploaded files
-- are copied to the @shared-files\/bob\/@, folder. If your path is
-- @shared-files\/today@, each uploaded file is copied to the
-- @shared-files@ folder and named @today@: each upload overwrites the
-- previous version of the /bob/ file.
--
-- /See:/ 'newS3InputFileLocation' smart constructor.
data S3InputFileLocation = S3InputFileLocation'
  { -- | Specifies the S3 bucket for the customer input file.
    bucket :: Prelude.Maybe Prelude.Text,
    -- | The name assigned to the file when it was created in S3. You use the
    -- object key to retrieve the object.
    key :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3InputFileLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucket', 's3InputFileLocation_bucket' - Specifies the S3 bucket for the customer input file.
--
-- 'key', 's3InputFileLocation_key' - The name assigned to the file when it was created in S3. You use the
-- object key to retrieve the object.
newS3InputFileLocation ::
  S3InputFileLocation
newS3InputFileLocation =
  S3InputFileLocation'
    { bucket = Prelude.Nothing,
      key = Prelude.Nothing
    }

-- | Specifies the S3 bucket for the customer input file.
s3InputFileLocation_bucket :: Lens.Lens' S3InputFileLocation (Prelude.Maybe Prelude.Text)
s3InputFileLocation_bucket = Lens.lens (\S3InputFileLocation' {bucket} -> bucket) (\s@S3InputFileLocation' {} a -> s {bucket = a} :: S3InputFileLocation)

-- | The name assigned to the file when it was created in S3. You use the
-- object key to retrieve the object.
s3InputFileLocation_key :: Lens.Lens' S3InputFileLocation (Prelude.Maybe Prelude.Text)
s3InputFileLocation_key = Lens.lens (\S3InputFileLocation' {key} -> key) (\s@S3InputFileLocation' {} a -> s {key = a} :: S3InputFileLocation)

instance Core.FromJSON S3InputFileLocation where
  parseJSON =
    Core.withObject
      "S3InputFileLocation"
      ( \x ->
          S3InputFileLocation'
            Prelude.<$> (x Core..:? "Bucket") Prelude.<*> (x Core..:? "Key")
      )

instance Prelude.Hashable S3InputFileLocation

instance Prelude.NFData S3InputFileLocation

instance Core.ToJSON S3InputFileLocation where
  toJSON S3InputFileLocation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Bucket" Core..=) Prelude.<$> bucket,
            ("Key" Core..=) Prelude.<$> key
          ]
      )
