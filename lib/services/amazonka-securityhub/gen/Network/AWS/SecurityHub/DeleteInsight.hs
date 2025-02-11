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
-- Module      : Network.AWS.SecurityHub.DeleteInsight
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the insight specified by the @InsightArn@.
module Network.AWS.SecurityHub.DeleteInsight
  ( -- * Creating a Request
    DeleteInsight (..),
    newDeleteInsight,

    -- * Request Lenses
    deleteInsight_insightArn,

    -- * Destructuring the Response
    DeleteInsightResponse (..),
    newDeleteInsightResponse,

    -- * Response Lenses
    deleteInsightResponse_httpStatus,
    deleteInsightResponse_insightArn,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newDeleteInsight' smart constructor.
data DeleteInsight = DeleteInsight'
  { -- | The ARN of the insight to delete.
    insightArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInsight' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'insightArn', 'deleteInsight_insightArn' - The ARN of the insight to delete.
newDeleteInsight ::
  -- | 'insightArn'
  Prelude.Text ->
  DeleteInsight
newDeleteInsight pInsightArn_ =
  DeleteInsight' {insightArn = pInsightArn_}

-- | The ARN of the insight to delete.
deleteInsight_insightArn :: Lens.Lens' DeleteInsight Prelude.Text
deleteInsight_insightArn = Lens.lens (\DeleteInsight' {insightArn} -> insightArn) (\s@DeleteInsight' {} a -> s {insightArn = a} :: DeleteInsight)

instance Core.AWSRequest DeleteInsight where
  type
    AWSResponse DeleteInsight =
      DeleteInsightResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteInsightResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "InsightArn")
      )

instance Prelude.Hashable DeleteInsight

instance Prelude.NFData DeleteInsight

instance Core.ToHeaders DeleteInsight where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteInsight where
  toPath DeleteInsight' {..} =
    Prelude.mconcat
      ["/insights/", Core.toBS insightArn]

instance Core.ToQuery DeleteInsight where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteInsightResponse' smart constructor.
data DeleteInsightResponse = DeleteInsightResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the insight that was deleted.
    insightArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInsightResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteInsightResponse_httpStatus' - The response's http status code.
--
-- 'insightArn', 'deleteInsightResponse_insightArn' - The ARN of the insight that was deleted.
newDeleteInsightResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'insightArn'
  Prelude.Text ->
  DeleteInsightResponse
newDeleteInsightResponse pHttpStatus_ pInsightArn_ =
  DeleteInsightResponse'
    { httpStatus = pHttpStatus_,
      insightArn = pInsightArn_
    }

-- | The response's http status code.
deleteInsightResponse_httpStatus :: Lens.Lens' DeleteInsightResponse Prelude.Int
deleteInsightResponse_httpStatus = Lens.lens (\DeleteInsightResponse' {httpStatus} -> httpStatus) (\s@DeleteInsightResponse' {} a -> s {httpStatus = a} :: DeleteInsightResponse)

-- | The ARN of the insight that was deleted.
deleteInsightResponse_insightArn :: Lens.Lens' DeleteInsightResponse Prelude.Text
deleteInsightResponse_insightArn = Lens.lens (\DeleteInsightResponse' {insightArn} -> insightArn) (\s@DeleteInsightResponse' {} a -> s {insightArn = a} :: DeleteInsightResponse)

instance Prelude.NFData DeleteInsightResponse
