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
-- Module      : Network.AWS.FraudDetector.DeleteOutcome
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an outcome.
--
-- You cannot delete an outcome that is used in a rule version.
--
-- When you delete an outcome, Amazon Fraud Detector permanently deletes
-- that outcome and the data is no longer stored in Amazon Fraud Detector.
module Network.AWS.FraudDetector.DeleteOutcome
  ( -- * Creating a Request
    DeleteOutcome (..),
    newDeleteOutcome,

    -- * Request Lenses
    deleteOutcome_name,

    -- * Destructuring the Response
    DeleteOutcomeResponse (..),
    newDeleteOutcomeResponse,

    -- * Response Lenses
    deleteOutcomeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteOutcome' smart constructor.
data DeleteOutcome = DeleteOutcome'
  { -- | The name of the outcome to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteOutcome' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteOutcome_name' - The name of the outcome to delete.
newDeleteOutcome ::
  -- | 'name'
  Prelude.Text ->
  DeleteOutcome
newDeleteOutcome pName_ =
  DeleteOutcome' {name = pName_}

-- | The name of the outcome to delete.
deleteOutcome_name :: Lens.Lens' DeleteOutcome Prelude.Text
deleteOutcome_name = Lens.lens (\DeleteOutcome' {name} -> name) (\s@DeleteOutcome' {} a -> s {name = a} :: DeleteOutcome)

instance Core.AWSRequest DeleteOutcome where
  type
    AWSResponse DeleteOutcome =
      DeleteOutcomeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteOutcomeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteOutcome

instance Prelude.NFData DeleteOutcome

instance Core.ToHeaders DeleteOutcome where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteOutcome" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteOutcome where
  toJSON DeleteOutcome' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath DeleteOutcome where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteOutcome where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteOutcomeResponse' smart constructor.
data DeleteOutcomeResponse = DeleteOutcomeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteOutcomeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteOutcomeResponse_httpStatus' - The response's http status code.
newDeleteOutcomeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteOutcomeResponse
newDeleteOutcomeResponse pHttpStatus_ =
  DeleteOutcomeResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteOutcomeResponse_httpStatus :: Lens.Lens' DeleteOutcomeResponse Prelude.Int
deleteOutcomeResponse_httpStatus = Lens.lens (\DeleteOutcomeResponse' {httpStatus} -> httpStatus) (\s@DeleteOutcomeResponse' {} a -> s {httpStatus = a} :: DeleteOutcomeResponse)

instance Prelude.NFData DeleteOutcomeResponse
