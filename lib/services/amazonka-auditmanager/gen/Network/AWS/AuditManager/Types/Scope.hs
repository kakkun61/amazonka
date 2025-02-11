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
-- Module      : Network.AWS.AuditManager.Types.Scope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AuditManager.Types.Scope where

import Network.AWS.AuditManager.Types.AWSAccount
import Network.AWS.AuditManager.Types.AWSService
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The wrapper that contains the Amazon Web Services accounts and services
-- in scope for the assessment.
--
-- /See:/ 'newScope' smart constructor.
data Scope = Scope'
  { -- | The Amazon Web Services accounts included in the scope of the
    -- assessment.
    awsAccounts :: Prelude.Maybe [AWSAccount],
    -- | The Amazon Web Services services included in the scope of the
    -- assessment.
    awsServices :: Prelude.Maybe [AWSService]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Scope' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccounts', 'scope_awsAccounts' - The Amazon Web Services accounts included in the scope of the
-- assessment.
--
-- 'awsServices', 'scope_awsServices' - The Amazon Web Services services included in the scope of the
-- assessment.
newScope ::
  Scope
newScope =
  Scope'
    { awsAccounts = Prelude.Nothing,
      awsServices = Prelude.Nothing
    }

-- | The Amazon Web Services accounts included in the scope of the
-- assessment.
scope_awsAccounts :: Lens.Lens' Scope (Prelude.Maybe [AWSAccount])
scope_awsAccounts = Lens.lens (\Scope' {awsAccounts} -> awsAccounts) (\s@Scope' {} a -> s {awsAccounts = a} :: Scope) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services services included in the scope of the
-- assessment.
scope_awsServices :: Lens.Lens' Scope (Prelude.Maybe [AWSService])
scope_awsServices = Lens.lens (\Scope' {awsServices} -> awsServices) (\s@Scope' {} a -> s {awsServices = a} :: Scope) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Scope where
  parseJSON =
    Core.withObject
      "Scope"
      ( \x ->
          Scope'
            Prelude.<$> (x Core..:? "awsAccounts" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "awsServices" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Scope

instance Prelude.NFData Scope

instance Core.ToJSON Scope where
  toJSON Scope' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("awsAccounts" Core..=) Prelude.<$> awsAccounts,
            ("awsServices" Core..=) Prelude.<$> awsServices
          ]
      )
