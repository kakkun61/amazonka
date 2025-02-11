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
-- Module      : Network.AWS.ECRPublic.Types.RegistryCatalogData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECRPublic.Types.RegistryCatalogData where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The metadata for a public registry.
--
-- /See:/ 'newRegistryCatalogData' smart constructor.
data RegistryCatalogData = RegistryCatalogData'
  { -- | The display name for a public registry. This appears on the Amazon ECR
    -- Public Gallery.
    --
    -- Only accounts that have the verified account badge can have a registry
    -- display name.
    displayName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegistryCatalogData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayName', 'registryCatalogData_displayName' - The display name for a public registry. This appears on the Amazon ECR
-- Public Gallery.
--
-- Only accounts that have the verified account badge can have a registry
-- display name.
newRegistryCatalogData ::
  RegistryCatalogData
newRegistryCatalogData =
  RegistryCatalogData' {displayName = Prelude.Nothing}

-- | The display name for a public registry. This appears on the Amazon ECR
-- Public Gallery.
--
-- Only accounts that have the verified account badge can have a registry
-- display name.
registryCatalogData_displayName :: Lens.Lens' RegistryCatalogData (Prelude.Maybe Prelude.Text)
registryCatalogData_displayName = Lens.lens (\RegistryCatalogData' {displayName} -> displayName) (\s@RegistryCatalogData' {} a -> s {displayName = a} :: RegistryCatalogData)

instance Core.FromJSON RegistryCatalogData where
  parseJSON =
    Core.withObject
      "RegistryCatalogData"
      ( \x ->
          RegistryCatalogData'
            Prelude.<$> (x Core..:? "displayName")
      )

instance Prelude.Hashable RegistryCatalogData

instance Prelude.NFData RegistryCatalogData
