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
-- Module      : Network.AWS.MGN.TerminateTargetInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a job that terminates specific launched EC2 Test and Cutover
-- instances. This command will not work for any Source Server with a
-- lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.
module Network.AWS.MGN.TerminateTargetInstances
  ( -- * Creating a Request
    TerminateTargetInstances (..),
    newTerminateTargetInstances,

    -- * Request Lenses
    terminateTargetInstances_tags,
    terminateTargetInstances_sourceServerIDs,

    -- * Destructuring the Response
    TerminateTargetInstancesResponse (..),
    newTerminateTargetInstancesResponse,

    -- * Response Lenses
    terminateTargetInstancesResponse_job,
    terminateTargetInstancesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTerminateTargetInstances' smart constructor.
data TerminateTargetInstances = TerminateTargetInstances'
  { -- | Terminate Target instance by Tags.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Terminate Target instance by Source Server IDs.
    sourceServerIDs :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateTargetInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'terminateTargetInstances_tags' - Terminate Target instance by Tags.
--
-- 'sourceServerIDs', 'terminateTargetInstances_sourceServerIDs' - Terminate Target instance by Source Server IDs.
newTerminateTargetInstances ::
  -- | 'sourceServerIDs'
  Prelude.NonEmpty Prelude.Text ->
  TerminateTargetInstances
newTerminateTargetInstances pSourceServerIDs_ =
  TerminateTargetInstances'
    { tags = Prelude.Nothing,
      sourceServerIDs =
        Lens.coerced Lens.# pSourceServerIDs_
    }

-- | Terminate Target instance by Tags.
terminateTargetInstances_tags :: Lens.Lens' TerminateTargetInstances (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
terminateTargetInstances_tags = Lens.lens (\TerminateTargetInstances' {tags} -> tags) (\s@TerminateTargetInstances' {} a -> s {tags = a} :: TerminateTargetInstances) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Terminate Target instance by Source Server IDs.
terminateTargetInstances_sourceServerIDs :: Lens.Lens' TerminateTargetInstances (Prelude.NonEmpty Prelude.Text)
terminateTargetInstances_sourceServerIDs = Lens.lens (\TerminateTargetInstances' {sourceServerIDs} -> sourceServerIDs) (\s@TerminateTargetInstances' {} a -> s {sourceServerIDs = a} :: TerminateTargetInstances) Prelude.. Lens.coerced

instance Core.AWSRequest TerminateTargetInstances where
  type
    AWSResponse TerminateTargetInstances =
      TerminateTargetInstancesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TerminateTargetInstancesResponse'
            Prelude.<$> (x Core..?> "job")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TerminateTargetInstances

instance Prelude.NFData TerminateTargetInstances

instance Core.ToHeaders TerminateTargetInstances where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON TerminateTargetInstances where
  toJSON TerminateTargetInstances' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("sourceServerIDs" Core..= sourceServerIDs)
          ]
      )

instance Core.ToPath TerminateTargetInstances where
  toPath = Prelude.const "/TerminateTargetInstances"

instance Core.ToQuery TerminateTargetInstances where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTerminateTargetInstancesResponse' smart constructor.
data TerminateTargetInstancesResponse = TerminateTargetInstancesResponse'
  { -- | Terminate Target instance Job response.
    job :: Prelude.Maybe Job,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateTargetInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'terminateTargetInstancesResponse_job' - Terminate Target instance Job response.
--
-- 'httpStatus', 'terminateTargetInstancesResponse_httpStatus' - The response's http status code.
newTerminateTargetInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TerminateTargetInstancesResponse
newTerminateTargetInstancesResponse pHttpStatus_ =
  TerminateTargetInstancesResponse'
    { job =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Terminate Target instance Job response.
terminateTargetInstancesResponse_job :: Lens.Lens' TerminateTargetInstancesResponse (Prelude.Maybe Job)
terminateTargetInstancesResponse_job = Lens.lens (\TerminateTargetInstancesResponse' {job} -> job) (\s@TerminateTargetInstancesResponse' {} a -> s {job = a} :: TerminateTargetInstancesResponse)

-- | The response's http status code.
terminateTargetInstancesResponse_httpStatus :: Lens.Lens' TerminateTargetInstancesResponse Prelude.Int
terminateTargetInstancesResponse_httpStatus = Lens.lens (\TerminateTargetInstancesResponse' {httpStatus} -> httpStatus) (\s@TerminateTargetInstancesResponse' {} a -> s {httpStatus = a} :: TerminateTargetInstancesResponse)

instance
  Prelude.NFData
    TerminateTargetInstancesResponse
