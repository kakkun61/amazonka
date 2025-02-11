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
-- Module      : Network.AWS.MacieV2.Types.GroupCount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.GroupCount where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a group of results for a query that retrieved aggregated
-- statistical data about findings.
--
-- /See:/ 'newGroupCount' smart constructor.
data GroupCount = GroupCount'
  { -- | The name of the property that defines the group in the query results, as
    -- specified by the groupBy property in the query request.
    groupKey :: Prelude.Maybe Prelude.Text,
    -- | The total number of findings in the group of query results.
    count :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GroupCount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupKey', 'groupCount_groupKey' - The name of the property that defines the group in the query results, as
-- specified by the groupBy property in the query request.
--
-- 'count', 'groupCount_count' - The total number of findings in the group of query results.
newGroupCount ::
  GroupCount
newGroupCount =
  GroupCount'
    { groupKey = Prelude.Nothing,
      count = Prelude.Nothing
    }

-- | The name of the property that defines the group in the query results, as
-- specified by the groupBy property in the query request.
groupCount_groupKey :: Lens.Lens' GroupCount (Prelude.Maybe Prelude.Text)
groupCount_groupKey = Lens.lens (\GroupCount' {groupKey} -> groupKey) (\s@GroupCount' {} a -> s {groupKey = a} :: GroupCount)

-- | The total number of findings in the group of query results.
groupCount_count :: Lens.Lens' GroupCount (Prelude.Maybe Prelude.Integer)
groupCount_count = Lens.lens (\GroupCount' {count} -> count) (\s@GroupCount' {} a -> s {count = a} :: GroupCount)

instance Core.FromJSON GroupCount where
  parseJSON =
    Core.withObject
      "GroupCount"
      ( \x ->
          GroupCount'
            Prelude.<$> (x Core..:? "groupKey")
            Prelude.<*> (x Core..:? "count")
      )

instance Prelude.Hashable GroupCount

instance Prelude.NFData GroupCount
