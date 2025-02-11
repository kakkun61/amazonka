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
-- Module      : Network.AWS.CodeStarNotifications.Types.ListEventTypesFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarNotifications.Types.ListEventTypesFilter where

import Network.AWS.CodeStarNotifications.Types.ListEventTypesFilterName
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a filter to apply to the list of returned event types.
-- You can filter by resource type or service name.
--
-- /See:/ 'newListEventTypesFilter' smart constructor.
data ListEventTypesFilter = ListEventTypesFilter'
  { -- | The system-generated name of the filter type you want to filter by.
    name :: ListEventTypesFilterName,
    -- | The name of the resource type (for example, pipeline) or service name
    -- (for example, CodePipeline) that you want to filter by.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEventTypesFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'listEventTypesFilter_name' - The system-generated name of the filter type you want to filter by.
--
-- 'value', 'listEventTypesFilter_value' - The name of the resource type (for example, pipeline) or service name
-- (for example, CodePipeline) that you want to filter by.
newListEventTypesFilter ::
  -- | 'name'
  ListEventTypesFilterName ->
  -- | 'value'
  Prelude.Text ->
  ListEventTypesFilter
newListEventTypesFilter pName_ pValue_ =
  ListEventTypesFilter'
    { name = pName_,
      value = pValue_
    }

-- | The system-generated name of the filter type you want to filter by.
listEventTypesFilter_name :: Lens.Lens' ListEventTypesFilter ListEventTypesFilterName
listEventTypesFilter_name = Lens.lens (\ListEventTypesFilter' {name} -> name) (\s@ListEventTypesFilter' {} a -> s {name = a} :: ListEventTypesFilter)

-- | The name of the resource type (for example, pipeline) or service name
-- (for example, CodePipeline) that you want to filter by.
listEventTypesFilter_value :: Lens.Lens' ListEventTypesFilter Prelude.Text
listEventTypesFilter_value = Lens.lens (\ListEventTypesFilter' {value} -> value) (\s@ListEventTypesFilter' {} a -> s {value = a} :: ListEventTypesFilter)

instance Prelude.Hashable ListEventTypesFilter

instance Prelude.NFData ListEventTypesFilter

instance Core.ToJSON ListEventTypesFilter where
  toJSON ListEventTypesFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Value" Core..= value)
          ]
      )
