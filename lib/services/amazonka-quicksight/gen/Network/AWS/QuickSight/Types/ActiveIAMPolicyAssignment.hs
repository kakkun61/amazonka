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
-- Module      : Network.AWS.QuickSight.Types.ActiveIAMPolicyAssignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.ActiveIAMPolicyAssignment where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The active Identity and Access Management (IAM) policy assignment.
--
-- /See:/ 'newActiveIAMPolicyAssignment' smart constructor.
data ActiveIAMPolicyAssignment = ActiveIAMPolicyAssignment'
  { -- | A name for the IAMpolicy assignment.
    assignmentName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the resource.
    policyArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActiveIAMPolicyAssignment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assignmentName', 'activeIAMPolicyAssignment_assignmentName' - A name for the IAMpolicy assignment.
--
-- 'policyArn', 'activeIAMPolicyAssignment_policyArn' - The Amazon Resource Name (ARN) of the resource.
newActiveIAMPolicyAssignment ::
  ActiveIAMPolicyAssignment
newActiveIAMPolicyAssignment =
  ActiveIAMPolicyAssignment'
    { assignmentName =
        Prelude.Nothing,
      policyArn = Prelude.Nothing
    }

-- | A name for the IAMpolicy assignment.
activeIAMPolicyAssignment_assignmentName :: Lens.Lens' ActiveIAMPolicyAssignment (Prelude.Maybe Prelude.Text)
activeIAMPolicyAssignment_assignmentName = Lens.lens (\ActiveIAMPolicyAssignment' {assignmentName} -> assignmentName) (\s@ActiveIAMPolicyAssignment' {} a -> s {assignmentName = a} :: ActiveIAMPolicyAssignment)

-- | The Amazon Resource Name (ARN) of the resource.
activeIAMPolicyAssignment_policyArn :: Lens.Lens' ActiveIAMPolicyAssignment (Prelude.Maybe Prelude.Text)
activeIAMPolicyAssignment_policyArn = Lens.lens (\ActiveIAMPolicyAssignment' {policyArn} -> policyArn) (\s@ActiveIAMPolicyAssignment' {} a -> s {policyArn = a} :: ActiveIAMPolicyAssignment)

instance Core.FromJSON ActiveIAMPolicyAssignment where
  parseJSON =
    Core.withObject
      "ActiveIAMPolicyAssignment"
      ( \x ->
          ActiveIAMPolicyAssignment'
            Prelude.<$> (x Core..:? "AssignmentName")
            Prelude.<*> (x Core..:? "PolicyArn")
      )

instance Prelude.Hashable ActiveIAMPolicyAssignment

instance Prelude.NFData ActiveIAMPolicyAssignment
