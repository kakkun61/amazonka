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
-- Module      : Network.AWS.ManagedBlockChain.Types.ProposalActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.ProposalActions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.InviteAction
import Network.AWS.ManagedBlockChain.Types.RemoveAction
import qualified Network.AWS.Prelude as Prelude

-- | The actions to carry out if a proposal is @APPROVED@.
--
-- Applies only to Hyperledger Fabric.
--
-- /See:/ 'newProposalActions' smart constructor.
data ProposalActions = ProposalActions'
  { -- | The actions to perform for an @APPROVED@ proposal to invite an AWS
    -- account to create a member and join the network.
    invitations :: Prelude.Maybe [InviteAction],
    -- | The actions to perform for an @APPROVED@ proposal to remove a member
    -- from the network, which deletes the member and all associated member
    -- resources from the network.
    removals :: Prelude.Maybe [RemoveAction]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProposalActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invitations', 'proposalActions_invitations' - The actions to perform for an @APPROVED@ proposal to invite an AWS
-- account to create a member and join the network.
--
-- 'removals', 'proposalActions_removals' - The actions to perform for an @APPROVED@ proposal to remove a member
-- from the network, which deletes the member and all associated member
-- resources from the network.
newProposalActions ::
  ProposalActions
newProposalActions =
  ProposalActions'
    { invitations = Prelude.Nothing,
      removals = Prelude.Nothing
    }

-- | The actions to perform for an @APPROVED@ proposal to invite an AWS
-- account to create a member and join the network.
proposalActions_invitations :: Lens.Lens' ProposalActions (Prelude.Maybe [InviteAction])
proposalActions_invitations = Lens.lens (\ProposalActions' {invitations} -> invitations) (\s@ProposalActions' {} a -> s {invitations = a} :: ProposalActions) Prelude.. Lens.mapping Lens.coerced

-- | The actions to perform for an @APPROVED@ proposal to remove a member
-- from the network, which deletes the member and all associated member
-- resources from the network.
proposalActions_removals :: Lens.Lens' ProposalActions (Prelude.Maybe [RemoveAction])
proposalActions_removals = Lens.lens (\ProposalActions' {removals} -> removals) (\s@ProposalActions' {} a -> s {removals = a} :: ProposalActions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ProposalActions where
  parseJSON =
    Core.withObject
      "ProposalActions"
      ( \x ->
          ProposalActions'
            Prelude.<$> (x Core..:? "Invitations" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Removals" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ProposalActions

instance Prelude.NFData ProposalActions

instance Core.ToJSON ProposalActions where
  toJSON ProposalActions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Invitations" Core..=) Prelude.<$> invitations,
            ("Removals" Core..=) Prelude.<$> removals
          ]
      )
