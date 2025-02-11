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
-- Module      : Network.AWS.AppFlow.Types.AmplitudeSourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.AmplitudeSourceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when Amplitude is being used as a
-- source.
--
-- /See:/ 'newAmplitudeSourceProperties' smart constructor.
data AmplitudeSourceProperties = AmplitudeSourceProperties'
  { -- | The object specified in the Amplitude flow source.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AmplitudeSourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'object'', 'amplitudeSourceProperties_object' - The object specified in the Amplitude flow source.
newAmplitudeSourceProperties ::
  -- | 'object''
  Prelude.Text ->
  AmplitudeSourceProperties
newAmplitudeSourceProperties pObject_ =
  AmplitudeSourceProperties' {object' = pObject_}

-- | The object specified in the Amplitude flow source.
amplitudeSourceProperties_object :: Lens.Lens' AmplitudeSourceProperties Prelude.Text
amplitudeSourceProperties_object = Lens.lens (\AmplitudeSourceProperties' {object'} -> object') (\s@AmplitudeSourceProperties' {} a -> s {object' = a} :: AmplitudeSourceProperties)

instance Core.FromJSON AmplitudeSourceProperties where
  parseJSON =
    Core.withObject
      "AmplitudeSourceProperties"
      ( \x ->
          AmplitudeSourceProperties'
            Prelude.<$> (x Core..: "object")
      )

instance Prelude.Hashable AmplitudeSourceProperties

instance Prelude.NFData AmplitudeSourceProperties

instance Core.ToJSON AmplitudeSourceProperties where
  toJSON AmplitudeSourceProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("object" Core..= object')]
      )
