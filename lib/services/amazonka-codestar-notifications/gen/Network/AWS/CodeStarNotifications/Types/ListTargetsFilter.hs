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
-- Module      : Network.AWS.CodeStarNotifications.Types.ListTargetsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarNotifications.Types.ListTargetsFilter where

import Network.AWS.CodeStarNotifications.Types.ListTargetsFilterName
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a filter to apply to the list of returned targets. You
-- can filter by target type, address, or status. For example, to filter
-- results to notification rules that have active Amazon SNS topics as
-- targets, you could specify a ListTargetsFilter Name as TargetType and a
-- Value of SNS, and a Name of TARGET_STATUS and a Value of ACTIVE.
--
-- /See:/ 'newListTargetsFilter' smart constructor.
data ListTargetsFilter = ListTargetsFilter'
  { -- | The name of the attribute you want to use to filter the returned
    -- targets.
    name :: ListTargetsFilterName,
    -- | The value of the attribute you want to use to filter the returned
    -- targets. For example, if you specify /SNS/ for the Target type, you
    -- could specify an Amazon Resource Name (ARN) for a topic as the value.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTargetsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'listTargetsFilter_name' - The name of the attribute you want to use to filter the returned
-- targets.
--
-- 'value', 'listTargetsFilter_value' - The value of the attribute you want to use to filter the returned
-- targets. For example, if you specify /SNS/ for the Target type, you
-- could specify an Amazon Resource Name (ARN) for a topic as the value.
newListTargetsFilter ::
  -- | 'name'
  ListTargetsFilterName ->
  -- | 'value'
  Prelude.Text ->
  ListTargetsFilter
newListTargetsFilter pName_ pValue_ =
  ListTargetsFilter' {name = pName_, value = pValue_}

-- | The name of the attribute you want to use to filter the returned
-- targets.
listTargetsFilter_name :: Lens.Lens' ListTargetsFilter ListTargetsFilterName
listTargetsFilter_name = Lens.lens (\ListTargetsFilter' {name} -> name) (\s@ListTargetsFilter' {} a -> s {name = a} :: ListTargetsFilter)

-- | The value of the attribute you want to use to filter the returned
-- targets. For example, if you specify /SNS/ for the Target type, you
-- could specify an Amazon Resource Name (ARN) for a topic as the value.
listTargetsFilter_value :: Lens.Lens' ListTargetsFilter Prelude.Text
listTargetsFilter_value = Lens.lens (\ListTargetsFilter' {value} -> value) (\s@ListTargetsFilter' {} a -> s {value = a} :: ListTargetsFilter)

instance Prelude.Hashable ListTargetsFilter

instance Prelude.NFData ListTargetsFilter

instance Core.ToJSON ListTargetsFilter where
  toJSON ListTargetsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Value" Core..= value)
          ]
      )
