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
-- Module      : Network.AWS.SESV2.Types.ListContactsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SESV2.Types.ListContactsFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SESV2.Types.SubscriptionStatus
import Network.AWS.SESV2.Types.TopicFilter

-- | A filter that can be applied to a list of contacts.
--
-- /See:/ 'newListContactsFilter' smart constructor.
data ListContactsFilter = ListContactsFilter'
  { -- | The status by which you are filtering: @OPT_IN@ or @OPT_OUT@.
    filteredStatus :: Prelude.Maybe SubscriptionStatus,
    -- | Used for filtering by a specific topic preference.
    topicFilter :: Prelude.Maybe TopicFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListContactsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filteredStatus', 'listContactsFilter_filteredStatus' - The status by which you are filtering: @OPT_IN@ or @OPT_OUT@.
--
-- 'topicFilter', 'listContactsFilter_topicFilter' - Used for filtering by a specific topic preference.
newListContactsFilter ::
  ListContactsFilter
newListContactsFilter =
  ListContactsFilter'
    { filteredStatus =
        Prelude.Nothing,
      topicFilter = Prelude.Nothing
    }

-- | The status by which you are filtering: @OPT_IN@ or @OPT_OUT@.
listContactsFilter_filteredStatus :: Lens.Lens' ListContactsFilter (Prelude.Maybe SubscriptionStatus)
listContactsFilter_filteredStatus = Lens.lens (\ListContactsFilter' {filteredStatus} -> filteredStatus) (\s@ListContactsFilter' {} a -> s {filteredStatus = a} :: ListContactsFilter)

-- | Used for filtering by a specific topic preference.
listContactsFilter_topicFilter :: Lens.Lens' ListContactsFilter (Prelude.Maybe TopicFilter)
listContactsFilter_topicFilter = Lens.lens (\ListContactsFilter' {topicFilter} -> topicFilter) (\s@ListContactsFilter' {} a -> s {topicFilter = a} :: ListContactsFilter)

instance Prelude.Hashable ListContactsFilter

instance Prelude.NFData ListContactsFilter

instance Core.ToJSON ListContactsFilter where
  toJSON ListContactsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("FilteredStatus" Core..=)
              Prelude.<$> filteredStatus,
            ("TopicFilter" Core..=) Prelude.<$> topicFilter
          ]
      )
