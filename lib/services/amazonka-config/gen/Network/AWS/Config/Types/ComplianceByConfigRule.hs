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
-- Module      : Network.AWS.Config.Types.ComplianceByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ComplianceByConfigRule where

import Network.AWS.Config.Types.Compliance
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Indicates whether an Config rule is compliant. A rule is compliant if
-- all of the resources that the rule evaluated comply with it. A rule is
-- noncompliant if any of these resources do not comply.
--
-- /See:/ 'newComplianceByConfigRule' smart constructor.
data ComplianceByConfigRule = ComplianceByConfigRule'
  { -- | Indicates whether the Config rule is compliant.
    compliance :: Prelude.Maybe Compliance,
    -- | The name of the Config rule.
    configRuleName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComplianceByConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compliance', 'complianceByConfigRule_compliance' - Indicates whether the Config rule is compliant.
--
-- 'configRuleName', 'complianceByConfigRule_configRuleName' - The name of the Config rule.
newComplianceByConfigRule ::
  ComplianceByConfigRule
newComplianceByConfigRule =
  ComplianceByConfigRule'
    { compliance =
        Prelude.Nothing,
      configRuleName = Prelude.Nothing
    }

-- | Indicates whether the Config rule is compliant.
complianceByConfigRule_compliance :: Lens.Lens' ComplianceByConfigRule (Prelude.Maybe Compliance)
complianceByConfigRule_compliance = Lens.lens (\ComplianceByConfigRule' {compliance} -> compliance) (\s@ComplianceByConfigRule' {} a -> s {compliance = a} :: ComplianceByConfigRule)

-- | The name of the Config rule.
complianceByConfigRule_configRuleName :: Lens.Lens' ComplianceByConfigRule (Prelude.Maybe Prelude.Text)
complianceByConfigRule_configRuleName = Lens.lens (\ComplianceByConfigRule' {configRuleName} -> configRuleName) (\s@ComplianceByConfigRule' {} a -> s {configRuleName = a} :: ComplianceByConfigRule)

instance Core.FromJSON ComplianceByConfigRule where
  parseJSON =
    Core.withObject
      "ComplianceByConfigRule"
      ( \x ->
          ComplianceByConfigRule'
            Prelude.<$> (x Core..:? "Compliance")
            Prelude.<*> (x Core..:? "ConfigRuleName")
      )

instance Prelude.Hashable ComplianceByConfigRule

instance Prelude.NFData ComplianceByConfigRule
