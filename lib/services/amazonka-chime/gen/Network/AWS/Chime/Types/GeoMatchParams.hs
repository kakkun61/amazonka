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
-- Module      : Network.AWS.Chime.Types.GeoMatchParams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.GeoMatchParams where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The country and area code for a proxy phone number in a proxy phone
-- session.
--
-- /See:/ 'newGeoMatchParams' smart constructor.
data GeoMatchParams = GeoMatchParams'
  { -- | The country.
    country :: Prelude.Text,
    -- | The area code.
    areaCode :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GeoMatchParams' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'country', 'geoMatchParams_country' - The country.
--
-- 'areaCode', 'geoMatchParams_areaCode' - The area code.
newGeoMatchParams ::
  -- | 'country'
  Prelude.Text ->
  -- | 'areaCode'
  Prelude.Text ->
  GeoMatchParams
newGeoMatchParams pCountry_ pAreaCode_ =
  GeoMatchParams'
    { country = pCountry_,
      areaCode = pAreaCode_
    }

-- | The country.
geoMatchParams_country :: Lens.Lens' GeoMatchParams Prelude.Text
geoMatchParams_country = Lens.lens (\GeoMatchParams' {country} -> country) (\s@GeoMatchParams' {} a -> s {country = a} :: GeoMatchParams)

-- | The area code.
geoMatchParams_areaCode :: Lens.Lens' GeoMatchParams Prelude.Text
geoMatchParams_areaCode = Lens.lens (\GeoMatchParams' {areaCode} -> areaCode) (\s@GeoMatchParams' {} a -> s {areaCode = a} :: GeoMatchParams)

instance Core.FromJSON GeoMatchParams where
  parseJSON =
    Core.withObject
      "GeoMatchParams"
      ( \x ->
          GeoMatchParams'
            Prelude.<$> (x Core..: "Country")
            Prelude.<*> (x Core..: "AreaCode")
      )

instance Prelude.Hashable GeoMatchParams

instance Prelude.NFData GeoMatchParams

instance Core.ToJSON GeoMatchParams where
  toJSON GeoMatchParams' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Country" Core..= country),
            Prelude.Just ("AreaCode" Core..= areaCode)
          ]
      )
