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
-- Module      : Network.AWS.HealthLake.Types.DatastoreFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HealthLake.Types.DatastoreFilter where

import qualified Network.AWS.Core as Core
import Network.AWS.HealthLake.Types.DatastoreStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The filters applied to Data Store query.
--
-- /See:/ 'newDatastoreFilter' smart constructor.
data DatastoreFilter = DatastoreFilter'
  { -- | A filter that allows the user to set cutoff dates for records. All Data
    -- Stores created after the specified date will be included in the results.
    createdAfter :: Prelude.Maybe Core.POSIX,
    -- | Allows the user to filter Data Store results by name.
    datastoreName :: Prelude.Maybe Prelude.Text,
    -- | Allows the user to filter Data Store results by status.
    datastoreStatus :: Prelude.Maybe DatastoreStatus,
    -- | A filter that allows the user to set cutoff dates for records. All Data
    -- Stores created before the specified date will be included in the
    -- results.
    createdBefore :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatastoreFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdAfter', 'datastoreFilter_createdAfter' - A filter that allows the user to set cutoff dates for records. All Data
-- Stores created after the specified date will be included in the results.
--
-- 'datastoreName', 'datastoreFilter_datastoreName' - Allows the user to filter Data Store results by name.
--
-- 'datastoreStatus', 'datastoreFilter_datastoreStatus' - Allows the user to filter Data Store results by status.
--
-- 'createdBefore', 'datastoreFilter_createdBefore' - A filter that allows the user to set cutoff dates for records. All Data
-- Stores created before the specified date will be included in the
-- results.
newDatastoreFilter ::
  DatastoreFilter
newDatastoreFilter =
  DatastoreFilter'
    { createdAfter = Prelude.Nothing,
      datastoreName = Prelude.Nothing,
      datastoreStatus = Prelude.Nothing,
      createdBefore = Prelude.Nothing
    }

-- | A filter that allows the user to set cutoff dates for records. All Data
-- Stores created after the specified date will be included in the results.
datastoreFilter_createdAfter :: Lens.Lens' DatastoreFilter (Prelude.Maybe Prelude.UTCTime)
datastoreFilter_createdAfter = Lens.lens (\DatastoreFilter' {createdAfter} -> createdAfter) (\s@DatastoreFilter' {} a -> s {createdAfter = a} :: DatastoreFilter) Prelude.. Lens.mapping Core._Time

-- | Allows the user to filter Data Store results by name.
datastoreFilter_datastoreName :: Lens.Lens' DatastoreFilter (Prelude.Maybe Prelude.Text)
datastoreFilter_datastoreName = Lens.lens (\DatastoreFilter' {datastoreName} -> datastoreName) (\s@DatastoreFilter' {} a -> s {datastoreName = a} :: DatastoreFilter)

-- | Allows the user to filter Data Store results by status.
datastoreFilter_datastoreStatus :: Lens.Lens' DatastoreFilter (Prelude.Maybe DatastoreStatus)
datastoreFilter_datastoreStatus = Lens.lens (\DatastoreFilter' {datastoreStatus} -> datastoreStatus) (\s@DatastoreFilter' {} a -> s {datastoreStatus = a} :: DatastoreFilter)

-- | A filter that allows the user to set cutoff dates for records. All Data
-- Stores created before the specified date will be included in the
-- results.
datastoreFilter_createdBefore :: Lens.Lens' DatastoreFilter (Prelude.Maybe Prelude.UTCTime)
datastoreFilter_createdBefore = Lens.lens (\DatastoreFilter' {createdBefore} -> createdBefore) (\s@DatastoreFilter' {} a -> s {createdBefore = a} :: DatastoreFilter) Prelude.. Lens.mapping Core._Time

instance Prelude.Hashable DatastoreFilter

instance Prelude.NFData DatastoreFilter

instance Core.ToJSON DatastoreFilter where
  toJSON DatastoreFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CreatedAfter" Core..=) Prelude.<$> createdAfter,
            ("DatastoreName" Core..=) Prelude.<$> datastoreName,
            ("DatastoreStatus" Core..=)
              Prelude.<$> datastoreStatus,
            ("CreatedBefore" Core..=) Prelude.<$> createdBefore
          ]
      )
