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
-- Module      : Network.AWS.HoneyCode.Types.ImportDataSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.ImportDataSourceConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that contains the configuration parameters for the data source
-- of an import request.
--
-- /See:/ 'newImportDataSourceConfig' smart constructor.
data ImportDataSourceConfig = ImportDataSourceConfig'
  { -- | The URL from which source data will be downloaded for the import
    -- request.
    dataSourceUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportDataSourceConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSourceUrl', 'importDataSourceConfig_dataSourceUrl' - The URL from which source data will be downloaded for the import
-- request.
newImportDataSourceConfig ::
  ImportDataSourceConfig
newImportDataSourceConfig =
  ImportDataSourceConfig'
    { dataSourceUrl =
        Prelude.Nothing
    }

-- | The URL from which source data will be downloaded for the import
-- request.
importDataSourceConfig_dataSourceUrl :: Lens.Lens' ImportDataSourceConfig (Prelude.Maybe Prelude.Text)
importDataSourceConfig_dataSourceUrl = Lens.lens (\ImportDataSourceConfig' {dataSourceUrl} -> dataSourceUrl) (\s@ImportDataSourceConfig' {} a -> s {dataSourceUrl = a} :: ImportDataSourceConfig)

instance Core.FromJSON ImportDataSourceConfig where
  parseJSON =
    Core.withObject
      "ImportDataSourceConfig"
      ( \x ->
          ImportDataSourceConfig'
            Prelude.<$> (x Core..:? "dataSourceUrl")
      )

instance Prelude.Hashable ImportDataSourceConfig

instance Prelude.NFData ImportDataSourceConfig

instance Core.ToJSON ImportDataSourceConfig where
  toJSON ImportDataSourceConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("dataSourceUrl" Core..=)
              Prelude.<$> dataSourceUrl
          ]
      )
