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
-- Module      : Network.AWS.MacieV2.Types.IpCity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.IpCity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the city that an IP address originated from.
--
-- /See:/ 'newIpCity' smart constructor.
data IpCity = IpCity'
  { -- | The name of the city.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IpCity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'ipCity_name' - The name of the city.
newIpCity ::
  IpCity
newIpCity = IpCity' {name = Prelude.Nothing}

-- | The name of the city.
ipCity_name :: Lens.Lens' IpCity (Prelude.Maybe Prelude.Text)
ipCity_name = Lens.lens (\IpCity' {name} -> name) (\s@IpCity' {} a -> s {name = a} :: IpCity)

instance Core.FromJSON IpCity where
  parseJSON =
    Core.withObject
      "IpCity"
      (\x -> IpCity' Prelude.<$> (x Core..:? "name"))

instance Prelude.Hashable IpCity

instance Prelude.NFData IpCity
