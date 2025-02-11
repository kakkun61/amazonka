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
-- Module      : Network.AWS.WellArchitected.DeleteWorkloadShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a workload share.
module Network.AWS.WellArchitected.DeleteWorkloadShare
  ( -- * Creating a Request
    DeleteWorkloadShare (..),
    newDeleteWorkloadShare,

    -- * Request Lenses
    deleteWorkloadShare_shareId,
    deleteWorkloadShare_workloadId,
    deleteWorkloadShare_clientRequestToken,

    -- * Destructuring the Response
    DeleteWorkloadShareResponse (..),
    newDeleteWorkloadShareResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for Delete Workload Share
--
-- /See:/ 'newDeleteWorkloadShare' smart constructor.
data DeleteWorkloadShare = DeleteWorkloadShare'
  { shareId :: Prelude.Text,
    workloadId :: Prelude.Text,
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkloadShare' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareId', 'deleteWorkloadShare_shareId' - Undocumented member.
--
-- 'workloadId', 'deleteWorkloadShare_workloadId' - Undocumented member.
--
-- 'clientRequestToken', 'deleteWorkloadShare_clientRequestToken' - Undocumented member.
newDeleteWorkloadShare ::
  -- | 'shareId'
  Prelude.Text ->
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  DeleteWorkloadShare
newDeleteWorkloadShare
  pShareId_
  pWorkloadId_
  pClientRequestToken_ =
    DeleteWorkloadShare'
      { shareId = pShareId_,
        workloadId = pWorkloadId_,
        clientRequestToken = pClientRequestToken_
      }

-- | Undocumented member.
deleteWorkloadShare_shareId :: Lens.Lens' DeleteWorkloadShare Prelude.Text
deleteWorkloadShare_shareId = Lens.lens (\DeleteWorkloadShare' {shareId} -> shareId) (\s@DeleteWorkloadShare' {} a -> s {shareId = a} :: DeleteWorkloadShare)

-- | Undocumented member.
deleteWorkloadShare_workloadId :: Lens.Lens' DeleteWorkloadShare Prelude.Text
deleteWorkloadShare_workloadId = Lens.lens (\DeleteWorkloadShare' {workloadId} -> workloadId) (\s@DeleteWorkloadShare' {} a -> s {workloadId = a} :: DeleteWorkloadShare)

-- | Undocumented member.
deleteWorkloadShare_clientRequestToken :: Lens.Lens' DeleteWorkloadShare Prelude.Text
deleteWorkloadShare_clientRequestToken = Lens.lens (\DeleteWorkloadShare' {clientRequestToken} -> clientRequestToken) (\s@DeleteWorkloadShare' {} a -> s {clientRequestToken = a} :: DeleteWorkloadShare)

instance Core.AWSRequest DeleteWorkloadShare where
  type
    AWSResponse DeleteWorkloadShare =
      DeleteWorkloadShareResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteWorkloadShareResponse'

instance Prelude.Hashable DeleteWorkloadShare

instance Prelude.NFData DeleteWorkloadShare

instance Core.ToHeaders DeleteWorkloadShare where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteWorkloadShare where
  toPath DeleteWorkloadShare' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/shares/",
        Core.toBS shareId
      ]

instance Core.ToQuery DeleteWorkloadShare where
  toQuery DeleteWorkloadShare' {..} =
    Prelude.mconcat
      ["ClientRequestToken" Core.=: clientRequestToken]

-- | /See:/ 'newDeleteWorkloadShareResponse' smart constructor.
data DeleteWorkloadShareResponse = DeleteWorkloadShareResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkloadShareResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteWorkloadShareResponse ::
  DeleteWorkloadShareResponse
newDeleteWorkloadShareResponse =
  DeleteWorkloadShareResponse'

instance Prelude.NFData DeleteWorkloadShareResponse
