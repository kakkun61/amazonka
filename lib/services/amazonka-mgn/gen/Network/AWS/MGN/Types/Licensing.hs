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
-- Module      : Network.AWS.MGN.Types.Licensing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.Licensing where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configure Licensing.
--
-- /See:/ 'newLicensing' smart constructor.
data Licensing = Licensing'
  { -- | Configure BYOL OS licensing.
    osByol :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Licensing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'osByol', 'licensing_osByol' - Configure BYOL OS licensing.
newLicensing ::
  Licensing
newLicensing = Licensing' {osByol = Prelude.Nothing}

-- | Configure BYOL OS licensing.
licensing_osByol :: Lens.Lens' Licensing (Prelude.Maybe Prelude.Bool)
licensing_osByol = Lens.lens (\Licensing' {osByol} -> osByol) (\s@Licensing' {} a -> s {osByol = a} :: Licensing)

instance Core.FromJSON Licensing where
  parseJSON =
    Core.withObject
      "Licensing"
      (\x -> Licensing' Prelude.<$> (x Core..:? "osByol"))

instance Prelude.Hashable Licensing

instance Prelude.NFData Licensing

instance Core.ToJSON Licensing where
  toJSON Licensing' {..} =
    Core.object
      ( Prelude.catMaybes
          [("osByol" Core..=) Prelude.<$> osByol]
      )
