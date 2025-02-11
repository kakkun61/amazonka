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
-- Module      : Network.AWS.ManagedBlockChain.Types.InviteAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.InviteAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An action to invite a specific AWS account to create a member and join
-- the network. The @InviteAction@ is carried out when a @Proposal@ is
-- @APPROVED@.
--
-- Applies only to Hyperledger Fabric.
--
-- /See:/ 'newInviteAction' smart constructor.
data InviteAction = InviteAction'
  { -- | The AWS account ID to invite.
    principal :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InviteAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'principal', 'inviteAction_principal' - The AWS account ID to invite.
newInviteAction ::
  -- | 'principal'
  Prelude.Text ->
  InviteAction
newInviteAction pPrincipal_ =
  InviteAction' {principal = pPrincipal_}

-- | The AWS account ID to invite.
inviteAction_principal :: Lens.Lens' InviteAction Prelude.Text
inviteAction_principal = Lens.lens (\InviteAction' {principal} -> principal) (\s@InviteAction' {} a -> s {principal = a} :: InviteAction)

instance Core.FromJSON InviteAction where
  parseJSON =
    Core.withObject
      "InviteAction"
      ( \x ->
          InviteAction' Prelude.<$> (x Core..: "Principal")
      )

instance Prelude.Hashable InviteAction

instance Prelude.NFData InviteAction

instance Core.ToJSON InviteAction where
  toJSON InviteAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Principal" Core..= principal)]
      )
