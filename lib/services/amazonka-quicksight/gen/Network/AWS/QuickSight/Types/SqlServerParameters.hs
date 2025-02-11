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
-- Module      : Network.AWS.QuickSight.Types.SqlServerParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.SqlServerParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The parameters for SQL Server.
--
-- /See:/ 'newSqlServerParameters' smart constructor.
data SqlServerParameters = SqlServerParameters'
  { -- | Host.
    host :: Prelude.Text,
    -- | Port.
    port :: Prelude.Natural,
    -- | Database.
    database :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SqlServerParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'host', 'sqlServerParameters_host' - Host.
--
-- 'port', 'sqlServerParameters_port' - Port.
--
-- 'database', 'sqlServerParameters_database' - Database.
newSqlServerParameters ::
  -- | 'host'
  Prelude.Text ->
  -- | 'port'
  Prelude.Natural ->
  -- | 'database'
  Prelude.Text ->
  SqlServerParameters
newSqlServerParameters pHost_ pPort_ pDatabase_ =
  SqlServerParameters'
    { host = pHost_,
      port = pPort_,
      database = pDatabase_
    }

-- | Host.
sqlServerParameters_host :: Lens.Lens' SqlServerParameters Prelude.Text
sqlServerParameters_host = Lens.lens (\SqlServerParameters' {host} -> host) (\s@SqlServerParameters' {} a -> s {host = a} :: SqlServerParameters)

-- | Port.
sqlServerParameters_port :: Lens.Lens' SqlServerParameters Prelude.Natural
sqlServerParameters_port = Lens.lens (\SqlServerParameters' {port} -> port) (\s@SqlServerParameters' {} a -> s {port = a} :: SqlServerParameters)

-- | Database.
sqlServerParameters_database :: Lens.Lens' SqlServerParameters Prelude.Text
sqlServerParameters_database = Lens.lens (\SqlServerParameters' {database} -> database) (\s@SqlServerParameters' {} a -> s {database = a} :: SqlServerParameters)

instance Core.FromJSON SqlServerParameters where
  parseJSON =
    Core.withObject
      "SqlServerParameters"
      ( \x ->
          SqlServerParameters'
            Prelude.<$> (x Core..: "Host")
            Prelude.<*> (x Core..: "Port")
            Prelude.<*> (x Core..: "Database")
      )

instance Prelude.Hashable SqlServerParameters

instance Prelude.NFData SqlServerParameters

instance Core.ToJSON SqlServerParameters where
  toJSON SqlServerParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Host" Core..= host),
            Prelude.Just ("Port" Core..= port),
            Prelude.Just ("Database" Core..= database)
          ]
      )
