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
-- Module      : Network.AWS.NetworkFirewall.Types.PortSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.PortSet where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A set of port ranges for use in the rules in a rule group.
--
-- /See:/ 'newPortSet' smart constructor.
data PortSet = PortSet'
  { -- | The set of port ranges.
    definition :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'definition', 'portSet_definition' - The set of port ranges.
newPortSet ::
  PortSet
newPortSet = PortSet' {definition = Prelude.Nothing}

-- | The set of port ranges.
portSet_definition :: Lens.Lens' PortSet (Prelude.Maybe [Prelude.Text])
portSet_definition = Lens.lens (\PortSet' {definition} -> definition) (\s@PortSet' {} a -> s {definition = a} :: PortSet) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PortSet where
  parseJSON =
    Core.withObject
      "PortSet"
      ( \x ->
          PortSet'
            Prelude.<$> (x Core..:? "Definition" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable PortSet

instance Prelude.NFData PortSet

instance Core.ToJSON PortSet where
  toJSON PortSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Definition" Core..=) Prelude.<$> definition]
      )
