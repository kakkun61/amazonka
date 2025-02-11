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
-- Module      : Network.AWS.AppFlow.Types.SingularSourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.SingularSourceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when Singular is being used as a source.
--
-- /See:/ 'newSingularSourceProperties' smart constructor.
data SingularSourceProperties = SingularSourceProperties'
  { -- | The object specified in the Singular flow source.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SingularSourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'object'', 'singularSourceProperties_object' - The object specified in the Singular flow source.
newSingularSourceProperties ::
  -- | 'object''
  Prelude.Text ->
  SingularSourceProperties
newSingularSourceProperties pObject_ =
  SingularSourceProperties' {object' = pObject_}

-- | The object specified in the Singular flow source.
singularSourceProperties_object :: Lens.Lens' SingularSourceProperties Prelude.Text
singularSourceProperties_object = Lens.lens (\SingularSourceProperties' {object'} -> object') (\s@SingularSourceProperties' {} a -> s {object' = a} :: SingularSourceProperties)

instance Core.FromJSON SingularSourceProperties where
  parseJSON =
    Core.withObject
      "SingularSourceProperties"
      ( \x ->
          SingularSourceProperties'
            Prelude.<$> (x Core..: "object")
      )

instance Prelude.Hashable SingularSourceProperties

instance Prelude.NFData SingularSourceProperties

instance Core.ToJSON SingularSourceProperties where
  toJSON SingularSourceProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("object" Core..= object')]
      )
