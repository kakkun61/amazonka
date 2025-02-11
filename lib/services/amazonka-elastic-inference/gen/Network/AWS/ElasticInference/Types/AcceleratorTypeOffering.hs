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
-- Module      : Network.AWS.ElasticInference.Types.AcceleratorTypeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticInference.Types.AcceleratorTypeOffering where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticInference.Types.LocationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The offering for an Elastic Inference Accelerator type.
--
-- /See:/ 'newAcceleratorTypeOffering' smart constructor.
data AcceleratorTypeOffering = AcceleratorTypeOffering'
  { -- | The name of the Elastic Inference Accelerator type.
    acceleratorType :: Prelude.Maybe Prelude.Text,
    -- | The location for the offering. It will return either the region,
    -- availability zone or availability zone id for the offering depending on
    -- the locationType value.
    location :: Prelude.Maybe Prelude.Text,
    -- | The location type for the offering. It can assume the following values:
    -- region: defines that the offering is at the regional level.
    -- availability-zone: defines that the offering is at the availability zone
    -- level. availability-zone-id: defines that the offering is at the
    -- availability zone level, defined by the availability zone id.
    locationType :: Prelude.Maybe LocationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceleratorTypeOffering' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceleratorType', 'acceleratorTypeOffering_acceleratorType' - The name of the Elastic Inference Accelerator type.
--
-- 'location', 'acceleratorTypeOffering_location' - The location for the offering. It will return either the region,
-- availability zone or availability zone id for the offering depending on
-- the locationType value.
--
-- 'locationType', 'acceleratorTypeOffering_locationType' - The location type for the offering. It can assume the following values:
-- region: defines that the offering is at the regional level.
-- availability-zone: defines that the offering is at the availability zone
-- level. availability-zone-id: defines that the offering is at the
-- availability zone level, defined by the availability zone id.
newAcceleratorTypeOffering ::
  AcceleratorTypeOffering
newAcceleratorTypeOffering =
  AcceleratorTypeOffering'
    { acceleratorType =
        Prelude.Nothing,
      location = Prelude.Nothing,
      locationType = Prelude.Nothing
    }

-- | The name of the Elastic Inference Accelerator type.
acceleratorTypeOffering_acceleratorType :: Lens.Lens' AcceleratorTypeOffering (Prelude.Maybe Prelude.Text)
acceleratorTypeOffering_acceleratorType = Lens.lens (\AcceleratorTypeOffering' {acceleratorType} -> acceleratorType) (\s@AcceleratorTypeOffering' {} a -> s {acceleratorType = a} :: AcceleratorTypeOffering)

-- | The location for the offering. It will return either the region,
-- availability zone or availability zone id for the offering depending on
-- the locationType value.
acceleratorTypeOffering_location :: Lens.Lens' AcceleratorTypeOffering (Prelude.Maybe Prelude.Text)
acceleratorTypeOffering_location = Lens.lens (\AcceleratorTypeOffering' {location} -> location) (\s@AcceleratorTypeOffering' {} a -> s {location = a} :: AcceleratorTypeOffering)

-- | The location type for the offering. It can assume the following values:
-- region: defines that the offering is at the regional level.
-- availability-zone: defines that the offering is at the availability zone
-- level. availability-zone-id: defines that the offering is at the
-- availability zone level, defined by the availability zone id.
acceleratorTypeOffering_locationType :: Lens.Lens' AcceleratorTypeOffering (Prelude.Maybe LocationType)
acceleratorTypeOffering_locationType = Lens.lens (\AcceleratorTypeOffering' {locationType} -> locationType) (\s@AcceleratorTypeOffering' {} a -> s {locationType = a} :: AcceleratorTypeOffering)

instance Core.FromJSON AcceleratorTypeOffering where
  parseJSON =
    Core.withObject
      "AcceleratorTypeOffering"
      ( \x ->
          AcceleratorTypeOffering'
            Prelude.<$> (x Core..:? "acceleratorType")
            Prelude.<*> (x Core..:? "location")
            Prelude.<*> (x Core..:? "locationType")
      )

instance Prelude.Hashable AcceleratorTypeOffering

instance Prelude.NFData AcceleratorTypeOffering
