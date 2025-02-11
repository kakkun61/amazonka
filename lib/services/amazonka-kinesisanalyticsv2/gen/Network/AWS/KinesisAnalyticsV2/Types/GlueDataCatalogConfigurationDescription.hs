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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration of the Glue Data Catalog that you use for Apache Flink
-- SQL queries and table API transforms that you write in an application.
--
-- /See:/ 'newGlueDataCatalogConfigurationDescription' smart constructor.
data GlueDataCatalogConfigurationDescription = GlueDataCatalogConfigurationDescription'
  { -- | The Amazon Resource Name (ARN) of the database.
    databaseARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GlueDataCatalogConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseARN', 'glueDataCatalogConfigurationDescription_databaseARN' - The Amazon Resource Name (ARN) of the database.
newGlueDataCatalogConfigurationDescription ::
  -- | 'databaseARN'
  Prelude.Text ->
  GlueDataCatalogConfigurationDescription
newGlueDataCatalogConfigurationDescription
  pDatabaseARN_ =
    GlueDataCatalogConfigurationDescription'
      { databaseARN =
          pDatabaseARN_
      }

-- | The Amazon Resource Name (ARN) of the database.
glueDataCatalogConfigurationDescription_databaseARN :: Lens.Lens' GlueDataCatalogConfigurationDescription Prelude.Text
glueDataCatalogConfigurationDescription_databaseARN = Lens.lens (\GlueDataCatalogConfigurationDescription' {databaseARN} -> databaseARN) (\s@GlueDataCatalogConfigurationDescription' {} a -> s {databaseARN = a} :: GlueDataCatalogConfigurationDescription)

instance
  Core.FromJSON
    GlueDataCatalogConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "GlueDataCatalogConfigurationDescription"
      ( \x ->
          GlueDataCatalogConfigurationDescription'
            Prelude.<$> (x Core..: "DatabaseARN")
      )

instance
  Prelude.Hashable
    GlueDataCatalogConfigurationDescription

instance
  Prelude.NFData
    GlueDataCatalogConfigurationDescription
