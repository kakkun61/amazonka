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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CatalogConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CatalogConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration parameters for the default Amazon Glue database. You
-- use this database for SQL queries that you write in a Kinesis Data
-- Analytics Studio notebook.
--
-- /See:/ 'newCatalogConfiguration' smart constructor.
data CatalogConfiguration = CatalogConfiguration'
  { -- | The configuration parameters for the default Amazon Glue database. You
    -- use this database for Apache Flink SQL queries and table API transforms
    -- that you write in a Kinesis Data Analytics Studio notebook.
    glueDataCatalogConfiguration :: GlueDataCatalogConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CatalogConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'glueDataCatalogConfiguration', 'catalogConfiguration_glueDataCatalogConfiguration' - The configuration parameters for the default Amazon Glue database. You
-- use this database for Apache Flink SQL queries and table API transforms
-- that you write in a Kinesis Data Analytics Studio notebook.
newCatalogConfiguration ::
  -- | 'glueDataCatalogConfiguration'
  GlueDataCatalogConfiguration ->
  CatalogConfiguration
newCatalogConfiguration
  pGlueDataCatalogConfiguration_ =
    CatalogConfiguration'
      { glueDataCatalogConfiguration =
          pGlueDataCatalogConfiguration_
      }

-- | The configuration parameters for the default Amazon Glue database. You
-- use this database for Apache Flink SQL queries and table API transforms
-- that you write in a Kinesis Data Analytics Studio notebook.
catalogConfiguration_glueDataCatalogConfiguration :: Lens.Lens' CatalogConfiguration GlueDataCatalogConfiguration
catalogConfiguration_glueDataCatalogConfiguration = Lens.lens (\CatalogConfiguration' {glueDataCatalogConfiguration} -> glueDataCatalogConfiguration) (\s@CatalogConfiguration' {} a -> s {glueDataCatalogConfiguration = a} :: CatalogConfiguration)

instance Prelude.Hashable CatalogConfiguration

instance Prelude.NFData CatalogConfiguration

instance Core.ToJSON CatalogConfiguration where
  toJSON CatalogConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "GlueDataCatalogConfiguration"
                  Core..= glueDataCatalogConfiguration
              )
          ]
      )
