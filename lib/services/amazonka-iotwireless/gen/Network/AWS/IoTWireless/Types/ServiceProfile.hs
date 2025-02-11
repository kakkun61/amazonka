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
-- Module      : Network.AWS.IoTWireless.Types.ServiceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.ServiceProfile where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a service profile.
--
-- /See:/ 'newServiceProfile' smart constructor.
data ServiceProfile = ServiceProfile'
  { -- | The Amazon Resource Name of the resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the service profile.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'serviceProfile_arn' - The Amazon Resource Name of the resource.
--
-- 'name', 'serviceProfile_name' - The name of the resource.
--
-- 'id', 'serviceProfile_id' - The ID of the service profile.
newServiceProfile ::
  ServiceProfile
newServiceProfile =
  ServiceProfile'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing
    }

-- | The Amazon Resource Name of the resource.
serviceProfile_arn :: Lens.Lens' ServiceProfile (Prelude.Maybe Prelude.Text)
serviceProfile_arn = Lens.lens (\ServiceProfile' {arn} -> arn) (\s@ServiceProfile' {} a -> s {arn = a} :: ServiceProfile)

-- | The name of the resource.
serviceProfile_name :: Lens.Lens' ServiceProfile (Prelude.Maybe Prelude.Text)
serviceProfile_name = Lens.lens (\ServiceProfile' {name} -> name) (\s@ServiceProfile' {} a -> s {name = a} :: ServiceProfile)

-- | The ID of the service profile.
serviceProfile_id :: Lens.Lens' ServiceProfile (Prelude.Maybe Prelude.Text)
serviceProfile_id = Lens.lens (\ServiceProfile' {id} -> id) (\s@ServiceProfile' {} a -> s {id = a} :: ServiceProfile)

instance Core.FromJSON ServiceProfile where
  parseJSON =
    Core.withObject
      "ServiceProfile"
      ( \x ->
          ServiceProfile'
            Prelude.<$> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Id")
      )

instance Prelude.Hashable ServiceProfile

instance Prelude.NFData ServiceProfile
