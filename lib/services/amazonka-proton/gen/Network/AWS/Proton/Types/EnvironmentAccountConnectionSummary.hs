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
-- Module      : Network.AWS.Proton.Types.EnvironmentAccountConnectionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Proton.Types.EnvironmentAccountConnectionSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types.EnvironmentAccountConnectionStatus

-- | A summary of the environment account connection detail data.
--
-- /See:/ 'newEnvironmentAccountConnectionSummary' smart constructor.
data EnvironmentAccountConnectionSummary = EnvironmentAccountConnectionSummary'
  { -- | The Amazon Resource Name (ARN) of the environment account connection.
    arn :: Prelude.Text,
    -- | The ID of the environment account that\'s connected to the environment
    -- account connection.
    environmentAccountId :: Prelude.Text,
    -- | The name of the environment that\'s associated with the environment
    -- account connection.
    environmentName :: Prelude.Text,
    -- | The ID of the environment account connection.
    id :: Prelude.Text,
    -- | The time when the environment account connection was last modified.
    lastModifiedAt :: Core.POSIX,
    -- | The ID of the management account that\'s connected to the environment
    -- account connection.
    managementAccountId :: Prelude.Text,
    -- | The time when the environment account connection request was made.
    requestedAt :: Core.POSIX,
    -- | The IAM service role that\'s associated with the environment account
    -- connection.
    roleArn :: Prelude.Text,
    -- | The status of the environment account connection.
    status :: EnvironmentAccountConnectionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentAccountConnectionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'environmentAccountConnectionSummary_arn' - The Amazon Resource Name (ARN) of the environment account connection.
--
-- 'environmentAccountId', 'environmentAccountConnectionSummary_environmentAccountId' - The ID of the environment account that\'s connected to the environment
-- account connection.
--
-- 'environmentName', 'environmentAccountConnectionSummary_environmentName' - The name of the environment that\'s associated with the environment
-- account connection.
--
-- 'id', 'environmentAccountConnectionSummary_id' - The ID of the environment account connection.
--
-- 'lastModifiedAt', 'environmentAccountConnectionSummary_lastModifiedAt' - The time when the environment account connection was last modified.
--
-- 'managementAccountId', 'environmentAccountConnectionSummary_managementAccountId' - The ID of the management account that\'s connected to the environment
-- account connection.
--
-- 'requestedAt', 'environmentAccountConnectionSummary_requestedAt' - The time when the environment account connection request was made.
--
-- 'roleArn', 'environmentAccountConnectionSummary_roleArn' - The IAM service role that\'s associated with the environment account
-- connection.
--
-- 'status', 'environmentAccountConnectionSummary_status' - The status of the environment account connection.
newEnvironmentAccountConnectionSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'environmentAccountId'
  Prelude.Text ->
  -- | 'environmentName'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  -- | 'lastModifiedAt'
  Prelude.UTCTime ->
  -- | 'managementAccountId'
  Prelude.Text ->
  -- | 'requestedAt'
  Prelude.UTCTime ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'status'
  EnvironmentAccountConnectionStatus ->
  EnvironmentAccountConnectionSummary
newEnvironmentAccountConnectionSummary
  pArn_
  pEnvironmentAccountId_
  pEnvironmentName_
  pId_
  pLastModifiedAt_
  pManagementAccountId_
  pRequestedAt_
  pRoleArn_
  pStatus_ =
    EnvironmentAccountConnectionSummary'
      { arn = pArn_,
        environmentAccountId =
          pEnvironmentAccountId_,
        environmentName = pEnvironmentName_,
        id = pId_,
        lastModifiedAt =
          Core._Time Lens.# pLastModifiedAt_,
        managementAccountId =
          pManagementAccountId_,
        requestedAt =
          Core._Time Lens.# pRequestedAt_,
        roleArn = pRoleArn_,
        status = pStatus_
      }

-- | The Amazon Resource Name (ARN) of the environment account connection.
environmentAccountConnectionSummary_arn :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_arn = Lens.lens (\EnvironmentAccountConnectionSummary' {arn} -> arn) (\s@EnvironmentAccountConnectionSummary' {} a -> s {arn = a} :: EnvironmentAccountConnectionSummary)

-- | The ID of the environment account that\'s connected to the environment
-- account connection.
environmentAccountConnectionSummary_environmentAccountId :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_environmentAccountId = Lens.lens (\EnvironmentAccountConnectionSummary' {environmentAccountId} -> environmentAccountId) (\s@EnvironmentAccountConnectionSummary' {} a -> s {environmentAccountId = a} :: EnvironmentAccountConnectionSummary)

-- | The name of the environment that\'s associated with the environment
-- account connection.
environmentAccountConnectionSummary_environmentName :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_environmentName = Lens.lens (\EnvironmentAccountConnectionSummary' {environmentName} -> environmentName) (\s@EnvironmentAccountConnectionSummary' {} a -> s {environmentName = a} :: EnvironmentAccountConnectionSummary)

-- | The ID of the environment account connection.
environmentAccountConnectionSummary_id :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_id = Lens.lens (\EnvironmentAccountConnectionSummary' {id} -> id) (\s@EnvironmentAccountConnectionSummary' {} a -> s {id = a} :: EnvironmentAccountConnectionSummary)

-- | The time when the environment account connection was last modified.
environmentAccountConnectionSummary_lastModifiedAt :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.UTCTime
environmentAccountConnectionSummary_lastModifiedAt = Lens.lens (\EnvironmentAccountConnectionSummary' {lastModifiedAt} -> lastModifiedAt) (\s@EnvironmentAccountConnectionSummary' {} a -> s {lastModifiedAt = a} :: EnvironmentAccountConnectionSummary) Prelude.. Core._Time

-- | The ID of the management account that\'s connected to the environment
-- account connection.
environmentAccountConnectionSummary_managementAccountId :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_managementAccountId = Lens.lens (\EnvironmentAccountConnectionSummary' {managementAccountId} -> managementAccountId) (\s@EnvironmentAccountConnectionSummary' {} a -> s {managementAccountId = a} :: EnvironmentAccountConnectionSummary)

-- | The time when the environment account connection request was made.
environmentAccountConnectionSummary_requestedAt :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.UTCTime
environmentAccountConnectionSummary_requestedAt = Lens.lens (\EnvironmentAccountConnectionSummary' {requestedAt} -> requestedAt) (\s@EnvironmentAccountConnectionSummary' {} a -> s {requestedAt = a} :: EnvironmentAccountConnectionSummary) Prelude.. Core._Time

-- | The IAM service role that\'s associated with the environment account
-- connection.
environmentAccountConnectionSummary_roleArn :: Lens.Lens' EnvironmentAccountConnectionSummary Prelude.Text
environmentAccountConnectionSummary_roleArn = Lens.lens (\EnvironmentAccountConnectionSummary' {roleArn} -> roleArn) (\s@EnvironmentAccountConnectionSummary' {} a -> s {roleArn = a} :: EnvironmentAccountConnectionSummary)

-- | The status of the environment account connection.
environmentAccountConnectionSummary_status :: Lens.Lens' EnvironmentAccountConnectionSummary EnvironmentAccountConnectionStatus
environmentAccountConnectionSummary_status = Lens.lens (\EnvironmentAccountConnectionSummary' {status} -> status) (\s@EnvironmentAccountConnectionSummary' {} a -> s {status = a} :: EnvironmentAccountConnectionSummary)

instance
  Core.FromJSON
    EnvironmentAccountConnectionSummary
  where
  parseJSON =
    Core.withObject
      "EnvironmentAccountConnectionSummary"
      ( \x ->
          EnvironmentAccountConnectionSummary'
            Prelude.<$> (x Core..: "arn")
            Prelude.<*> (x Core..: "environmentAccountId")
            Prelude.<*> (x Core..: "environmentName")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "lastModifiedAt")
            Prelude.<*> (x Core..: "managementAccountId")
            Prelude.<*> (x Core..: "requestedAt")
            Prelude.<*> (x Core..: "roleArn")
            Prelude.<*> (x Core..: "status")
      )

instance
  Prelude.Hashable
    EnvironmentAccountConnectionSummary

instance
  Prelude.NFData
    EnvironmentAccountConnectionSummary
