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
-- Module      : Network.AWS.DLM.Types.LifecyclePolicySummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DLM.Types.LifecyclePolicySummary where

import qualified Network.AWS.Core as Core
import Network.AWS.DLM.Types.GettablePolicyStateValues
import Network.AWS.DLM.Types.PolicyTypeValues
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary information about a lifecycle policy.
--
-- /See:/ 'newLifecyclePolicySummary' smart constructor.
data LifecyclePolicySummary = LifecyclePolicySummary'
  { -- | The activation state of the lifecycle policy.
    state :: Prelude.Maybe GettablePolicyStateValues,
    -- | The identifier of the lifecycle policy.
    policyId :: Prelude.Maybe Prelude.Text,
    -- | The type of policy. @EBS_SNAPSHOT_MANAGEMENT@ indicates that the policy
    -- manages the lifecycle of Amazon EBS snapshots. @IMAGE_MANAGEMENT@
    -- indicates that the policy manages the lifecycle of EBS-backed AMIs.
    policyType :: Prelude.Maybe PolicyTypeValues,
    -- | The description of the lifecycle policy.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LifecyclePolicySummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'lifecyclePolicySummary_state' - The activation state of the lifecycle policy.
--
-- 'policyId', 'lifecyclePolicySummary_policyId' - The identifier of the lifecycle policy.
--
-- 'policyType', 'lifecyclePolicySummary_policyType' - The type of policy. @EBS_SNAPSHOT_MANAGEMENT@ indicates that the policy
-- manages the lifecycle of Amazon EBS snapshots. @IMAGE_MANAGEMENT@
-- indicates that the policy manages the lifecycle of EBS-backed AMIs.
--
-- 'description', 'lifecyclePolicySummary_description' - The description of the lifecycle policy.
--
-- 'tags', 'lifecyclePolicySummary_tags' - The tags.
newLifecyclePolicySummary ::
  LifecyclePolicySummary
newLifecyclePolicySummary =
  LifecyclePolicySummary'
    { state = Prelude.Nothing,
      policyId = Prelude.Nothing,
      policyType = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The activation state of the lifecycle policy.
lifecyclePolicySummary_state :: Lens.Lens' LifecyclePolicySummary (Prelude.Maybe GettablePolicyStateValues)
lifecyclePolicySummary_state = Lens.lens (\LifecyclePolicySummary' {state} -> state) (\s@LifecyclePolicySummary' {} a -> s {state = a} :: LifecyclePolicySummary)

-- | The identifier of the lifecycle policy.
lifecyclePolicySummary_policyId :: Lens.Lens' LifecyclePolicySummary (Prelude.Maybe Prelude.Text)
lifecyclePolicySummary_policyId = Lens.lens (\LifecyclePolicySummary' {policyId} -> policyId) (\s@LifecyclePolicySummary' {} a -> s {policyId = a} :: LifecyclePolicySummary)

-- | The type of policy. @EBS_SNAPSHOT_MANAGEMENT@ indicates that the policy
-- manages the lifecycle of Amazon EBS snapshots. @IMAGE_MANAGEMENT@
-- indicates that the policy manages the lifecycle of EBS-backed AMIs.
lifecyclePolicySummary_policyType :: Lens.Lens' LifecyclePolicySummary (Prelude.Maybe PolicyTypeValues)
lifecyclePolicySummary_policyType = Lens.lens (\LifecyclePolicySummary' {policyType} -> policyType) (\s@LifecyclePolicySummary' {} a -> s {policyType = a} :: LifecyclePolicySummary)

-- | The description of the lifecycle policy.
lifecyclePolicySummary_description :: Lens.Lens' LifecyclePolicySummary (Prelude.Maybe Prelude.Text)
lifecyclePolicySummary_description = Lens.lens (\LifecyclePolicySummary' {description} -> description) (\s@LifecyclePolicySummary' {} a -> s {description = a} :: LifecyclePolicySummary)

-- | The tags.
lifecyclePolicySummary_tags :: Lens.Lens' LifecyclePolicySummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
lifecyclePolicySummary_tags = Lens.lens (\LifecyclePolicySummary' {tags} -> tags) (\s@LifecyclePolicySummary' {} a -> s {tags = a} :: LifecyclePolicySummary) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON LifecyclePolicySummary where
  parseJSON =
    Core.withObject
      "LifecyclePolicySummary"
      ( \x ->
          LifecyclePolicySummary'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> (x Core..:? "PolicyId")
            Prelude.<*> (x Core..:? "PolicyType")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "Tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable LifecyclePolicySummary

instance Prelude.NFData LifecyclePolicySummary
