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
-- Module      : Network.AWS.GroundStation.Types.DataflowEndpointConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.DataflowEndpointConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the dataflow endpoint @Config@.
--
-- /See:/ 'newDataflowEndpointConfig' smart constructor.
data DataflowEndpointConfig = DataflowEndpointConfig'
  { -- | Region of a dataflow endpoint.
    dataflowEndpointRegion :: Prelude.Maybe Prelude.Text,
    -- | Name of a dataflow endpoint.
    dataflowEndpointName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataflowEndpointConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataflowEndpointRegion', 'dataflowEndpointConfig_dataflowEndpointRegion' - Region of a dataflow endpoint.
--
-- 'dataflowEndpointName', 'dataflowEndpointConfig_dataflowEndpointName' - Name of a dataflow endpoint.
newDataflowEndpointConfig ::
  -- | 'dataflowEndpointName'
  Prelude.Text ->
  DataflowEndpointConfig
newDataflowEndpointConfig pDataflowEndpointName_ =
  DataflowEndpointConfig'
    { dataflowEndpointRegion =
        Prelude.Nothing,
      dataflowEndpointName = pDataflowEndpointName_
    }

-- | Region of a dataflow endpoint.
dataflowEndpointConfig_dataflowEndpointRegion :: Lens.Lens' DataflowEndpointConfig (Prelude.Maybe Prelude.Text)
dataflowEndpointConfig_dataflowEndpointRegion = Lens.lens (\DataflowEndpointConfig' {dataflowEndpointRegion} -> dataflowEndpointRegion) (\s@DataflowEndpointConfig' {} a -> s {dataflowEndpointRegion = a} :: DataflowEndpointConfig)

-- | Name of a dataflow endpoint.
dataflowEndpointConfig_dataflowEndpointName :: Lens.Lens' DataflowEndpointConfig Prelude.Text
dataflowEndpointConfig_dataflowEndpointName = Lens.lens (\DataflowEndpointConfig' {dataflowEndpointName} -> dataflowEndpointName) (\s@DataflowEndpointConfig' {} a -> s {dataflowEndpointName = a} :: DataflowEndpointConfig)

instance Core.FromJSON DataflowEndpointConfig where
  parseJSON =
    Core.withObject
      "DataflowEndpointConfig"
      ( \x ->
          DataflowEndpointConfig'
            Prelude.<$> (x Core..:? "dataflowEndpointRegion")
            Prelude.<*> (x Core..: "dataflowEndpointName")
      )

instance Prelude.Hashable DataflowEndpointConfig

instance Prelude.NFData DataflowEndpointConfig

instance Core.ToJSON DataflowEndpointConfig where
  toJSON DataflowEndpointConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("dataflowEndpointRegion" Core..=)
              Prelude.<$> dataflowEndpointRegion,
            Prelude.Just
              ( "dataflowEndpointName"
                  Core..= dataflowEndpointName
              )
          ]
      )
