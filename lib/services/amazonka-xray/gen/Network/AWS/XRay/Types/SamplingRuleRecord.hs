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
-- Module      : Network.AWS.XRay.Types.SamplingRuleRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.SamplingRuleRecord where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.XRay.Types.SamplingRule

-- | A
-- <https://docs.aws.amazon.com/xray/latest/api/API_SamplingRule.html SamplingRule>
-- and its metadata.
--
-- /See:/ 'newSamplingRuleRecord' smart constructor.
data SamplingRuleRecord = SamplingRuleRecord'
  { -- | When the rule was last modified.
    modifiedAt :: Prelude.Maybe Core.POSIX,
    -- | The sampling rule.
    samplingRule :: Prelude.Maybe SamplingRule,
    -- | When the rule was created.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SamplingRuleRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modifiedAt', 'samplingRuleRecord_modifiedAt' - When the rule was last modified.
--
-- 'samplingRule', 'samplingRuleRecord_samplingRule' - The sampling rule.
--
-- 'createdAt', 'samplingRuleRecord_createdAt' - When the rule was created.
newSamplingRuleRecord ::
  SamplingRuleRecord
newSamplingRuleRecord =
  SamplingRuleRecord'
    { modifiedAt = Prelude.Nothing,
      samplingRule = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | When the rule was last modified.
samplingRuleRecord_modifiedAt :: Lens.Lens' SamplingRuleRecord (Prelude.Maybe Prelude.UTCTime)
samplingRuleRecord_modifiedAt = Lens.lens (\SamplingRuleRecord' {modifiedAt} -> modifiedAt) (\s@SamplingRuleRecord' {} a -> s {modifiedAt = a} :: SamplingRuleRecord) Prelude.. Lens.mapping Core._Time

-- | The sampling rule.
samplingRuleRecord_samplingRule :: Lens.Lens' SamplingRuleRecord (Prelude.Maybe SamplingRule)
samplingRuleRecord_samplingRule = Lens.lens (\SamplingRuleRecord' {samplingRule} -> samplingRule) (\s@SamplingRuleRecord' {} a -> s {samplingRule = a} :: SamplingRuleRecord)

-- | When the rule was created.
samplingRuleRecord_createdAt :: Lens.Lens' SamplingRuleRecord (Prelude.Maybe Prelude.UTCTime)
samplingRuleRecord_createdAt = Lens.lens (\SamplingRuleRecord' {createdAt} -> createdAt) (\s@SamplingRuleRecord' {} a -> s {createdAt = a} :: SamplingRuleRecord) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON SamplingRuleRecord where
  parseJSON =
    Core.withObject
      "SamplingRuleRecord"
      ( \x ->
          SamplingRuleRecord'
            Prelude.<$> (x Core..:? "ModifiedAt")
            Prelude.<*> (x Core..:? "SamplingRule")
            Prelude.<*> (x Core..:? "CreatedAt")
      )

instance Prelude.Hashable SamplingRuleRecord

instance Prelude.NFData SamplingRuleRecord
