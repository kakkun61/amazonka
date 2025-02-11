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
-- Module      : Network.AWS.MGN.Types.DataReplicationError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.DataReplicationError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.DataReplicationErrorString
import qualified Network.AWS.Prelude as Prelude

-- | Error in data replication.
--
-- /See:/ 'newDataReplicationError' smart constructor.
data DataReplicationError = DataReplicationError'
  { -- | Error in data replication.
    rawError :: Prelude.Maybe Prelude.Text,
    -- | Error in data replication.
    error :: Prelude.Maybe DataReplicationErrorString
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataReplicationError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rawError', 'dataReplicationError_rawError' - Error in data replication.
--
-- 'error', 'dataReplicationError_error' - Error in data replication.
newDataReplicationError ::
  DataReplicationError
newDataReplicationError =
  DataReplicationError'
    { rawError = Prelude.Nothing,
      error = Prelude.Nothing
    }

-- | Error in data replication.
dataReplicationError_rawError :: Lens.Lens' DataReplicationError (Prelude.Maybe Prelude.Text)
dataReplicationError_rawError = Lens.lens (\DataReplicationError' {rawError} -> rawError) (\s@DataReplicationError' {} a -> s {rawError = a} :: DataReplicationError)

-- | Error in data replication.
dataReplicationError_error :: Lens.Lens' DataReplicationError (Prelude.Maybe DataReplicationErrorString)
dataReplicationError_error = Lens.lens (\DataReplicationError' {error} -> error) (\s@DataReplicationError' {} a -> s {error = a} :: DataReplicationError)

instance Core.FromJSON DataReplicationError where
  parseJSON =
    Core.withObject
      "DataReplicationError"
      ( \x ->
          DataReplicationError'
            Prelude.<$> (x Core..:? "rawError")
            Prelude.<*> (x Core..:? "error")
      )

instance Prelude.Hashable DataReplicationError

instance Prelude.NFData DataReplicationError
