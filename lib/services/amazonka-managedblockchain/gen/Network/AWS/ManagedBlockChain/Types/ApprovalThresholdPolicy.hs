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
-- Module      : Network.AWS.ManagedBlockChain.Types.ApprovalThresholdPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.ApprovalThresholdPolicy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.ThresholdComparator
import qualified Network.AWS.Prelude as Prelude

-- | A policy type that defines the voting rules for the network. The rules
-- decide if a proposal is approved. Approval may be based on criteria such
-- as the percentage of @YES@ votes and the duration of the proposal. The
-- policy applies to all proposals and is specified when the network is
-- created.
--
-- Applies only to Hyperledger Fabric.
--
-- /See:/ 'newApprovalThresholdPolicy' smart constructor.
data ApprovalThresholdPolicy = ApprovalThresholdPolicy'
  { -- | The percentage of votes among all members that must be @YES@ for a
    -- proposal to be approved. For example, a @ThresholdPercentage@ value of
    -- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
    -- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
    -- network with 10 members, along with a @ThresholdComparator@ value of
    -- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
    -- proposal to be approved.
    thresholdPercentage :: Prelude.Maybe Prelude.Natural,
    -- | Determines whether the vote percentage must be greater than the
    -- @ThresholdPercentage@ or must be greater than or equal to the
    -- @ThreholdPercentage@ to be approved.
    thresholdComparator :: Prelude.Maybe ThresholdComparator,
    -- | The duration from the time that a proposal is created until it expires.
    -- If members cast neither the required number of @YES@ votes to approve
    -- the proposal nor the number of @NO@ votes required to reject it before
    -- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
    -- are not carried out.
    proposalDurationInHours :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApprovalThresholdPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thresholdPercentage', 'approvalThresholdPolicy_thresholdPercentage' - The percentage of votes among all members that must be @YES@ for a
-- proposal to be approved. For example, a @ThresholdPercentage@ value of
-- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
-- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
-- network with 10 members, along with a @ThresholdComparator@ value of
-- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
-- proposal to be approved.
--
-- 'thresholdComparator', 'approvalThresholdPolicy_thresholdComparator' - Determines whether the vote percentage must be greater than the
-- @ThresholdPercentage@ or must be greater than or equal to the
-- @ThreholdPercentage@ to be approved.
--
-- 'proposalDurationInHours', 'approvalThresholdPolicy_proposalDurationInHours' - The duration from the time that a proposal is created until it expires.
-- If members cast neither the required number of @YES@ votes to approve
-- the proposal nor the number of @NO@ votes required to reject it before
-- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
-- are not carried out.
newApprovalThresholdPolicy ::
  ApprovalThresholdPolicy
newApprovalThresholdPolicy =
  ApprovalThresholdPolicy'
    { thresholdPercentage =
        Prelude.Nothing,
      thresholdComparator = Prelude.Nothing,
      proposalDurationInHours = Prelude.Nothing
    }

-- | The percentage of votes among all members that must be @YES@ for a
-- proposal to be approved. For example, a @ThresholdPercentage@ value of
-- @50@ indicates 50%. The @ThresholdComparator@ determines the precise
-- comparison. If a @ThresholdPercentage@ value of @50@ is specified on a
-- network with 10 members, along with a @ThresholdComparator@ value of
-- @GREATER_THAN@, this indicates that 6 @YES@ votes are required for the
-- proposal to be approved.
approvalThresholdPolicy_thresholdPercentage :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe Prelude.Natural)
approvalThresholdPolicy_thresholdPercentage = Lens.lens (\ApprovalThresholdPolicy' {thresholdPercentage} -> thresholdPercentage) (\s@ApprovalThresholdPolicy' {} a -> s {thresholdPercentage = a} :: ApprovalThresholdPolicy)

-- | Determines whether the vote percentage must be greater than the
-- @ThresholdPercentage@ or must be greater than or equal to the
-- @ThreholdPercentage@ to be approved.
approvalThresholdPolicy_thresholdComparator :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe ThresholdComparator)
approvalThresholdPolicy_thresholdComparator = Lens.lens (\ApprovalThresholdPolicy' {thresholdComparator} -> thresholdComparator) (\s@ApprovalThresholdPolicy' {} a -> s {thresholdComparator = a} :: ApprovalThresholdPolicy)

-- | The duration from the time that a proposal is created until it expires.
-- If members cast neither the required number of @YES@ votes to approve
-- the proposal nor the number of @NO@ votes required to reject it before
-- the duration expires, the proposal is @EXPIRED@ and @ProposalActions@
-- are not carried out.
approvalThresholdPolicy_proposalDurationInHours :: Lens.Lens' ApprovalThresholdPolicy (Prelude.Maybe Prelude.Natural)
approvalThresholdPolicy_proposalDurationInHours = Lens.lens (\ApprovalThresholdPolicy' {proposalDurationInHours} -> proposalDurationInHours) (\s@ApprovalThresholdPolicy' {} a -> s {proposalDurationInHours = a} :: ApprovalThresholdPolicy)

instance Core.FromJSON ApprovalThresholdPolicy where
  parseJSON =
    Core.withObject
      "ApprovalThresholdPolicy"
      ( \x ->
          ApprovalThresholdPolicy'
            Prelude.<$> (x Core..:? "ThresholdPercentage")
            Prelude.<*> (x Core..:? "ThresholdComparator")
            Prelude.<*> (x Core..:? "ProposalDurationInHours")
      )

instance Prelude.Hashable ApprovalThresholdPolicy

instance Prelude.NFData ApprovalThresholdPolicy

instance Core.ToJSON ApprovalThresholdPolicy where
  toJSON ApprovalThresholdPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ThresholdPercentage" Core..=)
              Prelude.<$> thresholdPercentage,
            ("ThresholdComparator" Core..=)
              Prelude.<$> thresholdComparator,
            ("ProposalDurationInHours" Core..=)
              Prelude.<$> proposalDurationInHours
          ]
      )
