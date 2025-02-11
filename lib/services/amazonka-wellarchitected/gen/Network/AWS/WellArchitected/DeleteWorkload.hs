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
-- Module      : Network.AWS.WellArchitected.DeleteWorkload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an existing workload.
module Network.AWS.WellArchitected.DeleteWorkload
  ( -- * Creating a Request
    DeleteWorkload (..),
    newDeleteWorkload,

    -- * Request Lenses
    deleteWorkload_workloadId,
    deleteWorkload_clientRequestToken,

    -- * Destructuring the Response
    DeleteWorkloadResponse (..),
    newDeleteWorkloadResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for workload deletion.
--
-- /See:/ 'newDeleteWorkload' smart constructor.
data DeleteWorkload = DeleteWorkload'
  { workloadId :: Prelude.Text,
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workloadId', 'deleteWorkload_workloadId' - Undocumented member.
--
-- 'clientRequestToken', 'deleteWorkload_clientRequestToken' - Undocumented member.
newDeleteWorkload ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  DeleteWorkload
newDeleteWorkload pWorkloadId_ pClientRequestToken_ =
  DeleteWorkload'
    { workloadId = pWorkloadId_,
      clientRequestToken = pClientRequestToken_
    }

-- | Undocumented member.
deleteWorkload_workloadId :: Lens.Lens' DeleteWorkload Prelude.Text
deleteWorkload_workloadId = Lens.lens (\DeleteWorkload' {workloadId} -> workloadId) (\s@DeleteWorkload' {} a -> s {workloadId = a} :: DeleteWorkload)

-- | Undocumented member.
deleteWorkload_clientRequestToken :: Lens.Lens' DeleteWorkload Prelude.Text
deleteWorkload_clientRequestToken = Lens.lens (\DeleteWorkload' {clientRequestToken} -> clientRequestToken) (\s@DeleteWorkload' {} a -> s {clientRequestToken = a} :: DeleteWorkload)

instance Core.AWSRequest DeleteWorkload where
  type
    AWSResponse DeleteWorkload =
      DeleteWorkloadResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteWorkloadResponse'

instance Prelude.Hashable DeleteWorkload

instance Prelude.NFData DeleteWorkload

instance Core.ToHeaders DeleteWorkload where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteWorkload where
  toPath DeleteWorkload' {..} =
    Prelude.mconcat
      ["/workloads/", Core.toBS workloadId]

instance Core.ToQuery DeleteWorkload where
  toQuery DeleteWorkload' {..} =
    Prelude.mconcat
      ["ClientRequestToken" Core.=: clientRequestToken]

-- | /See:/ 'newDeleteWorkloadResponse' smart constructor.
data DeleteWorkloadResponse = DeleteWorkloadResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkloadResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteWorkloadResponse ::
  DeleteWorkloadResponse
newDeleteWorkloadResponse = DeleteWorkloadResponse'

instance Prelude.NFData DeleteWorkloadResponse
