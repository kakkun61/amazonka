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
-- Module      : Network.AWS.AccessAnalyzer.UpdateFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status for the specified findings.
module Network.AWS.AccessAnalyzer.UpdateFindings
  ( -- * Creating a Request
    UpdateFindings (..),
    newUpdateFindings,

    -- * Request Lenses
    updateFindings_clientToken,
    updateFindings_ids,
    updateFindings_resourceArn,
    updateFindings_analyzerArn,
    updateFindings_status,

    -- * Destructuring the Response
    UpdateFindingsResponse (..),
    newUpdateFindingsResponse,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Updates findings with the new values provided in the request.
--
-- /See:/ 'newUpdateFindings' smart constructor.
data UpdateFindings = UpdateFindings'
  { -- | A client token.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the findings to update.
    ids :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the resource identified in the finding.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
    -- that generated the findings to update.
    analyzerArn :: Prelude.Text,
    -- | The state represents the action to take to update the finding Status.
    -- Use @ARCHIVE@ to change an Active finding to an Archived finding. Use
    -- @ACTIVE@ to change an Archived finding to an Active finding.
    status :: FindingStatusUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateFindings_clientToken' - A client token.
--
-- 'ids', 'updateFindings_ids' - The IDs of the findings to update.
--
-- 'resourceArn', 'updateFindings_resourceArn' - The ARN of the resource identified in the finding.
--
-- 'analyzerArn', 'updateFindings_analyzerArn' - The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- that generated the findings to update.
--
-- 'status', 'updateFindings_status' - The state represents the action to take to update the finding Status.
-- Use @ARCHIVE@ to change an Active finding to an Archived finding. Use
-- @ACTIVE@ to change an Archived finding to an Active finding.
newUpdateFindings ::
  -- | 'analyzerArn'
  Prelude.Text ->
  -- | 'status'
  FindingStatusUpdate ->
  UpdateFindings
newUpdateFindings pAnalyzerArn_ pStatus_ =
  UpdateFindings'
    { clientToken = Prelude.Nothing,
      ids = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      analyzerArn = pAnalyzerArn_,
      status = pStatus_
    }

-- | A client token.
updateFindings_clientToken :: Lens.Lens' UpdateFindings (Prelude.Maybe Prelude.Text)
updateFindings_clientToken = Lens.lens (\UpdateFindings' {clientToken} -> clientToken) (\s@UpdateFindings' {} a -> s {clientToken = a} :: UpdateFindings)

-- | The IDs of the findings to update.
updateFindings_ids :: Lens.Lens' UpdateFindings (Prelude.Maybe [Prelude.Text])
updateFindings_ids = Lens.lens (\UpdateFindings' {ids} -> ids) (\s@UpdateFindings' {} a -> s {ids = a} :: UpdateFindings) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the resource identified in the finding.
updateFindings_resourceArn :: Lens.Lens' UpdateFindings (Prelude.Maybe Prelude.Text)
updateFindings_resourceArn = Lens.lens (\UpdateFindings' {resourceArn} -> resourceArn) (\s@UpdateFindings' {} a -> s {resourceArn = a} :: UpdateFindings)

-- | The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- that generated the findings to update.
updateFindings_analyzerArn :: Lens.Lens' UpdateFindings Prelude.Text
updateFindings_analyzerArn = Lens.lens (\UpdateFindings' {analyzerArn} -> analyzerArn) (\s@UpdateFindings' {} a -> s {analyzerArn = a} :: UpdateFindings)

-- | The state represents the action to take to update the finding Status.
-- Use @ARCHIVE@ to change an Active finding to an Archived finding. Use
-- @ACTIVE@ to change an Archived finding to an Active finding.
updateFindings_status :: Lens.Lens' UpdateFindings FindingStatusUpdate
updateFindings_status = Lens.lens (\UpdateFindings' {status} -> status) (\s@UpdateFindings' {} a -> s {status = a} :: UpdateFindings)

instance Core.AWSRequest UpdateFindings where
  type
    AWSResponse UpdateFindings =
      UpdateFindingsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull UpdateFindingsResponse'

instance Prelude.Hashable UpdateFindings

instance Prelude.NFData UpdateFindings

instance Core.ToHeaders UpdateFindings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFindings where
  toJSON UpdateFindings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("ids" Core..=) Prelude.<$> ids,
            ("resourceArn" Core..=) Prelude.<$> resourceArn,
            Prelude.Just ("analyzerArn" Core..= analyzerArn),
            Prelude.Just ("status" Core..= status)
          ]
      )

instance Core.ToPath UpdateFindings where
  toPath = Prelude.const "/finding"

instance Core.ToQuery UpdateFindings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFindingsResponse' smart constructor.
data UpdateFindingsResponse = UpdateFindingsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateFindingsResponse ::
  UpdateFindingsResponse
newUpdateFindingsResponse = UpdateFindingsResponse'

instance Prelude.NFData UpdateFindingsResponse
