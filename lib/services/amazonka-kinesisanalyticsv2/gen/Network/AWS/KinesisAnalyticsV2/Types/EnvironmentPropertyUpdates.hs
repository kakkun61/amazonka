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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.EnvironmentPropertyUpdates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.EnvironmentPropertyUpdates where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.PropertyGroup
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes updates to the execution property groups for a Flink-based
-- Kinesis Data Analytics application or a Studio notebook.
--
-- /See:/ 'newEnvironmentPropertyUpdates' smart constructor.
data EnvironmentPropertyUpdates = EnvironmentPropertyUpdates'
  { -- | Describes updates to the execution property groups.
    propertyGroups :: [PropertyGroup]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentPropertyUpdates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'propertyGroups', 'environmentPropertyUpdates_propertyGroups' - Describes updates to the execution property groups.
newEnvironmentPropertyUpdates ::
  EnvironmentPropertyUpdates
newEnvironmentPropertyUpdates =
  EnvironmentPropertyUpdates'
    { propertyGroups =
        Prelude.mempty
    }

-- | Describes updates to the execution property groups.
environmentPropertyUpdates_propertyGroups :: Lens.Lens' EnvironmentPropertyUpdates [PropertyGroup]
environmentPropertyUpdates_propertyGroups = Lens.lens (\EnvironmentPropertyUpdates' {propertyGroups} -> propertyGroups) (\s@EnvironmentPropertyUpdates' {} a -> s {propertyGroups = a} :: EnvironmentPropertyUpdates) Prelude.. Lens.coerced

instance Prelude.Hashable EnvironmentPropertyUpdates

instance Prelude.NFData EnvironmentPropertyUpdates

instance Core.ToJSON EnvironmentPropertyUpdates where
  toJSON EnvironmentPropertyUpdates' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PropertyGroups" Core..= propertyGroups)
          ]
      )
