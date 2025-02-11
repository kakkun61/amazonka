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
-- Module      : Network.AWS.OpenSearch.Types.ColdStorageOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.ColdStorageOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the configuration for cold storage options such as enabled
--
-- /See:/ 'newColdStorageOptions' smart constructor.
data ColdStorageOptions = ColdStorageOptions'
  { -- | Enable cold storage option. Accepted values true or false
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColdStorageOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'coldStorageOptions_enabled' - Enable cold storage option. Accepted values true or false
newColdStorageOptions ::
  -- | 'enabled'
  Prelude.Bool ->
  ColdStorageOptions
newColdStorageOptions pEnabled_ =
  ColdStorageOptions' {enabled = pEnabled_}

-- | Enable cold storage option. Accepted values true or false
coldStorageOptions_enabled :: Lens.Lens' ColdStorageOptions Prelude.Bool
coldStorageOptions_enabled = Lens.lens (\ColdStorageOptions' {enabled} -> enabled) (\s@ColdStorageOptions' {} a -> s {enabled = a} :: ColdStorageOptions)

instance Core.FromJSON ColdStorageOptions where
  parseJSON =
    Core.withObject
      "ColdStorageOptions"
      ( \x ->
          ColdStorageOptions'
            Prelude.<$> (x Core..: "Enabled")
      )

instance Prelude.Hashable ColdStorageOptions

instance Prelude.NFData ColdStorageOptions

instance Core.ToJSON ColdStorageOptions where
  toJSON ColdStorageOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Enabled" Core..= enabled)]
      )
