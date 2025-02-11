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
-- Module      : Network.AWS.FraudDetector.Types.RuleResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.RuleResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The rule results.
--
-- /See:/ 'newRuleResult' smart constructor.
data RuleResult = RuleResult'
  { -- | The rule ID that was matched, based on the rule execution mode.
    ruleId :: Prelude.Maybe Prelude.Text,
    -- | The outcomes of the matched rule, based on the rule execution mode.
    outcomes :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleId', 'ruleResult_ruleId' - The rule ID that was matched, based on the rule execution mode.
--
-- 'outcomes', 'ruleResult_outcomes' - The outcomes of the matched rule, based on the rule execution mode.
newRuleResult ::
  RuleResult
newRuleResult =
  RuleResult'
    { ruleId = Prelude.Nothing,
      outcomes = Prelude.Nothing
    }

-- | The rule ID that was matched, based on the rule execution mode.
ruleResult_ruleId :: Lens.Lens' RuleResult (Prelude.Maybe Prelude.Text)
ruleResult_ruleId = Lens.lens (\RuleResult' {ruleId} -> ruleId) (\s@RuleResult' {} a -> s {ruleId = a} :: RuleResult)

-- | The outcomes of the matched rule, based on the rule execution mode.
ruleResult_outcomes :: Lens.Lens' RuleResult (Prelude.Maybe [Prelude.Text])
ruleResult_outcomes = Lens.lens (\RuleResult' {outcomes} -> outcomes) (\s@RuleResult' {} a -> s {outcomes = a} :: RuleResult) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RuleResult where
  parseJSON =
    Core.withObject
      "RuleResult"
      ( \x ->
          RuleResult'
            Prelude.<$> (x Core..:? "ruleId")
            Prelude.<*> (x Core..:? "outcomes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable RuleResult

instance Prelude.NFData RuleResult
