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
-- Module      : Network.AWS.SecurityHub.Types.CustomDataIdentifiersResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.CustomDataIdentifiersResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.CustomDataIdentifiersDetections

-- | Contains an instance of sensitive data that was detected by a
-- customer-defined identifier.
--
-- /See:/ 'newCustomDataIdentifiersResult' smart constructor.
data CustomDataIdentifiersResult = CustomDataIdentifiersResult'
  { -- | The list of detected instances of sensitive data.
    detections :: Prelude.Maybe [CustomDataIdentifiersDetections],
    -- | The total number of occurrences of sensitive data.
    totalCount :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomDataIdentifiersResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detections', 'customDataIdentifiersResult_detections' - The list of detected instances of sensitive data.
--
-- 'totalCount', 'customDataIdentifiersResult_totalCount' - The total number of occurrences of sensitive data.
newCustomDataIdentifiersResult ::
  CustomDataIdentifiersResult
newCustomDataIdentifiersResult =
  CustomDataIdentifiersResult'
    { detections =
        Prelude.Nothing,
      totalCount = Prelude.Nothing
    }

-- | The list of detected instances of sensitive data.
customDataIdentifiersResult_detections :: Lens.Lens' CustomDataIdentifiersResult (Prelude.Maybe [CustomDataIdentifiersDetections])
customDataIdentifiersResult_detections = Lens.lens (\CustomDataIdentifiersResult' {detections} -> detections) (\s@CustomDataIdentifiersResult' {} a -> s {detections = a} :: CustomDataIdentifiersResult) Prelude.. Lens.mapping Lens.coerced

-- | The total number of occurrences of sensitive data.
customDataIdentifiersResult_totalCount :: Lens.Lens' CustomDataIdentifiersResult (Prelude.Maybe Prelude.Integer)
customDataIdentifiersResult_totalCount = Lens.lens (\CustomDataIdentifiersResult' {totalCount} -> totalCount) (\s@CustomDataIdentifiersResult' {} a -> s {totalCount = a} :: CustomDataIdentifiersResult)

instance Core.FromJSON CustomDataIdentifiersResult where
  parseJSON =
    Core.withObject
      "CustomDataIdentifiersResult"
      ( \x ->
          CustomDataIdentifiersResult'
            Prelude.<$> (x Core..:? "Detections" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "TotalCount")
      )

instance Prelude.Hashable CustomDataIdentifiersResult

instance Prelude.NFData CustomDataIdentifiersResult

instance Core.ToJSON CustomDataIdentifiersResult where
  toJSON CustomDataIdentifiersResult' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Detections" Core..=) Prelude.<$> detections,
            ("TotalCount" Core..=) Prelude.<$> totalCount
          ]
      )
