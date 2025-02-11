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
-- Module      : Network.AWS.SSOAdmin.Types.AttachedManagedPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSOAdmin.Types.AttachedManagedPolicy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that stores the details of the IAM managed policy.
--
-- /See:/ 'newAttachedManagedPolicy' smart constructor.
data AttachedManagedPolicy = AttachedManagedPolicy'
  { -- | The ARN of the IAM managed policy. For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the IAM managed policy.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AttachedManagedPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'attachedManagedPolicy_arn' - The ARN of the IAM managed policy. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'name', 'attachedManagedPolicy_name' - The name of the IAM managed policy.
newAttachedManagedPolicy ::
  AttachedManagedPolicy
newAttachedManagedPolicy =
  AttachedManagedPolicy'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The ARN of the IAM managed policy. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
attachedManagedPolicy_arn :: Lens.Lens' AttachedManagedPolicy (Prelude.Maybe Prelude.Text)
attachedManagedPolicy_arn = Lens.lens (\AttachedManagedPolicy' {arn} -> arn) (\s@AttachedManagedPolicy' {} a -> s {arn = a} :: AttachedManagedPolicy)

-- | The name of the IAM managed policy.
attachedManagedPolicy_name :: Lens.Lens' AttachedManagedPolicy (Prelude.Maybe Prelude.Text)
attachedManagedPolicy_name = Lens.lens (\AttachedManagedPolicy' {name} -> name) (\s@AttachedManagedPolicy' {} a -> s {name = a} :: AttachedManagedPolicy)

instance Core.FromJSON AttachedManagedPolicy where
  parseJSON =
    Core.withObject
      "AttachedManagedPolicy"
      ( \x ->
          AttachedManagedPolicy'
            Prelude.<$> (x Core..:? "Arn") Prelude.<*> (x Core..:? "Name")
      )

instance Prelude.Hashable AttachedManagedPolicy

instance Prelude.NFData AttachedManagedPolicy
