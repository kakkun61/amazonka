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
-- Module      : Network.AWS.IoTEvents.Types.RoutedResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.RoutedResource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the routed resource.
--
-- /See:/ 'newRoutedResource' smart constructor.
data RoutedResource = RoutedResource'
  { -- | The ARN of the routed resource. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the routed resource.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RoutedResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'routedResource_arn' - The ARN of the routed resource. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'name', 'routedResource_name' - The name of the routed resource.
newRoutedResource ::
  RoutedResource
newRoutedResource =
  RoutedResource'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The ARN of the routed resource. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
routedResource_arn :: Lens.Lens' RoutedResource (Prelude.Maybe Prelude.Text)
routedResource_arn = Lens.lens (\RoutedResource' {arn} -> arn) (\s@RoutedResource' {} a -> s {arn = a} :: RoutedResource)

-- | The name of the routed resource.
routedResource_name :: Lens.Lens' RoutedResource (Prelude.Maybe Prelude.Text)
routedResource_name = Lens.lens (\RoutedResource' {name} -> name) (\s@RoutedResource' {} a -> s {name = a} :: RoutedResource)

instance Core.FromJSON RoutedResource where
  parseJSON =
    Core.withObject
      "RoutedResource"
      ( \x ->
          RoutedResource'
            Prelude.<$> (x Core..:? "arn") Prelude.<*> (x Core..:? "name")
      )

instance Prelude.Hashable RoutedResource

instance Prelude.NFData RoutedResource
