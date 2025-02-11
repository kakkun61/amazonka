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
-- Module      : Network.AWS.CodeArtifact.Types.PackageVersionError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeArtifact.Types.PackageVersionError where

import Network.AWS.CodeArtifact.Types.PackageVersionErrorCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An error associated with package.
--
-- /See:/ 'newPackageVersionError' smart constructor.
data PackageVersionError = PackageVersionError'
  { -- | The error code associated with the error. Valid error codes are:
    --
    -- -   @ALREADY_EXISTS@
    --
    -- -   @MISMATCHED_REVISION@
    --
    -- -   @MISMATCHED_STATUS@
    --
    -- -   @NOT_ALLOWED@
    --
    -- -   @NOT_FOUND@
    --
    -- -   @SKIPPED@
    errorCode :: Prelude.Maybe PackageVersionErrorCode,
    -- | The error message associated with the error.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageVersionError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorCode', 'packageVersionError_errorCode' - The error code associated with the error. Valid error codes are:
--
-- -   @ALREADY_EXISTS@
--
-- -   @MISMATCHED_REVISION@
--
-- -   @MISMATCHED_STATUS@
--
-- -   @NOT_ALLOWED@
--
-- -   @NOT_FOUND@
--
-- -   @SKIPPED@
--
-- 'errorMessage', 'packageVersionError_errorMessage' - The error message associated with the error.
newPackageVersionError ::
  PackageVersionError
newPackageVersionError =
  PackageVersionError'
    { errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The error code associated with the error. Valid error codes are:
--
-- -   @ALREADY_EXISTS@
--
-- -   @MISMATCHED_REVISION@
--
-- -   @MISMATCHED_STATUS@
--
-- -   @NOT_ALLOWED@
--
-- -   @NOT_FOUND@
--
-- -   @SKIPPED@
packageVersionError_errorCode :: Lens.Lens' PackageVersionError (Prelude.Maybe PackageVersionErrorCode)
packageVersionError_errorCode = Lens.lens (\PackageVersionError' {errorCode} -> errorCode) (\s@PackageVersionError' {} a -> s {errorCode = a} :: PackageVersionError)

-- | The error message associated with the error.
packageVersionError_errorMessage :: Lens.Lens' PackageVersionError (Prelude.Maybe Prelude.Text)
packageVersionError_errorMessage = Lens.lens (\PackageVersionError' {errorMessage} -> errorMessage) (\s@PackageVersionError' {} a -> s {errorMessage = a} :: PackageVersionError)

instance Core.FromJSON PackageVersionError where
  parseJSON =
    Core.withObject
      "PackageVersionError"
      ( \x ->
          PackageVersionError'
            Prelude.<$> (x Core..:? "errorCode")
            Prelude.<*> (x Core..:? "errorMessage")
      )

instance Prelude.Hashable PackageVersionError

instance Prelude.NFData PackageVersionError
