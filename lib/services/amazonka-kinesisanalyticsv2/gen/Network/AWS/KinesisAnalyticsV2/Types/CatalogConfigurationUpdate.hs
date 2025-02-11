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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Updates to the configuration parameters for the default Amazon Glue
-- database. You use this database for SQL queries that you write in a
-- Kinesis Data Analytics Studio notebook.
--
-- /See:/ 'newCatalogConfigurationUpdate' smart constructor.
data CatalogConfigurationUpdate = CatalogConfigurationUpdate'
  { -- | Updates to the configuration parameters for the default Amazon Glue
    -- database. You use this database for SQL queries that you write in a
    -- Kinesis Data Analytics Studio notebook.
    glueDataCatalogConfigurationUpdate :: GlueDataCatalogConfigurationUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CatalogConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'glueDataCatalogConfigurationUpdate', 'catalogConfigurationUpdate_glueDataCatalogConfigurationUpdate' - Updates to the configuration parameters for the default Amazon Glue
-- database. You use this database for SQL queries that you write in a
-- Kinesis Data Analytics Studio notebook.
newCatalogConfigurationUpdate ::
  -- | 'glueDataCatalogConfigurationUpdate'
  GlueDataCatalogConfigurationUpdate ->
  CatalogConfigurationUpdate
newCatalogConfigurationUpdate
  pGlueDataCatalogConfigurationUpdate_ =
    CatalogConfigurationUpdate'
      { glueDataCatalogConfigurationUpdate =
          pGlueDataCatalogConfigurationUpdate_
      }

-- | Updates to the configuration parameters for the default Amazon Glue
-- database. You use this database for SQL queries that you write in a
-- Kinesis Data Analytics Studio notebook.
catalogConfigurationUpdate_glueDataCatalogConfigurationUpdate :: Lens.Lens' CatalogConfigurationUpdate GlueDataCatalogConfigurationUpdate
catalogConfigurationUpdate_glueDataCatalogConfigurationUpdate = Lens.lens (\CatalogConfigurationUpdate' {glueDataCatalogConfigurationUpdate} -> glueDataCatalogConfigurationUpdate) (\s@CatalogConfigurationUpdate' {} a -> s {glueDataCatalogConfigurationUpdate = a} :: CatalogConfigurationUpdate)

instance Prelude.Hashable CatalogConfigurationUpdate

instance Prelude.NFData CatalogConfigurationUpdate

instance Core.ToJSON CatalogConfigurationUpdate where
  toJSON CatalogConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "GlueDataCatalogConfigurationUpdate"
                  Core..= glueDataCatalogConfigurationUpdate
              )
          ]
      )
