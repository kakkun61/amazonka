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
-- Module      : Network.AWS.HealthLake.Types.PreloadDataConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HealthLake.Types.PreloadDataConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.HealthLake.Types.PreloadDataType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The input properties for the preloaded Data Store. Only data preloaded
-- from Synthea is supported.
--
-- /See:/ 'newPreloadDataConfig' smart constructor.
data PreloadDataConfig = PreloadDataConfig'
  { -- | The type of preloaded data. Only Synthea preloaded data is supported.
    preloadDataType :: PreloadDataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PreloadDataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'preloadDataType', 'preloadDataConfig_preloadDataType' - The type of preloaded data. Only Synthea preloaded data is supported.
newPreloadDataConfig ::
  -- | 'preloadDataType'
  PreloadDataType ->
  PreloadDataConfig
newPreloadDataConfig pPreloadDataType_ =
  PreloadDataConfig'
    { preloadDataType =
        pPreloadDataType_
    }

-- | The type of preloaded data. Only Synthea preloaded data is supported.
preloadDataConfig_preloadDataType :: Lens.Lens' PreloadDataConfig PreloadDataType
preloadDataConfig_preloadDataType = Lens.lens (\PreloadDataConfig' {preloadDataType} -> preloadDataType) (\s@PreloadDataConfig' {} a -> s {preloadDataType = a} :: PreloadDataConfig)

instance Core.FromJSON PreloadDataConfig where
  parseJSON =
    Core.withObject
      "PreloadDataConfig"
      ( \x ->
          PreloadDataConfig'
            Prelude.<$> (x Core..: "PreloadDataType")
      )

instance Prelude.Hashable PreloadDataConfig

instance Prelude.NFData PreloadDataConfig

instance Core.ToJSON PreloadDataConfig where
  toJSON PreloadDataConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PreloadDataType" Core..= preloadDataType)
          ]
      )
