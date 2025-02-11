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
-- Module      : Network.AWS.ElasticSearch.Types.DescribePackagesFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DescribePackagesFilter where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Filter to apply in @DescribePackage@ response.
--
-- /See:/ 'newDescribePackagesFilter' smart constructor.
data DescribePackagesFilter = DescribePackagesFilter'
  { -- | A list of values for the specified field.
    value :: Prelude.Maybe [Prelude.Text],
    -- | Any field from @PackageDetails@.
    name :: Prelude.Maybe DescribePackagesFilterName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePackagesFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'describePackagesFilter_value' - A list of values for the specified field.
--
-- 'name', 'describePackagesFilter_name' - Any field from @PackageDetails@.
newDescribePackagesFilter ::
  DescribePackagesFilter
newDescribePackagesFilter =
  DescribePackagesFilter'
    { value = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | A list of values for the specified field.
describePackagesFilter_value :: Lens.Lens' DescribePackagesFilter (Prelude.Maybe [Prelude.Text])
describePackagesFilter_value = Lens.lens (\DescribePackagesFilter' {value} -> value) (\s@DescribePackagesFilter' {} a -> s {value = a} :: DescribePackagesFilter) Prelude.. Lens.mapping Lens.coerced

-- | Any field from @PackageDetails@.
describePackagesFilter_name :: Lens.Lens' DescribePackagesFilter (Prelude.Maybe DescribePackagesFilterName)
describePackagesFilter_name = Lens.lens (\DescribePackagesFilter' {name} -> name) (\s@DescribePackagesFilter' {} a -> s {name = a} :: DescribePackagesFilter)

instance Prelude.Hashable DescribePackagesFilter

instance Prelude.NFData DescribePackagesFilter

instance Core.ToJSON DescribePackagesFilter where
  toJSON DescribePackagesFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Value" Core..=) Prelude.<$> value,
            ("Name" Core..=) Prelude.<$> name
          ]
      )
