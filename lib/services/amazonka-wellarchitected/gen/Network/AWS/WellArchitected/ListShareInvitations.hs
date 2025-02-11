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
-- Module      : Network.AWS.WellArchitected.ListShareInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the workload invitations.
module Network.AWS.WellArchitected.ListShareInvitations
  ( -- * Creating a Request
    ListShareInvitations (..),
    newListShareInvitations,

    -- * Request Lenses
    listShareInvitations_nextToken,
    listShareInvitations_workloadNamePrefix,
    listShareInvitations_maxResults,

    -- * Destructuring the Response
    ListShareInvitationsResponse (..),
    newListShareInvitationsResponse,

    -- * Response Lenses
    listShareInvitationsResponse_shareInvitationSummaries,
    listShareInvitationsResponse_nextToken,
    listShareInvitationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for List Share Invitations
--
-- /See:/ 'newListShareInvitations' smart constructor.
data ListShareInvitations = ListShareInvitations'
  { nextToken :: Prelude.Maybe Prelude.Text,
    workloadNamePrefix :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListShareInvitations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listShareInvitations_nextToken' - Undocumented member.
--
-- 'workloadNamePrefix', 'listShareInvitations_workloadNamePrefix' - Undocumented member.
--
-- 'maxResults', 'listShareInvitations_maxResults' - The maximum number of results to return for this request.
newListShareInvitations ::
  ListShareInvitations
newListShareInvitations =
  ListShareInvitations'
    { nextToken = Prelude.Nothing,
      workloadNamePrefix = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Undocumented member.
listShareInvitations_nextToken :: Lens.Lens' ListShareInvitations (Prelude.Maybe Prelude.Text)
listShareInvitations_nextToken = Lens.lens (\ListShareInvitations' {nextToken} -> nextToken) (\s@ListShareInvitations' {} a -> s {nextToken = a} :: ListShareInvitations)

-- | Undocumented member.
listShareInvitations_workloadNamePrefix :: Lens.Lens' ListShareInvitations (Prelude.Maybe Prelude.Text)
listShareInvitations_workloadNamePrefix = Lens.lens (\ListShareInvitations' {workloadNamePrefix} -> workloadNamePrefix) (\s@ListShareInvitations' {} a -> s {workloadNamePrefix = a} :: ListShareInvitations)

-- | The maximum number of results to return for this request.
listShareInvitations_maxResults :: Lens.Lens' ListShareInvitations (Prelude.Maybe Prelude.Natural)
listShareInvitations_maxResults = Lens.lens (\ListShareInvitations' {maxResults} -> maxResults) (\s@ListShareInvitations' {} a -> s {maxResults = a} :: ListShareInvitations)

instance Core.AWSRequest ListShareInvitations where
  type
    AWSResponse ListShareInvitations =
      ListShareInvitationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListShareInvitationsResponse'
            Prelude.<$> ( x Core..?> "ShareInvitationSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListShareInvitations

instance Prelude.NFData ListShareInvitations

instance Core.ToHeaders ListShareInvitations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListShareInvitations where
  toPath = Prelude.const "/shareInvitations"

instance Core.ToQuery ListShareInvitations where
  toQuery ListShareInvitations' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "WorkloadNamePrefix" Core.=: workloadNamePrefix,
        "MaxResults" Core.=: maxResults
      ]

-- | Input for List Share Invitations
--
-- /See:/ 'newListShareInvitationsResponse' smart constructor.
data ListShareInvitationsResponse = ListShareInvitationsResponse'
  { -- | List of share invitation summaries in a workload.
    shareInvitationSummaries :: Prelude.Maybe [ShareInvitationSummary],
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListShareInvitationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareInvitationSummaries', 'listShareInvitationsResponse_shareInvitationSummaries' - List of share invitation summaries in a workload.
--
-- 'nextToken', 'listShareInvitationsResponse_nextToken' - Undocumented member.
--
-- 'httpStatus', 'listShareInvitationsResponse_httpStatus' - The response's http status code.
newListShareInvitationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListShareInvitationsResponse
newListShareInvitationsResponse pHttpStatus_ =
  ListShareInvitationsResponse'
    { shareInvitationSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of share invitation summaries in a workload.
listShareInvitationsResponse_shareInvitationSummaries :: Lens.Lens' ListShareInvitationsResponse (Prelude.Maybe [ShareInvitationSummary])
listShareInvitationsResponse_shareInvitationSummaries = Lens.lens (\ListShareInvitationsResponse' {shareInvitationSummaries} -> shareInvitationSummaries) (\s@ListShareInvitationsResponse' {} a -> s {shareInvitationSummaries = a} :: ListShareInvitationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listShareInvitationsResponse_nextToken :: Lens.Lens' ListShareInvitationsResponse (Prelude.Maybe Prelude.Text)
listShareInvitationsResponse_nextToken = Lens.lens (\ListShareInvitationsResponse' {nextToken} -> nextToken) (\s@ListShareInvitationsResponse' {} a -> s {nextToken = a} :: ListShareInvitationsResponse)

-- | The response's http status code.
listShareInvitationsResponse_httpStatus :: Lens.Lens' ListShareInvitationsResponse Prelude.Int
listShareInvitationsResponse_httpStatus = Lens.lens (\ListShareInvitationsResponse' {httpStatus} -> httpStatus) (\s@ListShareInvitationsResponse' {} a -> s {httpStatus = a} :: ListShareInvitationsResponse)

instance Prelude.NFData ListShareInvitationsResponse
