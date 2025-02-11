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
-- Module      : Network.AWS.DevOpsGuru.Types.ListInsightsClosedStatusFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.ListInsightsClosedStatusFilter where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types.EndTimeRange
import Network.AWS.DevOpsGuru.Types.InsightType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Used to filter for insights that have the status @CLOSED@.
--
-- /See:/ 'newListInsightsClosedStatusFilter' smart constructor.
data ListInsightsClosedStatusFilter = ListInsightsClosedStatusFilter'
  { -- | Use to filter for either @REACTIVE@ or @PROACTIVE@ insights.
    type' :: InsightType,
    -- | A time range used to specify when the behavior of the filtered insights
    -- ended.
    endTimeRange :: EndTimeRange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInsightsClosedStatusFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'listInsightsClosedStatusFilter_type' - Use to filter for either @REACTIVE@ or @PROACTIVE@ insights.
--
-- 'endTimeRange', 'listInsightsClosedStatusFilter_endTimeRange' - A time range used to specify when the behavior of the filtered insights
-- ended.
newListInsightsClosedStatusFilter ::
  -- | 'type''
  InsightType ->
  -- | 'endTimeRange'
  EndTimeRange ->
  ListInsightsClosedStatusFilter
newListInsightsClosedStatusFilter
  pType_
  pEndTimeRange_ =
    ListInsightsClosedStatusFilter'
      { type' = pType_,
        endTimeRange = pEndTimeRange_
      }

-- | Use to filter for either @REACTIVE@ or @PROACTIVE@ insights.
listInsightsClosedStatusFilter_type :: Lens.Lens' ListInsightsClosedStatusFilter InsightType
listInsightsClosedStatusFilter_type = Lens.lens (\ListInsightsClosedStatusFilter' {type'} -> type') (\s@ListInsightsClosedStatusFilter' {} a -> s {type' = a} :: ListInsightsClosedStatusFilter)

-- | A time range used to specify when the behavior of the filtered insights
-- ended.
listInsightsClosedStatusFilter_endTimeRange :: Lens.Lens' ListInsightsClosedStatusFilter EndTimeRange
listInsightsClosedStatusFilter_endTimeRange = Lens.lens (\ListInsightsClosedStatusFilter' {endTimeRange} -> endTimeRange) (\s@ListInsightsClosedStatusFilter' {} a -> s {endTimeRange = a} :: ListInsightsClosedStatusFilter)

instance
  Prelude.Hashable
    ListInsightsClosedStatusFilter

instance
  Prelude.NFData
    ListInsightsClosedStatusFilter

instance Core.ToJSON ListInsightsClosedStatusFilter where
  toJSON ListInsightsClosedStatusFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("EndTimeRange" Core..= endTimeRange)
          ]
      )
