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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration parameters for the default Amazon Glue database. You
-- use this database for Apache Flink SQL queries and table API transforms
-- that you write in a Kinesis Data Analytics Studio notebook.
--
-- /See:/ 'newCatalogConfigurationDescription' smart constructor.
data CatalogConfigurationDescription = CatalogConfigurationDescription'
  { -- | The configuration parameters for the default Amazon Glue database. You
    -- use this database for SQL queries that you write in a Kinesis Data
    -- Analytics Studio notebook.
    glueDataCatalogConfigurationDescription :: GlueDataCatalogConfigurationDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CatalogConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'glueDataCatalogConfigurationDescription', 'catalogConfigurationDescription_glueDataCatalogConfigurationDescription' - The configuration parameters for the default Amazon Glue database. You
-- use this database for SQL queries that you write in a Kinesis Data
-- Analytics Studio notebook.
newCatalogConfigurationDescription ::
  -- | 'glueDataCatalogConfigurationDescription'
  GlueDataCatalogConfigurationDescription ->
  CatalogConfigurationDescription
newCatalogConfigurationDescription
  pGlueDataCatalogConfigurationDescription_ =
    CatalogConfigurationDescription'
      { glueDataCatalogConfigurationDescription =
          pGlueDataCatalogConfigurationDescription_
      }

-- | The configuration parameters for the default Amazon Glue database. You
-- use this database for SQL queries that you write in a Kinesis Data
-- Analytics Studio notebook.
catalogConfigurationDescription_glueDataCatalogConfigurationDescription :: Lens.Lens' CatalogConfigurationDescription GlueDataCatalogConfigurationDescription
catalogConfigurationDescription_glueDataCatalogConfigurationDescription = Lens.lens (\CatalogConfigurationDescription' {glueDataCatalogConfigurationDescription} -> glueDataCatalogConfigurationDescription) (\s@CatalogConfigurationDescription' {} a -> s {glueDataCatalogConfigurationDescription = a} :: CatalogConfigurationDescription)

instance
  Core.FromJSON
    CatalogConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "CatalogConfigurationDescription"
      ( \x ->
          CatalogConfigurationDescription'
            Prelude.<$> ( x
                            Core..: "GlueDataCatalogConfigurationDescription"
                        )
      )

instance
  Prelude.Hashable
    CatalogConfigurationDescription

instance
  Prelude.NFData
    CatalogConfigurationDescription
