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
-- Module      : Network.AWS.IAM.Types.PolicyDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyDetail where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an IAM policy, including the policy document.
--
-- This data type is used as a response element in the
-- GetAccountAuthorizationDetails operation.
--
-- /See:/ 'newPolicyDetail' smart constructor.
data PolicyDetail = PolicyDetail'
  { -- | The policy document.
    policyDocument :: Prelude.Maybe Prelude.Text,
    -- | The name of the policy.
    policyName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PolicyDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyDocument', 'policyDetail_policyDocument' - The policy document.
--
-- 'policyName', 'policyDetail_policyName' - The name of the policy.
newPolicyDetail ::
  PolicyDetail
newPolicyDetail =
  PolicyDetail'
    { policyDocument = Prelude.Nothing,
      policyName = Prelude.Nothing
    }

-- | The policy document.
policyDetail_policyDocument :: Lens.Lens' PolicyDetail (Prelude.Maybe Prelude.Text)
policyDetail_policyDocument = Lens.lens (\PolicyDetail' {policyDocument} -> policyDocument) (\s@PolicyDetail' {} a -> s {policyDocument = a} :: PolicyDetail)

-- | The name of the policy.
policyDetail_policyName :: Lens.Lens' PolicyDetail (Prelude.Maybe Prelude.Text)
policyDetail_policyName = Lens.lens (\PolicyDetail' {policyName} -> policyName) (\s@PolicyDetail' {} a -> s {policyName = a} :: PolicyDetail)

instance Core.FromXML PolicyDetail where
  parseXML x =
    PolicyDetail'
      Prelude.<$> (x Core..@? "PolicyDocument")
      Prelude.<*> (x Core..@? "PolicyName")

instance Prelude.Hashable PolicyDetail

instance Prelude.NFData PolicyDetail
