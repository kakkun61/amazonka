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
-- Module      : Network.AWS.AppFlow.Types.HoneycodeDestinationProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.HoneycodeDestinationProperties where

import Network.AWS.AppFlow.Types.ErrorHandlingConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when Amazon Honeycode is used as a
-- destination.
--
-- /See:/ 'newHoneycodeDestinationProperties' smart constructor.
data HoneycodeDestinationProperties = HoneycodeDestinationProperties'
  { errorHandlingConfig :: Prelude.Maybe ErrorHandlingConfig,
    -- | The object specified in the Amazon Honeycode flow destination.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HoneycodeDestinationProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorHandlingConfig', 'honeycodeDestinationProperties_errorHandlingConfig' - Undocumented member.
--
-- 'object'', 'honeycodeDestinationProperties_object' - The object specified in the Amazon Honeycode flow destination.
newHoneycodeDestinationProperties ::
  -- | 'object''
  Prelude.Text ->
  HoneycodeDestinationProperties
newHoneycodeDestinationProperties pObject_ =
  HoneycodeDestinationProperties'
    { errorHandlingConfig =
        Prelude.Nothing,
      object' = pObject_
    }

-- | Undocumented member.
honeycodeDestinationProperties_errorHandlingConfig :: Lens.Lens' HoneycodeDestinationProperties (Prelude.Maybe ErrorHandlingConfig)
honeycodeDestinationProperties_errorHandlingConfig = Lens.lens (\HoneycodeDestinationProperties' {errorHandlingConfig} -> errorHandlingConfig) (\s@HoneycodeDestinationProperties' {} a -> s {errorHandlingConfig = a} :: HoneycodeDestinationProperties)

-- | The object specified in the Amazon Honeycode flow destination.
honeycodeDestinationProperties_object :: Lens.Lens' HoneycodeDestinationProperties Prelude.Text
honeycodeDestinationProperties_object = Lens.lens (\HoneycodeDestinationProperties' {object'} -> object') (\s@HoneycodeDestinationProperties' {} a -> s {object' = a} :: HoneycodeDestinationProperties)

instance Core.FromJSON HoneycodeDestinationProperties where
  parseJSON =
    Core.withObject
      "HoneycodeDestinationProperties"
      ( \x ->
          HoneycodeDestinationProperties'
            Prelude.<$> (x Core..:? "errorHandlingConfig")
            Prelude.<*> (x Core..: "object")
      )

instance
  Prelude.Hashable
    HoneycodeDestinationProperties

instance
  Prelude.NFData
    HoneycodeDestinationProperties

instance Core.ToJSON HoneycodeDestinationProperties where
  toJSON HoneycodeDestinationProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("errorHandlingConfig" Core..=)
              Prelude.<$> errorHandlingConfig,
            Prelude.Just ("object" Core..= object')
          ]
      )
