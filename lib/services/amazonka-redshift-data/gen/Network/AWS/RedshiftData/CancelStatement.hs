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
-- Module      : Network.AWS.RedshiftData.CancelStatement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a running query. To be canceled, a query must be running.
module Network.AWS.RedshiftData.CancelStatement
  ( -- * Creating a Request
    CancelStatement (..),
    newCancelStatement,

    -- * Request Lenses
    cancelStatement_id,

    -- * Destructuring the Response
    CancelStatementResponse (..),
    newCancelStatementResponse,

    -- * Response Lenses
    cancelStatementResponse_status,
    cancelStatementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RedshiftData.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelStatement' smart constructor.
data CancelStatement = CancelStatement'
  { -- | The identifier of the SQL statement to cancel. This value is a
    -- universally unique identifier (UUID) generated by Amazon Redshift Data
    -- API. This identifier is returned by @BatchExecuteStatment@,
    -- @ExecuteStatment@, and @ListStatements@.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelStatement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'cancelStatement_id' - The identifier of the SQL statement to cancel. This value is a
-- universally unique identifier (UUID) generated by Amazon Redshift Data
-- API. This identifier is returned by @BatchExecuteStatment@,
-- @ExecuteStatment@, and @ListStatements@.
newCancelStatement ::
  -- | 'id'
  Prelude.Text ->
  CancelStatement
newCancelStatement pId_ = CancelStatement' {id = pId_}

-- | The identifier of the SQL statement to cancel. This value is a
-- universally unique identifier (UUID) generated by Amazon Redshift Data
-- API. This identifier is returned by @BatchExecuteStatment@,
-- @ExecuteStatment@, and @ListStatements@.
cancelStatement_id :: Lens.Lens' CancelStatement Prelude.Text
cancelStatement_id = Lens.lens (\CancelStatement' {id} -> id) (\s@CancelStatement' {} a -> s {id = a} :: CancelStatement)

instance Core.AWSRequest CancelStatement where
  type
    AWSResponse CancelStatement =
      CancelStatementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelStatementResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelStatement

instance Prelude.NFData CancelStatement

instance Core.ToHeaders CancelStatement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RedshiftData.CancelStatement" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelStatement where
  toJSON CancelStatement' {..} =
    Core.object
      (Prelude.catMaybes [Prelude.Just ("Id" Core..= id)])

instance Core.ToPath CancelStatement where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelStatement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelStatementResponse' smart constructor.
data CancelStatementResponse = CancelStatementResponse'
  { -- | A value that indicates whether the cancel statement succeeded (true).
    status :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelStatementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'cancelStatementResponse_status' - A value that indicates whether the cancel statement succeeded (true).
--
-- 'httpStatus', 'cancelStatementResponse_httpStatus' - The response's http status code.
newCancelStatementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelStatementResponse
newCancelStatementResponse pHttpStatus_ =
  CancelStatementResponse'
    { status = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A value that indicates whether the cancel statement succeeded (true).
cancelStatementResponse_status :: Lens.Lens' CancelStatementResponse (Prelude.Maybe Prelude.Bool)
cancelStatementResponse_status = Lens.lens (\CancelStatementResponse' {status} -> status) (\s@CancelStatementResponse' {} a -> s {status = a} :: CancelStatementResponse)

-- | The response's http status code.
cancelStatementResponse_httpStatus :: Lens.Lens' CancelStatementResponse Prelude.Int
cancelStatementResponse_httpStatus = Lens.lens (\CancelStatementResponse' {httpStatus} -> httpStatus) (\s@CancelStatementResponse' {} a -> s {httpStatus = a} :: CancelStatementResponse)

instance Prelude.NFData CancelStatementResponse
