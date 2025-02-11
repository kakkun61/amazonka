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
-- Module      : Network.AWS.Transfer.Types.FileLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.FileLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Transfer.Types.EfsFileLocation
import Network.AWS.Transfer.Types.S3FileLocation

-- | Specifies the Amazon S3 or EFS file details to be used in the step.
--
-- /See:/ 'newFileLocation' smart constructor.
data FileLocation = FileLocation'
  { -- | Specifies the Amazon EFS ID and the path for the file being used.
    efsFileLocation :: Prelude.Maybe EfsFileLocation,
    -- | Specifies the S3 details for the file being used, such as bucket, Etag,
    -- and so forth.
    s3FileLocation :: Prelude.Maybe S3FileLocation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FileLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'efsFileLocation', 'fileLocation_efsFileLocation' - Specifies the Amazon EFS ID and the path for the file being used.
--
-- 's3FileLocation', 'fileLocation_s3FileLocation' - Specifies the S3 details for the file being used, such as bucket, Etag,
-- and so forth.
newFileLocation ::
  FileLocation
newFileLocation =
  FileLocation'
    { efsFileLocation = Prelude.Nothing,
      s3FileLocation = Prelude.Nothing
    }

-- | Specifies the Amazon EFS ID and the path for the file being used.
fileLocation_efsFileLocation :: Lens.Lens' FileLocation (Prelude.Maybe EfsFileLocation)
fileLocation_efsFileLocation = Lens.lens (\FileLocation' {efsFileLocation} -> efsFileLocation) (\s@FileLocation' {} a -> s {efsFileLocation = a} :: FileLocation)

-- | Specifies the S3 details for the file being used, such as bucket, Etag,
-- and so forth.
fileLocation_s3FileLocation :: Lens.Lens' FileLocation (Prelude.Maybe S3FileLocation)
fileLocation_s3FileLocation = Lens.lens (\FileLocation' {s3FileLocation} -> s3FileLocation) (\s@FileLocation' {} a -> s {s3FileLocation = a} :: FileLocation)

instance Core.FromJSON FileLocation where
  parseJSON =
    Core.withObject
      "FileLocation"
      ( \x ->
          FileLocation'
            Prelude.<$> (x Core..:? "EfsFileLocation")
            Prelude.<*> (x Core..:? "S3FileLocation")
      )

instance Prelude.Hashable FileLocation

instance Prelude.NFData FileLocation
