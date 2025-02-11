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
-- Module      : Network.AWS.IoTEvents.Types.AnalysisResultLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.AnalysisResultLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information that you can use to locate the field in your
-- detector model that the analysis result references.
--
-- /See:/ 'newAnalysisResultLocation' smart constructor.
data AnalysisResultLocation = AnalysisResultLocation'
  { -- | A <https://github.com/json-path/JsonPath JsonPath> expression that
    -- identifies the error field in your detector model.
    path :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisResultLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'path', 'analysisResultLocation_path' - A <https://github.com/json-path/JsonPath JsonPath> expression that
-- identifies the error field in your detector model.
newAnalysisResultLocation ::
  AnalysisResultLocation
newAnalysisResultLocation =
  AnalysisResultLocation' {path = Prelude.Nothing}

-- | A <https://github.com/json-path/JsonPath JsonPath> expression that
-- identifies the error field in your detector model.
analysisResultLocation_path :: Lens.Lens' AnalysisResultLocation (Prelude.Maybe Prelude.Text)
analysisResultLocation_path = Lens.lens (\AnalysisResultLocation' {path} -> path) (\s@AnalysisResultLocation' {} a -> s {path = a} :: AnalysisResultLocation)

instance Core.FromJSON AnalysisResultLocation where
  parseJSON =
    Core.withObject
      "AnalysisResultLocation"
      ( \x ->
          AnalysisResultLocation'
            Prelude.<$> (x Core..:? "path")
      )

instance Prelude.Hashable AnalysisResultLocation

instance Prelude.NFData AnalysisResultLocation
