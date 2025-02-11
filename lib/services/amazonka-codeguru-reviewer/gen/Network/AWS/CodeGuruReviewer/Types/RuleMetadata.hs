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
-- Module      : Network.AWS.CodeGuruReviewer.Types.RuleMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.RuleMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Metadata about a rule. Rule metadata includes an ID, a name, a list of
-- tags, and a short and long description. CodeGuru Reviewer uses rules to
-- analyze code. A rule\'s recommendation is included in analysis results
-- if code is detected that violates the rule.
--
-- /See:/ 'newRuleMetadata' smart constructor.
data RuleMetadata = RuleMetadata'
  { -- | A long description of the rule.
    longDescription :: Prelude.Maybe Prelude.Text,
    -- | Tags that are associated with the rule.
    ruleTags :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The ID of the rule.
    ruleId :: Prelude.Maybe Prelude.Text,
    -- | The name of the rule.
    ruleName :: Prelude.Maybe Prelude.Text,
    -- | A short description of the rule.
    shortDescription :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'longDescription', 'ruleMetadata_longDescription' - A long description of the rule.
--
-- 'ruleTags', 'ruleMetadata_ruleTags' - Tags that are associated with the rule.
--
-- 'ruleId', 'ruleMetadata_ruleId' - The ID of the rule.
--
-- 'ruleName', 'ruleMetadata_ruleName' - The name of the rule.
--
-- 'shortDescription', 'ruleMetadata_shortDescription' - A short description of the rule.
newRuleMetadata ::
  RuleMetadata
newRuleMetadata =
  RuleMetadata'
    { longDescription = Prelude.Nothing,
      ruleTags = Prelude.Nothing,
      ruleId = Prelude.Nothing,
      ruleName = Prelude.Nothing,
      shortDescription = Prelude.Nothing
    }

-- | A long description of the rule.
ruleMetadata_longDescription :: Lens.Lens' RuleMetadata (Prelude.Maybe Prelude.Text)
ruleMetadata_longDescription = Lens.lens (\RuleMetadata' {longDescription} -> longDescription) (\s@RuleMetadata' {} a -> s {longDescription = a} :: RuleMetadata)

-- | Tags that are associated with the rule.
ruleMetadata_ruleTags :: Lens.Lens' RuleMetadata (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
ruleMetadata_ruleTags = Lens.lens (\RuleMetadata' {ruleTags} -> ruleTags) (\s@RuleMetadata' {} a -> s {ruleTags = a} :: RuleMetadata) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the rule.
ruleMetadata_ruleId :: Lens.Lens' RuleMetadata (Prelude.Maybe Prelude.Text)
ruleMetadata_ruleId = Lens.lens (\RuleMetadata' {ruleId} -> ruleId) (\s@RuleMetadata' {} a -> s {ruleId = a} :: RuleMetadata)

-- | The name of the rule.
ruleMetadata_ruleName :: Lens.Lens' RuleMetadata (Prelude.Maybe Prelude.Text)
ruleMetadata_ruleName = Lens.lens (\RuleMetadata' {ruleName} -> ruleName) (\s@RuleMetadata' {} a -> s {ruleName = a} :: RuleMetadata)

-- | A short description of the rule.
ruleMetadata_shortDescription :: Lens.Lens' RuleMetadata (Prelude.Maybe Prelude.Text)
ruleMetadata_shortDescription = Lens.lens (\RuleMetadata' {shortDescription} -> shortDescription) (\s@RuleMetadata' {} a -> s {shortDescription = a} :: RuleMetadata)

instance Core.FromJSON RuleMetadata where
  parseJSON =
    Core.withObject
      "RuleMetadata"
      ( \x ->
          RuleMetadata'
            Prelude.<$> (x Core..:? "LongDescription")
            Prelude.<*> (x Core..:? "RuleTags")
            Prelude.<*> (x Core..:? "RuleId")
            Prelude.<*> (x Core..:? "RuleName")
            Prelude.<*> (x Core..:? "ShortDescription")
      )

instance Prelude.Hashable RuleMetadata

instance Prelude.NFData RuleMetadata
