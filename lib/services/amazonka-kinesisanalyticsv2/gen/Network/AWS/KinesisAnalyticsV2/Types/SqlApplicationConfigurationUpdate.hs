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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.InputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.OutputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSourceUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes updates to the input streams, destination streams, and
-- reference data sources for a SQL-based Kinesis Data Analytics
-- application.
--
-- /See:/ 'newSqlApplicationConfigurationUpdate' smart constructor.
data SqlApplicationConfigurationUpdate = SqlApplicationConfigurationUpdate'
  { -- | The array of ReferenceDataSourceUpdate objects describing the new
    -- reference data sources used by the application.
    referenceDataSourceUpdates :: Prelude.Maybe [ReferenceDataSourceUpdate],
    -- | The array of InputUpdate objects describing the new input streams used
    -- by the application.
    inputUpdates :: Prelude.Maybe [InputUpdate],
    -- | The array of OutputUpdate objects describing the new destination streams
    -- used by the application.
    outputUpdates :: Prelude.Maybe [OutputUpdate]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SqlApplicationConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'referenceDataSourceUpdates', 'sqlApplicationConfigurationUpdate_referenceDataSourceUpdates' - The array of ReferenceDataSourceUpdate objects describing the new
-- reference data sources used by the application.
--
-- 'inputUpdates', 'sqlApplicationConfigurationUpdate_inputUpdates' - The array of InputUpdate objects describing the new input streams used
-- by the application.
--
-- 'outputUpdates', 'sqlApplicationConfigurationUpdate_outputUpdates' - The array of OutputUpdate objects describing the new destination streams
-- used by the application.
newSqlApplicationConfigurationUpdate ::
  SqlApplicationConfigurationUpdate
newSqlApplicationConfigurationUpdate =
  SqlApplicationConfigurationUpdate'
    { referenceDataSourceUpdates =
        Prelude.Nothing,
      inputUpdates = Prelude.Nothing,
      outputUpdates = Prelude.Nothing
    }

-- | The array of ReferenceDataSourceUpdate objects describing the new
-- reference data sources used by the application.
sqlApplicationConfigurationUpdate_referenceDataSourceUpdates :: Lens.Lens' SqlApplicationConfigurationUpdate (Prelude.Maybe [ReferenceDataSourceUpdate])
sqlApplicationConfigurationUpdate_referenceDataSourceUpdates = Lens.lens (\SqlApplicationConfigurationUpdate' {referenceDataSourceUpdates} -> referenceDataSourceUpdates) (\s@SqlApplicationConfigurationUpdate' {} a -> s {referenceDataSourceUpdates = a} :: SqlApplicationConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

-- | The array of InputUpdate objects describing the new input streams used
-- by the application.
sqlApplicationConfigurationUpdate_inputUpdates :: Lens.Lens' SqlApplicationConfigurationUpdate (Prelude.Maybe [InputUpdate])
sqlApplicationConfigurationUpdate_inputUpdates = Lens.lens (\SqlApplicationConfigurationUpdate' {inputUpdates} -> inputUpdates) (\s@SqlApplicationConfigurationUpdate' {} a -> s {inputUpdates = a} :: SqlApplicationConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

-- | The array of OutputUpdate objects describing the new destination streams
-- used by the application.
sqlApplicationConfigurationUpdate_outputUpdates :: Lens.Lens' SqlApplicationConfigurationUpdate (Prelude.Maybe [OutputUpdate])
sqlApplicationConfigurationUpdate_outputUpdates = Lens.lens (\SqlApplicationConfigurationUpdate' {outputUpdates} -> outputUpdates) (\s@SqlApplicationConfigurationUpdate' {} a -> s {outputUpdates = a} :: SqlApplicationConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    SqlApplicationConfigurationUpdate

instance
  Prelude.NFData
    SqlApplicationConfigurationUpdate

instance
  Core.ToJSON
    SqlApplicationConfigurationUpdate
  where
  toJSON SqlApplicationConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ReferenceDataSourceUpdates" Core..=)
              Prelude.<$> referenceDataSourceUpdates,
            ("InputUpdates" Core..=) Prelude.<$> inputUpdates,
            ("OutputUpdates" Core..=) Prelude.<$> outputUpdates
          ]
      )
