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
-- Module      : Network.AWS.QuickSight.Types.PostgreSqlParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.PostgreSqlParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The parameters for PostgreSQL.
--
-- /See:/ 'newPostgreSqlParameters' smart constructor.
data PostgreSqlParameters = PostgreSqlParameters'
  { -- | Host.
    host :: Prelude.Text,
    -- | Port.
    port :: Prelude.Natural,
    -- | Database.
    database :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PostgreSqlParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'host', 'postgreSqlParameters_host' - Host.
--
-- 'port', 'postgreSqlParameters_port' - Port.
--
-- 'database', 'postgreSqlParameters_database' - Database.
newPostgreSqlParameters ::
  -- | 'host'
  Prelude.Text ->
  -- | 'port'
  Prelude.Natural ->
  -- | 'database'
  Prelude.Text ->
  PostgreSqlParameters
newPostgreSqlParameters pHost_ pPort_ pDatabase_ =
  PostgreSqlParameters'
    { host = pHost_,
      port = pPort_,
      database = pDatabase_
    }

-- | Host.
postgreSqlParameters_host :: Lens.Lens' PostgreSqlParameters Prelude.Text
postgreSqlParameters_host = Lens.lens (\PostgreSqlParameters' {host} -> host) (\s@PostgreSqlParameters' {} a -> s {host = a} :: PostgreSqlParameters)

-- | Port.
postgreSqlParameters_port :: Lens.Lens' PostgreSqlParameters Prelude.Natural
postgreSqlParameters_port = Lens.lens (\PostgreSqlParameters' {port} -> port) (\s@PostgreSqlParameters' {} a -> s {port = a} :: PostgreSqlParameters)

-- | Database.
postgreSqlParameters_database :: Lens.Lens' PostgreSqlParameters Prelude.Text
postgreSqlParameters_database = Lens.lens (\PostgreSqlParameters' {database} -> database) (\s@PostgreSqlParameters' {} a -> s {database = a} :: PostgreSqlParameters)

instance Core.FromJSON PostgreSqlParameters where
  parseJSON =
    Core.withObject
      "PostgreSqlParameters"
      ( \x ->
          PostgreSqlParameters'
            Prelude.<$> (x Core..: "Host")
            Prelude.<*> (x Core..: "Port")
            Prelude.<*> (x Core..: "Database")
      )

instance Prelude.Hashable PostgreSqlParameters

instance Prelude.NFData PostgreSqlParameters

instance Core.ToJSON PostgreSqlParameters where
  toJSON PostgreSqlParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Host" Core..= host),
            Prelude.Just ("Port" Core..= port),
            Prelude.Just ("Database" Core..= database)
          ]
      )
