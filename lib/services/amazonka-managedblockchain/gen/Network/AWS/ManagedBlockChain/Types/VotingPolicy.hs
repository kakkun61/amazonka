{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ManagedBlockChain.Types.VotingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.VotingPolicy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.ApprovalThresholdPolicy
import qualified Network.AWS.Prelude as Prelude

-- | The voting rules for the network to decide if a proposal is accepted
--
-- Applies only to Hyperledger Fabric.
--
-- /See:/ 'newVotingPolicy' smart constructor.
data VotingPolicy = VotingPolicy'
  { -- | Defines the rules for the network for voting on proposals, such as the
    -- percentage of @YES@ votes required for the proposal to be approved and
    -- the duration of the proposal. The policy applies to all proposals and is
    -- specified when the network is created.
    approvalThresholdPolicy :: Prelude.Maybe ApprovalThresholdPolicy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VotingPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalThresholdPolicy', 'votingPolicy_approvalThresholdPolicy' - Defines the rules for the network for voting on proposals, such as the
-- percentage of @YES@ votes required for the proposal to be approved and
-- the duration of the proposal. The policy applies to all proposals and is
-- specified when the network is created.
newVotingPolicy ::
  VotingPolicy
newVotingPolicy =
  VotingPolicy'
    { approvalThresholdPolicy =
        Prelude.Nothing
    }

-- | Defines the rules for the network for voting on proposals, such as the
-- percentage of @YES@ votes required for the proposal to be approved and
-- the duration of the proposal. The policy applies to all proposals and is
-- specified when the network is created.
votingPolicy_approvalThresholdPolicy :: Lens.Lens' VotingPolicy (Prelude.Maybe ApprovalThresholdPolicy)
votingPolicy_approvalThresholdPolicy = Lens.lens (\VotingPolicy' {approvalThresholdPolicy} -> approvalThresholdPolicy) (\s@VotingPolicy' {} a -> s {approvalThresholdPolicy = a} :: VotingPolicy)

instance Core.FromJSON VotingPolicy where
  parseJSON =
    Core.withObject
      "VotingPolicy"
      ( \x ->
          VotingPolicy'
            Prelude.<$> (x Core..:? "ApprovalThresholdPolicy")
      )

instance Prelude.Hashable VotingPolicy

instance Prelude.NFData VotingPolicy

instance Core.ToJSON VotingPolicy where
  toJSON VotingPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ApprovalThresholdPolicy" Core..=)
              Prelude.<$> approvalThresholdPolicy
          ]
      )
