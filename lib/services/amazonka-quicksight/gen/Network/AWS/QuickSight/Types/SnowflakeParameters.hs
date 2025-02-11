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
-- Module      : Network.AWS.QuickSight.Types.SnowflakeParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.SnowflakeParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The parameters for Snowflake.
--
-- /See:/ 'newSnowflakeParameters' smart constructor.
data SnowflakeParameters = SnowflakeParameters'
  { -- | Host.
    host :: Prelude.Text,
    -- | Database.
    database :: Prelude.Text,
    -- | Warehouse.
    warehouse :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnowflakeParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'host', 'snowflakeParameters_host' - Host.
--
-- 'database', 'snowflakeParameters_database' - Database.
--
-- 'warehouse', 'snowflakeParameters_warehouse' - Warehouse.
newSnowflakeParameters ::
  -- | 'host'
  Prelude.Text ->
  -- | 'database'
  Prelude.Text ->
  -- | 'warehouse'
  Prelude.Text ->
  SnowflakeParameters
newSnowflakeParameters pHost_ pDatabase_ pWarehouse_ =
  SnowflakeParameters'
    { host = pHost_,
      database = pDatabase_,
      warehouse = pWarehouse_
    }

-- | Host.
snowflakeParameters_host :: Lens.Lens' SnowflakeParameters Prelude.Text
snowflakeParameters_host = Lens.lens (\SnowflakeParameters' {host} -> host) (\s@SnowflakeParameters' {} a -> s {host = a} :: SnowflakeParameters)

-- | Database.
snowflakeParameters_database :: Lens.Lens' SnowflakeParameters Prelude.Text
snowflakeParameters_database = Lens.lens (\SnowflakeParameters' {database} -> database) (\s@SnowflakeParameters' {} a -> s {database = a} :: SnowflakeParameters)

-- | Warehouse.
snowflakeParameters_warehouse :: Lens.Lens' SnowflakeParameters Prelude.Text
snowflakeParameters_warehouse = Lens.lens (\SnowflakeParameters' {warehouse} -> warehouse) (\s@SnowflakeParameters' {} a -> s {warehouse = a} :: SnowflakeParameters)

instance Core.FromJSON SnowflakeParameters where
  parseJSON =
    Core.withObject
      "SnowflakeParameters"
      ( \x ->
          SnowflakeParameters'
            Prelude.<$> (x Core..: "Host")
            Prelude.<*> (x Core..: "Database")
            Prelude.<*> (x Core..: "Warehouse")
      )

instance Prelude.Hashable SnowflakeParameters

instance Prelude.NFData SnowflakeParameters

instance Core.ToJSON SnowflakeParameters where
  toJSON SnowflakeParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Host" Core..= host),
            Prelude.Just ("Database" Core..= database),
            Prelude.Just ("Warehouse" Core..= warehouse)
          ]
      )
