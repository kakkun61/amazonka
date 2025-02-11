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
-- Module      : Network.AWS.MacieV2.Types.ListJobsSortCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.ListJobsSortCriteria where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.ListJobsSortAttributeName
import Network.AWS.MacieV2.Types.OrderBy
import qualified Network.AWS.Prelude as Prelude

-- | Specifies criteria for sorting the results of a request for information
-- about classification jobs.
--
-- /See:/ 'newListJobsSortCriteria' smart constructor.
data ListJobsSortCriteria = ListJobsSortCriteria'
  { -- | The sort order to apply to the results, based on the value for the
    -- property specified by the attributeName property. Valid values are: ASC,
    -- sort the results in ascending order; and, DESC, sort the results in
    -- descending order.
    orderBy :: Prelude.Maybe OrderBy,
    -- | The property to sort the results by.
    attributeName :: Prelude.Maybe ListJobsSortAttributeName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobsSortCriteria' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'orderBy', 'listJobsSortCriteria_orderBy' - The sort order to apply to the results, based on the value for the
-- property specified by the attributeName property. Valid values are: ASC,
-- sort the results in ascending order; and, DESC, sort the results in
-- descending order.
--
-- 'attributeName', 'listJobsSortCriteria_attributeName' - The property to sort the results by.
newListJobsSortCriteria ::
  ListJobsSortCriteria
newListJobsSortCriteria =
  ListJobsSortCriteria'
    { orderBy = Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | The sort order to apply to the results, based on the value for the
-- property specified by the attributeName property. Valid values are: ASC,
-- sort the results in ascending order; and, DESC, sort the results in
-- descending order.
listJobsSortCriteria_orderBy :: Lens.Lens' ListJobsSortCriteria (Prelude.Maybe OrderBy)
listJobsSortCriteria_orderBy = Lens.lens (\ListJobsSortCriteria' {orderBy} -> orderBy) (\s@ListJobsSortCriteria' {} a -> s {orderBy = a} :: ListJobsSortCriteria)

-- | The property to sort the results by.
listJobsSortCriteria_attributeName :: Lens.Lens' ListJobsSortCriteria (Prelude.Maybe ListJobsSortAttributeName)
listJobsSortCriteria_attributeName = Lens.lens (\ListJobsSortCriteria' {attributeName} -> attributeName) (\s@ListJobsSortCriteria' {} a -> s {attributeName = a} :: ListJobsSortCriteria)

instance Prelude.Hashable ListJobsSortCriteria

instance Prelude.NFData ListJobsSortCriteria

instance Core.ToJSON ListJobsSortCriteria where
  toJSON ListJobsSortCriteria' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("orderBy" Core..=) Prelude.<$> orderBy,
            ("attributeName" Core..=) Prelude.<$> attributeName
          ]
      )
