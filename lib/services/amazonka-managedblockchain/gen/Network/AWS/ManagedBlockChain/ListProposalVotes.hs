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
-- Module      : Network.AWS.ManagedBlockChain.ListProposalVotes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of votes for a specified proposal, including the value
-- of each vote and the unique identifier of the member that cast the vote.
--
-- Applies only to Hyperledger Fabric.
module Network.AWS.ManagedBlockChain.ListProposalVotes
  ( -- * Creating a Request
    ListProposalVotes (..),
    newListProposalVotes,

    -- * Request Lenses
    listProposalVotes_nextToken,
    listProposalVotes_maxResults,
    listProposalVotes_networkId,
    listProposalVotes_proposalId,

    -- * Destructuring the Response
    ListProposalVotesResponse (..),
    newListProposalVotesResponse,

    -- * Response Lenses
    listProposalVotesResponse_nextToken,
    listProposalVotesResponse_proposalVotes,
    listProposalVotesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListProposalVotes' smart constructor.
data ListProposalVotes = ListProposalVotes'
  { -- | The pagination token that indicates the next set of results to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of votes to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier of the network.
    networkId :: Prelude.Text,
    -- | The unique identifier of the proposal.
    proposalId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProposalVotes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProposalVotes_nextToken' - The pagination token that indicates the next set of results to retrieve.
--
-- 'maxResults', 'listProposalVotes_maxResults' - The maximum number of votes to return.
--
-- 'networkId', 'listProposalVotes_networkId' - The unique identifier of the network.
--
-- 'proposalId', 'listProposalVotes_proposalId' - The unique identifier of the proposal.
newListProposalVotes ::
  -- | 'networkId'
  Prelude.Text ->
  -- | 'proposalId'
  Prelude.Text ->
  ListProposalVotes
newListProposalVotes pNetworkId_ pProposalId_ =
  ListProposalVotes'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      networkId = pNetworkId_,
      proposalId = pProposalId_
    }

-- | The pagination token that indicates the next set of results to retrieve.
listProposalVotes_nextToken :: Lens.Lens' ListProposalVotes (Prelude.Maybe Prelude.Text)
listProposalVotes_nextToken = Lens.lens (\ListProposalVotes' {nextToken} -> nextToken) (\s@ListProposalVotes' {} a -> s {nextToken = a} :: ListProposalVotes)

-- | The maximum number of votes to return.
listProposalVotes_maxResults :: Lens.Lens' ListProposalVotes (Prelude.Maybe Prelude.Natural)
listProposalVotes_maxResults = Lens.lens (\ListProposalVotes' {maxResults} -> maxResults) (\s@ListProposalVotes' {} a -> s {maxResults = a} :: ListProposalVotes)

-- | The unique identifier of the network.
listProposalVotes_networkId :: Lens.Lens' ListProposalVotes Prelude.Text
listProposalVotes_networkId = Lens.lens (\ListProposalVotes' {networkId} -> networkId) (\s@ListProposalVotes' {} a -> s {networkId = a} :: ListProposalVotes)

-- | The unique identifier of the proposal.
listProposalVotes_proposalId :: Lens.Lens' ListProposalVotes Prelude.Text
listProposalVotes_proposalId = Lens.lens (\ListProposalVotes' {proposalId} -> proposalId) (\s@ListProposalVotes' {} a -> s {proposalId = a} :: ListProposalVotes)

instance Core.AWSRequest ListProposalVotes where
  type
    AWSResponse ListProposalVotes =
      ListProposalVotesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProposalVotesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ProposalVotes" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListProposalVotes

instance Prelude.NFData ListProposalVotes

instance Core.ToHeaders ListProposalVotes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListProposalVotes where
  toPath ListProposalVotes' {..} =
    Prelude.mconcat
      [ "/networks/",
        Core.toBS networkId,
        "/proposals/",
        Core.toBS proposalId,
        "/votes"
      ]

instance Core.ToQuery ListProposalVotes where
  toQuery ListProposalVotes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListProposalVotesResponse' smart constructor.
data ListProposalVotesResponse = ListProposalVotesResponse'
  { -- | The pagination token that indicates the next set of results to retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of votes.
    proposalVotes :: Prelude.Maybe [VoteSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProposalVotesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProposalVotesResponse_nextToken' - The pagination token that indicates the next set of results to retrieve.
--
-- 'proposalVotes', 'listProposalVotesResponse_proposalVotes' - The list of votes.
--
-- 'httpStatus', 'listProposalVotesResponse_httpStatus' - The response's http status code.
newListProposalVotesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListProposalVotesResponse
newListProposalVotesResponse pHttpStatus_ =
  ListProposalVotesResponse'
    { nextToken =
        Prelude.Nothing,
      proposalVotes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token that indicates the next set of results to retrieve.
listProposalVotesResponse_nextToken :: Lens.Lens' ListProposalVotesResponse (Prelude.Maybe Prelude.Text)
listProposalVotesResponse_nextToken = Lens.lens (\ListProposalVotesResponse' {nextToken} -> nextToken) (\s@ListProposalVotesResponse' {} a -> s {nextToken = a} :: ListProposalVotesResponse)

-- | The list of votes.
listProposalVotesResponse_proposalVotes :: Lens.Lens' ListProposalVotesResponse (Prelude.Maybe [VoteSummary])
listProposalVotesResponse_proposalVotes = Lens.lens (\ListProposalVotesResponse' {proposalVotes} -> proposalVotes) (\s@ListProposalVotesResponse' {} a -> s {proposalVotes = a} :: ListProposalVotesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listProposalVotesResponse_httpStatus :: Lens.Lens' ListProposalVotesResponse Prelude.Int
listProposalVotesResponse_httpStatus = Lens.lens (\ListProposalVotesResponse' {httpStatus} -> httpStatus) (\s@ListProposalVotesResponse' {} a -> s {httpStatus = a} :: ListProposalVotesResponse)

instance Prelude.NFData ListProposalVotesResponse
