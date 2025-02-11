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
-- Module      : Network.AWS.ElasticInference.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticInference.Types.Filter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A filter expression for the Elastic Inference Accelerator list.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | The values for the filter of the Elastic Inference Accelerator list.
    values :: Prelude.Maybe [Prelude.Text],
    -- | The filter name for the Elastic Inference Accelerator list. It can
    -- assume the following values: accelerator-type: the type of Elastic
    -- Inference Accelerator to filter for. instance-id: an EC2 instance id to
    -- filter for.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Filter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'filter_values' - The values for the filter of the Elastic Inference Accelerator list.
--
-- 'name', 'filter_name' - The filter name for the Elastic Inference Accelerator list. It can
-- assume the following values: accelerator-type: the type of Elastic
-- Inference Accelerator to filter for. instance-id: an EC2 instance id to
-- filter for.
newFilter ::
  Filter
newFilter =
  Filter'
    { values = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The values for the filter of the Elastic Inference Accelerator list.
filter_values :: Lens.Lens' Filter (Prelude.Maybe [Prelude.Text])
filter_values = Lens.lens (\Filter' {values} -> values) (\s@Filter' {} a -> s {values = a} :: Filter) Prelude.. Lens.mapping Lens.coerced

-- | The filter name for the Elastic Inference Accelerator list. It can
-- assume the following values: accelerator-type: the type of Elastic
-- Inference Accelerator to filter for. instance-id: an EC2 instance id to
-- filter for.
filter_name :: Lens.Lens' Filter (Prelude.Maybe Prelude.Text)
filter_name = Lens.lens (\Filter' {name} -> name) (\s@Filter' {} a -> s {name = a} :: Filter)

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Core.ToJSON Filter where
  toJSON Filter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("values" Core..=) Prelude.<$> values,
            ("name" Core..=) Prelude.<$> name
          ]
      )
