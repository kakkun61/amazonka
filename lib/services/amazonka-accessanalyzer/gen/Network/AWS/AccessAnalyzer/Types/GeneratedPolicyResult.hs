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
-- Module      : Network.AWS.AccessAnalyzer.Types.GeneratedPolicyResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.GeneratedPolicyResult where

import Network.AWS.AccessAnalyzer.Types.GeneratedPolicy
import Network.AWS.AccessAnalyzer.Types.GeneratedPolicyProperties
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the text for the generated policy and its details.
--
-- /See:/ 'newGeneratedPolicyResult' smart constructor.
data GeneratedPolicyResult = GeneratedPolicyResult'
  { -- | The text to use as the content for the new policy. The policy is created
    -- using the
    -- <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html CreatePolicy>
    -- action.
    generatedPolicies :: Prelude.Maybe [GeneratedPolicy],
    -- | A @GeneratedPolicyProperties@ object that contains properties of the
    -- generated policy.
    properties :: GeneratedPolicyProperties
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GeneratedPolicyResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'generatedPolicies', 'generatedPolicyResult_generatedPolicies' - The text to use as the content for the new policy. The policy is created
-- using the
-- <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html CreatePolicy>
-- action.
--
-- 'properties', 'generatedPolicyResult_properties' - A @GeneratedPolicyProperties@ object that contains properties of the
-- generated policy.
newGeneratedPolicyResult ::
  -- | 'properties'
  GeneratedPolicyProperties ->
  GeneratedPolicyResult
newGeneratedPolicyResult pProperties_ =
  GeneratedPolicyResult'
    { generatedPolicies =
        Prelude.Nothing,
      properties = pProperties_
    }

-- | The text to use as the content for the new policy. The policy is created
-- using the
-- <https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html CreatePolicy>
-- action.
generatedPolicyResult_generatedPolicies :: Lens.Lens' GeneratedPolicyResult (Prelude.Maybe [GeneratedPolicy])
generatedPolicyResult_generatedPolicies = Lens.lens (\GeneratedPolicyResult' {generatedPolicies} -> generatedPolicies) (\s@GeneratedPolicyResult' {} a -> s {generatedPolicies = a} :: GeneratedPolicyResult) Prelude.. Lens.mapping Lens.coerced

-- | A @GeneratedPolicyProperties@ object that contains properties of the
-- generated policy.
generatedPolicyResult_properties :: Lens.Lens' GeneratedPolicyResult GeneratedPolicyProperties
generatedPolicyResult_properties = Lens.lens (\GeneratedPolicyResult' {properties} -> properties) (\s@GeneratedPolicyResult' {} a -> s {properties = a} :: GeneratedPolicyResult)

instance Core.FromJSON GeneratedPolicyResult where
  parseJSON =
    Core.withObject
      "GeneratedPolicyResult"
      ( \x ->
          GeneratedPolicyResult'
            Prelude.<$> ( x Core..:? "generatedPolicies"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "properties")
      )

instance Prelude.Hashable GeneratedPolicyResult

instance Prelude.NFData GeneratedPolicyResult
