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
-- Module      : Network.AWS.CodeArtifact.Types.RepositoryExternalConnectionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeArtifact.Types.RepositoryExternalConnectionInfo where

import Network.AWS.CodeArtifact.Types.ExternalConnectionStatus
import Network.AWS.CodeArtifact.Types.PackageFormat
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the external connection of a repository.
--
-- /See:/ 'newRepositoryExternalConnectionInfo' smart constructor.
data RepositoryExternalConnectionInfo = RepositoryExternalConnectionInfo'
  { -- | The name of the external connection associated with a repository.
    externalConnectionName :: Prelude.Maybe Prelude.Text,
    -- | The status of the external connection of a repository. There is one
    -- valid value, @Available@.
    status :: Prelude.Maybe ExternalConnectionStatus,
    -- | The package format associated with a repository\'s external connection.
    -- The valid package formats are:
    --
    -- -   @npm@: A Node Package Manager (npm) package.
    --
    -- -   @pypi@: A Python Package Index (PyPI) package.
    --
    -- -   @maven@: A Maven package that contains compiled code in a
    --     distributable format, such as a JAR file.
    packageFormat :: Prelude.Maybe PackageFormat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryExternalConnectionInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'externalConnectionName', 'repositoryExternalConnectionInfo_externalConnectionName' - The name of the external connection associated with a repository.
--
-- 'status', 'repositoryExternalConnectionInfo_status' - The status of the external connection of a repository. There is one
-- valid value, @Available@.
--
-- 'packageFormat', 'repositoryExternalConnectionInfo_packageFormat' - The package format associated with a repository\'s external connection.
-- The valid package formats are:
--
-- -   @npm@: A Node Package Manager (npm) package.
--
-- -   @pypi@: A Python Package Index (PyPI) package.
--
-- -   @maven@: A Maven package that contains compiled code in a
--     distributable format, such as a JAR file.
newRepositoryExternalConnectionInfo ::
  RepositoryExternalConnectionInfo
newRepositoryExternalConnectionInfo =
  RepositoryExternalConnectionInfo'
    { externalConnectionName =
        Prelude.Nothing,
      status = Prelude.Nothing,
      packageFormat = Prelude.Nothing
    }

-- | The name of the external connection associated with a repository.
repositoryExternalConnectionInfo_externalConnectionName :: Lens.Lens' RepositoryExternalConnectionInfo (Prelude.Maybe Prelude.Text)
repositoryExternalConnectionInfo_externalConnectionName = Lens.lens (\RepositoryExternalConnectionInfo' {externalConnectionName} -> externalConnectionName) (\s@RepositoryExternalConnectionInfo' {} a -> s {externalConnectionName = a} :: RepositoryExternalConnectionInfo)

-- | The status of the external connection of a repository. There is one
-- valid value, @Available@.
repositoryExternalConnectionInfo_status :: Lens.Lens' RepositoryExternalConnectionInfo (Prelude.Maybe ExternalConnectionStatus)
repositoryExternalConnectionInfo_status = Lens.lens (\RepositoryExternalConnectionInfo' {status} -> status) (\s@RepositoryExternalConnectionInfo' {} a -> s {status = a} :: RepositoryExternalConnectionInfo)

-- | The package format associated with a repository\'s external connection.
-- The valid package formats are:
--
-- -   @npm@: A Node Package Manager (npm) package.
--
-- -   @pypi@: A Python Package Index (PyPI) package.
--
-- -   @maven@: A Maven package that contains compiled code in a
--     distributable format, such as a JAR file.
repositoryExternalConnectionInfo_packageFormat :: Lens.Lens' RepositoryExternalConnectionInfo (Prelude.Maybe PackageFormat)
repositoryExternalConnectionInfo_packageFormat = Lens.lens (\RepositoryExternalConnectionInfo' {packageFormat} -> packageFormat) (\s@RepositoryExternalConnectionInfo' {} a -> s {packageFormat = a} :: RepositoryExternalConnectionInfo)

instance
  Core.FromJSON
    RepositoryExternalConnectionInfo
  where
  parseJSON =
    Core.withObject
      "RepositoryExternalConnectionInfo"
      ( \x ->
          RepositoryExternalConnectionInfo'
            Prelude.<$> (x Core..:? "externalConnectionName")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "packageFormat")
      )

instance
  Prelude.Hashable
    RepositoryExternalConnectionInfo

instance
  Prelude.NFData
    RepositoryExternalConnectionInfo
