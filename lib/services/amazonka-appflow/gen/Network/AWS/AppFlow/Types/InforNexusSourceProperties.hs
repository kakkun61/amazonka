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
-- Module      : Network.AWS.AppFlow.Types.InforNexusSourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.InforNexusSourceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when Infor Nexus is being used as a
-- source.
--
-- /See:/ 'newInforNexusSourceProperties' smart constructor.
data InforNexusSourceProperties = InforNexusSourceProperties'
  { -- | The object specified in the Infor Nexus flow source.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InforNexusSourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'object'', 'inforNexusSourceProperties_object' - The object specified in the Infor Nexus flow source.
newInforNexusSourceProperties ::
  -- | 'object''
  Prelude.Text ->
  InforNexusSourceProperties
newInforNexusSourceProperties pObject_ =
  InforNexusSourceProperties' {object' = pObject_}

-- | The object specified in the Infor Nexus flow source.
inforNexusSourceProperties_object :: Lens.Lens' InforNexusSourceProperties Prelude.Text
inforNexusSourceProperties_object = Lens.lens (\InforNexusSourceProperties' {object'} -> object') (\s@InforNexusSourceProperties' {} a -> s {object' = a} :: InforNexusSourceProperties)

instance Core.FromJSON InforNexusSourceProperties where
  parseJSON =
    Core.withObject
      "InforNexusSourceProperties"
      ( \x ->
          InforNexusSourceProperties'
            Prelude.<$> (x Core..: "object")
      )

instance Prelude.Hashable InforNexusSourceProperties

instance Prelude.NFData InforNexusSourceProperties

instance Core.ToJSON InforNexusSourceProperties where
  toJSON InforNexusSourceProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("object" Core..= object')]
      )
