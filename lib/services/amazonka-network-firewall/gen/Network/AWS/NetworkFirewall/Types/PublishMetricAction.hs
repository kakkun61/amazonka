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
-- Module      : Network.AWS.NetworkFirewall.Types.PublishMetricAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.PublishMetricAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types.Dimension
import qualified Network.AWS.Prelude as Prelude

-- | Stateless inspection criteria that publishes the specified metrics to
-- Amazon CloudWatch for the matching packet. This setting defines a
-- CloudWatch dimension value to be published.
--
-- /See:/ 'newPublishMetricAction' smart constructor.
data PublishMetricAction = PublishMetricAction'
  { dimensions :: Prelude.NonEmpty Dimension
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublishMetricAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensions', 'publishMetricAction_dimensions' -
newPublishMetricAction ::
  -- | 'dimensions'
  Prelude.NonEmpty Dimension ->
  PublishMetricAction
newPublishMetricAction pDimensions_ =
  PublishMetricAction'
    { dimensions =
        Lens.coerced Lens.# pDimensions_
    }

-- |
publishMetricAction_dimensions :: Lens.Lens' PublishMetricAction (Prelude.NonEmpty Dimension)
publishMetricAction_dimensions = Lens.lens (\PublishMetricAction' {dimensions} -> dimensions) (\s@PublishMetricAction' {} a -> s {dimensions = a} :: PublishMetricAction) Prelude.. Lens.coerced

instance Core.FromJSON PublishMetricAction where
  parseJSON =
    Core.withObject
      "PublishMetricAction"
      ( \x ->
          PublishMetricAction'
            Prelude.<$> (x Core..: "Dimensions")
      )

instance Prelude.Hashable PublishMetricAction

instance Prelude.NFData PublishMetricAction

instance Core.ToJSON PublishMetricAction where
  toJSON PublishMetricAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Dimensions" Core..= dimensions)]
      )
