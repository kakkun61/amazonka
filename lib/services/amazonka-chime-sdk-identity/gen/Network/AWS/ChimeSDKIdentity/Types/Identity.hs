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
-- Module      : Network.AWS.ChimeSDKIdentity.Types.Identity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKIdentity.Types.Identity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of a user.
--
-- /See:/ 'newIdentity' smart constructor.
data Identity = Identity'
  { -- | The ARN in an Identity.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name in an Identity.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Identity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'identity_arn' - The ARN in an Identity.
--
-- 'name', 'identity_name' - The name in an Identity.
newIdentity ::
  Identity
newIdentity =
  Identity'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The ARN in an Identity.
identity_arn :: Lens.Lens' Identity (Prelude.Maybe Prelude.Text)
identity_arn = Lens.lens (\Identity' {arn} -> arn) (\s@Identity' {} a -> s {arn = a} :: Identity)

-- | The name in an Identity.
identity_name :: Lens.Lens' Identity (Prelude.Maybe Prelude.Text)
identity_name = Lens.lens (\Identity' {name} -> name) (\s@Identity' {} a -> s {name = a} :: Identity) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON Identity where
  parseJSON =
    Core.withObject
      "Identity"
      ( \x ->
          Identity'
            Prelude.<$> (x Core..:? "Arn") Prelude.<*> (x Core..:? "Name")
      )

instance Prelude.Hashable Identity

instance Prelude.NFData Identity
