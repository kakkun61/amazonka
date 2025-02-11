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
-- Module      : Network.AWS.SavingsPlans.DeleteQueuedSavingsPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the queued purchase for the specified Savings Plan.
module Network.AWS.SavingsPlans.DeleteQueuedSavingsPlan
  ( -- * Creating a Request
    DeleteQueuedSavingsPlan (..),
    newDeleteQueuedSavingsPlan,

    -- * Request Lenses
    deleteQueuedSavingsPlan_savingsPlanId,

    -- * Destructuring the Response
    DeleteQueuedSavingsPlanResponse (..),
    newDeleteQueuedSavingsPlanResponse,

    -- * Response Lenses
    deleteQueuedSavingsPlanResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SavingsPlans.Types

-- | /See:/ 'newDeleteQueuedSavingsPlan' smart constructor.
data DeleteQueuedSavingsPlan = DeleteQueuedSavingsPlan'
  { -- | The ID of the Savings Plan.
    savingsPlanId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteQueuedSavingsPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'savingsPlanId', 'deleteQueuedSavingsPlan_savingsPlanId' - The ID of the Savings Plan.
newDeleteQueuedSavingsPlan ::
  -- | 'savingsPlanId'
  Prelude.Text ->
  DeleteQueuedSavingsPlan
newDeleteQueuedSavingsPlan pSavingsPlanId_ =
  DeleteQueuedSavingsPlan'
    { savingsPlanId =
        pSavingsPlanId_
    }

-- | The ID of the Savings Plan.
deleteQueuedSavingsPlan_savingsPlanId :: Lens.Lens' DeleteQueuedSavingsPlan Prelude.Text
deleteQueuedSavingsPlan_savingsPlanId = Lens.lens (\DeleteQueuedSavingsPlan' {savingsPlanId} -> savingsPlanId) (\s@DeleteQueuedSavingsPlan' {} a -> s {savingsPlanId = a} :: DeleteQueuedSavingsPlan)

instance Core.AWSRequest DeleteQueuedSavingsPlan where
  type
    AWSResponse DeleteQueuedSavingsPlan =
      DeleteQueuedSavingsPlanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteQueuedSavingsPlanResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteQueuedSavingsPlan

instance Prelude.NFData DeleteQueuedSavingsPlan

instance Core.ToHeaders DeleteQueuedSavingsPlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteQueuedSavingsPlan where
  toJSON DeleteQueuedSavingsPlan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("savingsPlanId" Core..= savingsPlanId)
          ]
      )

instance Core.ToPath DeleteQueuedSavingsPlan where
  toPath = Prelude.const "/DeleteQueuedSavingsPlan"

instance Core.ToQuery DeleteQueuedSavingsPlan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteQueuedSavingsPlanResponse' smart constructor.
data DeleteQueuedSavingsPlanResponse = DeleteQueuedSavingsPlanResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteQueuedSavingsPlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteQueuedSavingsPlanResponse_httpStatus' - The response's http status code.
newDeleteQueuedSavingsPlanResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteQueuedSavingsPlanResponse
newDeleteQueuedSavingsPlanResponse pHttpStatus_ =
  DeleteQueuedSavingsPlanResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteQueuedSavingsPlanResponse_httpStatus :: Lens.Lens' DeleteQueuedSavingsPlanResponse Prelude.Int
deleteQueuedSavingsPlanResponse_httpStatus = Lens.lens (\DeleteQueuedSavingsPlanResponse' {httpStatus} -> httpStatus) (\s@DeleteQueuedSavingsPlanResponse' {} a -> s {httpStatus = a} :: DeleteQueuedSavingsPlanResponse)

instance
  Prelude.NFData
    DeleteQueuedSavingsPlanResponse
