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
-- Module      : Network.AWS.Lightsail.Types.AvailabilityZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AvailabilityZone where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an Availability Zone.
--
-- /See:/ 'newAvailabilityZone' smart constructor.
data AvailabilityZone = AvailabilityZone'
  { -- | The state of the Availability Zone.
    state :: Prelude.Maybe Prelude.Text,
    -- | The name of the Availability Zone. The format is @us-east-2a@
    -- (case-sensitive).
    zoneName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AvailabilityZone' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'availabilityZone_state' - The state of the Availability Zone.
--
-- 'zoneName', 'availabilityZone_zoneName' - The name of the Availability Zone. The format is @us-east-2a@
-- (case-sensitive).
newAvailabilityZone ::
  AvailabilityZone
newAvailabilityZone =
  AvailabilityZone'
    { state = Prelude.Nothing,
      zoneName = Prelude.Nothing
    }

-- | The state of the Availability Zone.
availabilityZone_state :: Lens.Lens' AvailabilityZone (Prelude.Maybe Prelude.Text)
availabilityZone_state = Lens.lens (\AvailabilityZone' {state} -> state) (\s@AvailabilityZone' {} a -> s {state = a} :: AvailabilityZone)

-- | The name of the Availability Zone. The format is @us-east-2a@
-- (case-sensitive).
availabilityZone_zoneName :: Lens.Lens' AvailabilityZone (Prelude.Maybe Prelude.Text)
availabilityZone_zoneName = Lens.lens (\AvailabilityZone' {zoneName} -> zoneName) (\s@AvailabilityZone' {} a -> s {zoneName = a} :: AvailabilityZone)

instance Core.FromJSON AvailabilityZone where
  parseJSON =
    Core.withObject
      "AvailabilityZone"
      ( \x ->
          AvailabilityZone'
            Prelude.<$> (x Core..:? "state")
            Prelude.<*> (x Core..:? "zoneName")
      )

instance Prelude.Hashable AvailabilityZone

instance Prelude.NFData AvailabilityZone
