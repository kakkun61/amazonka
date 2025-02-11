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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration of the Glue Data Catalog that you use for Apache Flink
-- SQL queries and table API transforms that you write in an application.
--
-- /See:/ 'newGlueDataCatalogConfiguration' smart constructor.
data GlueDataCatalogConfiguration = GlueDataCatalogConfiguration'
  { -- | The Amazon Resource Name (ARN) of the database.
    databaseARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GlueDataCatalogConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseARN', 'glueDataCatalogConfiguration_databaseARN' - The Amazon Resource Name (ARN) of the database.
newGlueDataCatalogConfiguration ::
  -- | 'databaseARN'
  Prelude.Text ->
  GlueDataCatalogConfiguration
newGlueDataCatalogConfiguration pDatabaseARN_ =
  GlueDataCatalogConfiguration'
    { databaseARN =
        pDatabaseARN_
    }

-- | The Amazon Resource Name (ARN) of the database.
glueDataCatalogConfiguration_databaseARN :: Lens.Lens' GlueDataCatalogConfiguration Prelude.Text
glueDataCatalogConfiguration_databaseARN = Lens.lens (\GlueDataCatalogConfiguration' {databaseARN} -> databaseARN) (\s@GlueDataCatalogConfiguration' {} a -> s {databaseARN = a} :: GlueDataCatalogConfiguration)

instance
  Prelude.Hashable
    GlueDataCatalogConfiguration

instance Prelude.NFData GlueDataCatalogConfiguration

instance Core.ToJSON GlueDataCatalogConfiguration where
  toJSON GlueDataCatalogConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("DatabaseARN" Core..= databaseARN)]
      )
