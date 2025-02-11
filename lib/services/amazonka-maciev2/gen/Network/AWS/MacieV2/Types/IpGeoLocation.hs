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
-- Module      : Network.AWS.MacieV2.Types.IpGeoLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.IpGeoLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides geographic coordinates that indicate where a specified IP
-- address originated from.
--
-- /See:/ 'newIpGeoLocation' smart constructor.
data IpGeoLocation = IpGeoLocation'
  { -- | The latitude coordinate of the location, rounded to four decimal places.
    lat :: Prelude.Maybe Prelude.Double,
    -- | The longitude coordinate of the location, rounded to four decimal
    -- places.
    lon :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IpGeoLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lat', 'ipGeoLocation_lat' - The latitude coordinate of the location, rounded to four decimal places.
--
-- 'lon', 'ipGeoLocation_lon' - The longitude coordinate of the location, rounded to four decimal
-- places.
newIpGeoLocation ::
  IpGeoLocation
newIpGeoLocation =
  IpGeoLocation'
    { lat = Prelude.Nothing,
      lon = Prelude.Nothing
    }

-- | The latitude coordinate of the location, rounded to four decimal places.
ipGeoLocation_lat :: Lens.Lens' IpGeoLocation (Prelude.Maybe Prelude.Double)
ipGeoLocation_lat = Lens.lens (\IpGeoLocation' {lat} -> lat) (\s@IpGeoLocation' {} a -> s {lat = a} :: IpGeoLocation)

-- | The longitude coordinate of the location, rounded to four decimal
-- places.
ipGeoLocation_lon :: Lens.Lens' IpGeoLocation (Prelude.Maybe Prelude.Double)
ipGeoLocation_lon = Lens.lens (\IpGeoLocation' {lon} -> lon) (\s@IpGeoLocation' {} a -> s {lon = a} :: IpGeoLocation)

instance Core.FromJSON IpGeoLocation where
  parseJSON =
    Core.withObject
      "IpGeoLocation"
      ( \x ->
          IpGeoLocation'
            Prelude.<$> (x Core..:? "lat") Prelude.<*> (x Core..:? "lon")
      )

instance Prelude.Hashable IpGeoLocation

instance Prelude.NFData IpGeoLocation
