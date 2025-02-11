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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.SqlRunConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.SqlRunConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.InputStartingPositionConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the starting parameters for a SQL-based Kinesis Data Analytics
-- application.
--
-- /See:/ 'newSqlRunConfiguration' smart constructor.
data SqlRunConfiguration = SqlRunConfiguration'
  { -- | The input source ID. You can get this ID by calling the
    -- DescribeApplication operation.
    inputId :: Prelude.Text,
    -- | The point at which you want the application to start processing records
    -- from the streaming source.
    inputStartingPositionConfiguration :: InputStartingPositionConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SqlRunConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputId', 'sqlRunConfiguration_inputId' - The input source ID. You can get this ID by calling the
-- DescribeApplication operation.
--
-- 'inputStartingPositionConfiguration', 'sqlRunConfiguration_inputStartingPositionConfiguration' - The point at which you want the application to start processing records
-- from the streaming source.
newSqlRunConfiguration ::
  -- | 'inputId'
  Prelude.Text ->
  -- | 'inputStartingPositionConfiguration'
  InputStartingPositionConfiguration ->
  SqlRunConfiguration
newSqlRunConfiguration
  pInputId_
  pInputStartingPositionConfiguration_ =
    SqlRunConfiguration'
      { inputId = pInputId_,
        inputStartingPositionConfiguration =
          pInputStartingPositionConfiguration_
      }

-- | The input source ID. You can get this ID by calling the
-- DescribeApplication operation.
sqlRunConfiguration_inputId :: Lens.Lens' SqlRunConfiguration Prelude.Text
sqlRunConfiguration_inputId = Lens.lens (\SqlRunConfiguration' {inputId} -> inputId) (\s@SqlRunConfiguration' {} a -> s {inputId = a} :: SqlRunConfiguration)

-- | The point at which you want the application to start processing records
-- from the streaming source.
sqlRunConfiguration_inputStartingPositionConfiguration :: Lens.Lens' SqlRunConfiguration InputStartingPositionConfiguration
sqlRunConfiguration_inputStartingPositionConfiguration = Lens.lens (\SqlRunConfiguration' {inputStartingPositionConfiguration} -> inputStartingPositionConfiguration) (\s@SqlRunConfiguration' {} a -> s {inputStartingPositionConfiguration = a} :: SqlRunConfiguration)

instance Prelude.Hashable SqlRunConfiguration

instance Prelude.NFData SqlRunConfiguration

instance Core.ToJSON SqlRunConfiguration where
  toJSON SqlRunConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InputId" Core..= inputId),
            Prelude.Just
              ( "InputStartingPositionConfiguration"
                  Core..= inputStartingPositionConfiguration
              )
          ]
      )
