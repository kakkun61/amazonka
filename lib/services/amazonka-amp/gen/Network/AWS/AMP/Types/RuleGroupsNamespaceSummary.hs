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
-- Module      : Network.AWS.AMP.Types.RuleGroupsNamespaceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AMP.Types.RuleGroupsNamespaceSummary where

import Network.AWS.AMP.Types.RuleGroupsNamespaceStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a summary of the rule groups namespace.
--
-- /See:/ 'newRuleGroupsNamespaceSummary' smart constructor.
data RuleGroupsNamespaceSummary = RuleGroupsNamespaceSummary'
  { -- | The tags of this rule groups namespace.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (ARN) of this rule groups namespace.
    arn :: Prelude.Text,
    -- | The time when the rule groups namespace was created.
    createdAt :: Core.POSIX,
    -- | The time when the rule groups namespace was modified.
    modifiedAt :: Core.POSIX,
    -- | The rule groups namespace name.
    name :: Prelude.Text,
    -- | The status of rule groups namespace.
    status :: RuleGroupsNamespaceStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleGroupsNamespaceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'ruleGroupsNamespaceSummary_tags' - The tags of this rule groups namespace.
--
-- 'arn', 'ruleGroupsNamespaceSummary_arn' - The Amazon Resource Name (ARN) of this rule groups namespace.
--
-- 'createdAt', 'ruleGroupsNamespaceSummary_createdAt' - The time when the rule groups namespace was created.
--
-- 'modifiedAt', 'ruleGroupsNamespaceSummary_modifiedAt' - The time when the rule groups namespace was modified.
--
-- 'name', 'ruleGroupsNamespaceSummary_name' - The rule groups namespace name.
--
-- 'status', 'ruleGroupsNamespaceSummary_status' - The status of rule groups namespace.
newRuleGroupsNamespaceSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'modifiedAt'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  -- | 'status'
  RuleGroupsNamespaceStatus ->
  RuleGroupsNamespaceSummary
newRuleGroupsNamespaceSummary
  pArn_
  pCreatedAt_
  pModifiedAt_
  pName_
  pStatus_ =
    RuleGroupsNamespaceSummary'
      { tags = Prelude.Nothing,
        arn = pArn_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        modifiedAt = Core._Time Lens.# pModifiedAt_,
        name = pName_,
        status = pStatus_
      }

-- | The tags of this rule groups namespace.
ruleGroupsNamespaceSummary_tags :: Lens.Lens' RuleGroupsNamespaceSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
ruleGroupsNamespaceSummary_tags = Lens.lens (\RuleGroupsNamespaceSummary' {tags} -> tags) (\s@RuleGroupsNamespaceSummary' {} a -> s {tags = a} :: RuleGroupsNamespaceSummary) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of this rule groups namespace.
ruleGroupsNamespaceSummary_arn :: Lens.Lens' RuleGroupsNamespaceSummary Prelude.Text
ruleGroupsNamespaceSummary_arn = Lens.lens (\RuleGroupsNamespaceSummary' {arn} -> arn) (\s@RuleGroupsNamespaceSummary' {} a -> s {arn = a} :: RuleGroupsNamespaceSummary)

-- | The time when the rule groups namespace was created.
ruleGroupsNamespaceSummary_createdAt :: Lens.Lens' RuleGroupsNamespaceSummary Prelude.UTCTime
ruleGroupsNamespaceSummary_createdAt = Lens.lens (\RuleGroupsNamespaceSummary' {createdAt} -> createdAt) (\s@RuleGroupsNamespaceSummary' {} a -> s {createdAt = a} :: RuleGroupsNamespaceSummary) Prelude.. Core._Time

-- | The time when the rule groups namespace was modified.
ruleGroupsNamespaceSummary_modifiedAt :: Lens.Lens' RuleGroupsNamespaceSummary Prelude.UTCTime
ruleGroupsNamespaceSummary_modifiedAt = Lens.lens (\RuleGroupsNamespaceSummary' {modifiedAt} -> modifiedAt) (\s@RuleGroupsNamespaceSummary' {} a -> s {modifiedAt = a} :: RuleGroupsNamespaceSummary) Prelude.. Core._Time

-- | The rule groups namespace name.
ruleGroupsNamespaceSummary_name :: Lens.Lens' RuleGroupsNamespaceSummary Prelude.Text
ruleGroupsNamespaceSummary_name = Lens.lens (\RuleGroupsNamespaceSummary' {name} -> name) (\s@RuleGroupsNamespaceSummary' {} a -> s {name = a} :: RuleGroupsNamespaceSummary)

-- | The status of rule groups namespace.
ruleGroupsNamespaceSummary_status :: Lens.Lens' RuleGroupsNamespaceSummary RuleGroupsNamespaceStatus
ruleGroupsNamespaceSummary_status = Lens.lens (\RuleGroupsNamespaceSummary' {status} -> status) (\s@RuleGroupsNamespaceSummary' {} a -> s {status = a} :: RuleGroupsNamespaceSummary)

instance Core.FromJSON RuleGroupsNamespaceSummary where
  parseJSON =
    Core.withObject
      "RuleGroupsNamespaceSummary"
      ( \x ->
          RuleGroupsNamespaceSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "modifiedAt")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable RuleGroupsNamespaceSummary

instance Prelude.NFData RuleGroupsNamespaceSummary
