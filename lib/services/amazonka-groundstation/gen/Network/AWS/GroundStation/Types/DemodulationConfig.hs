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
-- Module      : Network.AWS.GroundStation.Types.DemodulationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.DemodulationConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the demodulation @Config@.
--
-- /See:/ 'newDemodulationConfig' smart constructor.
data DemodulationConfig = DemodulationConfig'
  { -- | Unvalidated JSON of a demodulation @Config@.
    unvalidatedJSON :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DemodulationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unvalidatedJSON', 'demodulationConfig_unvalidatedJSON' - Unvalidated JSON of a demodulation @Config@.
newDemodulationConfig ::
  -- | 'unvalidatedJSON'
  Prelude.Text ->
  DemodulationConfig
newDemodulationConfig pUnvalidatedJSON_ =
  DemodulationConfig'
    { unvalidatedJSON =
        pUnvalidatedJSON_
    }

-- | Unvalidated JSON of a demodulation @Config@.
demodulationConfig_unvalidatedJSON :: Lens.Lens' DemodulationConfig Prelude.Text
demodulationConfig_unvalidatedJSON = Lens.lens (\DemodulationConfig' {unvalidatedJSON} -> unvalidatedJSON) (\s@DemodulationConfig' {} a -> s {unvalidatedJSON = a} :: DemodulationConfig)

instance Core.FromJSON DemodulationConfig where
  parseJSON =
    Core.withObject
      "DemodulationConfig"
      ( \x ->
          DemodulationConfig'
            Prelude.<$> (x Core..: "unvalidatedJSON")
      )

instance Prelude.Hashable DemodulationConfig

instance Prelude.NFData DemodulationConfig

instance Core.ToJSON DemodulationConfig where
  toJSON DemodulationConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("unvalidatedJSON" Core..= unvalidatedJSON)
          ]
      )
