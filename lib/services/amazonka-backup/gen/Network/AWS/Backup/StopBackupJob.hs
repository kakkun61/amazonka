{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Backup.StopBackupJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to cancel a job to create a one-time backup of a resource.
module Network.AWS.Backup.StopBackupJob
  ( -- * Creating a Request
    StopBackupJob (..),
    newStopBackupJob,

    -- * Request Lenses
    stopBackupJob_backupJobId,

    -- * Destructuring the Response
    StopBackupJobResponse (..),
    newStopBackupJobResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopBackupJob' smart constructor.
data StopBackupJob = StopBackupJob'
  { -- | Uniquely identifies a request to Backup to back up a resource.
    backupJobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopBackupJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupJobId', 'stopBackupJob_backupJobId' - Uniquely identifies a request to Backup to back up a resource.
newStopBackupJob ::
  -- | 'backupJobId'
  Prelude.Text ->
  StopBackupJob
newStopBackupJob pBackupJobId_ =
  StopBackupJob' {backupJobId = pBackupJobId_}

-- | Uniquely identifies a request to Backup to back up a resource.
stopBackupJob_backupJobId :: Lens.Lens' StopBackupJob Prelude.Text
stopBackupJob_backupJobId = Lens.lens (\StopBackupJob' {backupJobId} -> backupJobId) (\s@StopBackupJob' {} a -> s {backupJobId = a} :: StopBackupJob)

instance Core.AWSRequest StopBackupJob where
  type
    AWSResponse StopBackupJob =
      StopBackupJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull StopBackupJobResponse'

instance Prelude.Hashable StopBackupJob

instance Prelude.NFData StopBackupJob

instance Core.ToHeaders StopBackupJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopBackupJob where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StopBackupJob where
  toPath StopBackupJob' {..} =
    Prelude.mconcat
      ["/backup-jobs/", Core.toBS backupJobId]

instance Core.ToQuery StopBackupJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopBackupJobResponse' smart constructor.
data StopBackupJobResponse = StopBackupJobResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopBackupJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStopBackupJobResponse ::
  StopBackupJobResponse
newStopBackupJobResponse = StopBackupJobResponse'

instance Prelude.NFData StopBackupJobResponse
