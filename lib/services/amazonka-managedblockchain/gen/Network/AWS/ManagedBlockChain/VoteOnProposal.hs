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
-- Module      : Network.AWS.ManagedBlockChain.VoteOnProposal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Casts a vote for a specified @ProposalId@ on behalf of a member. The
-- member to vote as, specified by @VoterMemberId@, must be in the same AWS
-- account as the principal that calls the action.
--
-- Applies only to Hyperledger Fabric.
module Network.AWS.ManagedBlockChain.VoteOnProposal
  ( -- * Creating a Request
    VoteOnProposal (..),
    newVoteOnProposal,

    -- * Request Lenses
    voteOnProposal_networkId,
    voteOnProposal_proposalId,
    voteOnProposal_voterMemberId,
    voteOnProposal_vote,

    -- * Destructuring the Response
    VoteOnProposalResponse (..),
    newVoteOnProposalResponse,

    -- * Response Lenses
    voteOnProposalResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newVoteOnProposal' smart constructor.
data VoteOnProposal = VoteOnProposal'
  { -- | The unique identifier of the network.
    networkId :: Prelude.Text,
    -- | The unique identifier of the proposal.
    proposalId :: Prelude.Text,
    -- | The unique identifier of the member casting the vote.
    voterMemberId :: Prelude.Text,
    -- | The value of the vote.
    vote :: VoteValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VoteOnProposal' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkId', 'voteOnProposal_networkId' - The unique identifier of the network.
--
-- 'proposalId', 'voteOnProposal_proposalId' - The unique identifier of the proposal.
--
-- 'voterMemberId', 'voteOnProposal_voterMemberId' - The unique identifier of the member casting the vote.
--
-- 'vote', 'voteOnProposal_vote' - The value of the vote.
newVoteOnProposal ::
  -- | 'networkId'
  Prelude.Text ->
  -- | 'proposalId'
  Prelude.Text ->
  -- | 'voterMemberId'
  Prelude.Text ->
  -- | 'vote'
  VoteValue ->
  VoteOnProposal
newVoteOnProposal
  pNetworkId_
  pProposalId_
  pVoterMemberId_
  pVote_ =
    VoteOnProposal'
      { networkId = pNetworkId_,
        proposalId = pProposalId_,
        voterMemberId = pVoterMemberId_,
        vote = pVote_
      }

-- | The unique identifier of the network.
voteOnProposal_networkId :: Lens.Lens' VoteOnProposal Prelude.Text
voteOnProposal_networkId = Lens.lens (\VoteOnProposal' {networkId} -> networkId) (\s@VoteOnProposal' {} a -> s {networkId = a} :: VoteOnProposal)

-- | The unique identifier of the proposal.
voteOnProposal_proposalId :: Lens.Lens' VoteOnProposal Prelude.Text
voteOnProposal_proposalId = Lens.lens (\VoteOnProposal' {proposalId} -> proposalId) (\s@VoteOnProposal' {} a -> s {proposalId = a} :: VoteOnProposal)

-- | The unique identifier of the member casting the vote.
voteOnProposal_voterMemberId :: Lens.Lens' VoteOnProposal Prelude.Text
voteOnProposal_voterMemberId = Lens.lens (\VoteOnProposal' {voterMemberId} -> voterMemberId) (\s@VoteOnProposal' {} a -> s {voterMemberId = a} :: VoteOnProposal)

-- | The value of the vote.
voteOnProposal_vote :: Lens.Lens' VoteOnProposal VoteValue
voteOnProposal_vote = Lens.lens (\VoteOnProposal' {vote} -> vote) (\s@VoteOnProposal' {} a -> s {vote = a} :: VoteOnProposal)

instance Core.AWSRequest VoteOnProposal where
  type
    AWSResponse VoteOnProposal =
      VoteOnProposalResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          VoteOnProposalResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable VoteOnProposal

instance Prelude.NFData VoteOnProposal

instance Core.ToHeaders VoteOnProposal where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON VoteOnProposal where
  toJSON VoteOnProposal' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("VoterMemberId" Core..= voterMemberId),
            Prelude.Just ("Vote" Core..= vote)
          ]
      )

instance Core.ToPath VoteOnProposal where
  toPath VoteOnProposal' {..} =
    Prelude.mconcat
      [ "/networks/",
        Core.toBS networkId,
        "/proposals/",
        Core.toBS proposalId,
        "/votes"
      ]

instance Core.ToQuery VoteOnProposal where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newVoteOnProposalResponse' smart constructor.
data VoteOnProposalResponse = VoteOnProposalResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VoteOnProposalResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'voteOnProposalResponse_httpStatus' - The response's http status code.
newVoteOnProposalResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  VoteOnProposalResponse
newVoteOnProposalResponse pHttpStatus_ =
  VoteOnProposalResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
voteOnProposalResponse_httpStatus :: Lens.Lens' VoteOnProposalResponse Prelude.Int
voteOnProposalResponse_httpStatus = Lens.lens (\VoteOnProposalResponse' {httpStatus} -> httpStatus) (\s@VoteOnProposalResponse' {} a -> s {httpStatus = a} :: VoteOnProposalResponse)

instance Prelude.NFData VoteOnProposalResponse
