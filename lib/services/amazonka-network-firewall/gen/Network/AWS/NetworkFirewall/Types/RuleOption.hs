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
-- Module      : Network.AWS.NetworkFirewall.Types.RuleOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.RuleOption where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Additional settings for a stateful rule. This is part of the
-- StatefulRule configuration.
--
-- /See:/ 'newRuleOption' smart constructor.
data RuleOption = RuleOption'
  { settings :: Prelude.Maybe [Prelude.Text],
    keyword :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'settings', 'ruleOption_settings' -
--
-- 'keyword', 'ruleOption_keyword' -
newRuleOption ::
  -- | 'keyword'
  Prelude.Text ->
  RuleOption
newRuleOption pKeyword_ =
  RuleOption'
    { settings = Prelude.Nothing,
      keyword = pKeyword_
    }

-- |
ruleOption_settings :: Lens.Lens' RuleOption (Prelude.Maybe [Prelude.Text])
ruleOption_settings = Lens.lens (\RuleOption' {settings} -> settings) (\s@RuleOption' {} a -> s {settings = a} :: RuleOption) Prelude.. Lens.mapping Lens.coerced

-- |
ruleOption_keyword :: Lens.Lens' RuleOption Prelude.Text
ruleOption_keyword = Lens.lens (\RuleOption' {keyword} -> keyword) (\s@RuleOption' {} a -> s {keyword = a} :: RuleOption)

instance Core.FromJSON RuleOption where
  parseJSON =
    Core.withObject
      "RuleOption"
      ( \x ->
          RuleOption'
            Prelude.<$> (x Core..:? "Settings" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Keyword")
      )

instance Prelude.Hashable RuleOption

instance Prelude.NFData RuleOption

instance Core.ToJSON RuleOption where
  toJSON RuleOption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Settings" Core..=) Prelude.<$> settings,
            Prelude.Just ("Keyword" Core..= keyword)
          ]
      )
