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
-- Module      : Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroupFailoverStatusCodes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The status codes that cause an origin group to fail over.
--
-- /See:/ 'newAwsCloudFrontDistributionOriginGroupFailoverStatusCodes' smart constructor.
data AwsCloudFrontDistributionOriginGroupFailoverStatusCodes = AwsCloudFrontDistributionOriginGroupFailoverStatusCodes'
  { -- | The number of status codes that can cause a failover.
    quantity :: Prelude.Maybe Prelude.Int,
    -- | The list of status code values that can cause a failover to the next
    -- origin.
    items :: Prelude.Maybe [Prelude.Int]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'quantity', 'awsCloudFrontDistributionOriginGroupFailoverStatusCodes_quantity' - The number of status codes that can cause a failover.
--
-- 'items', 'awsCloudFrontDistributionOriginGroupFailoverStatusCodes_items' - The list of status code values that can cause a failover to the next
-- origin.
newAwsCloudFrontDistributionOriginGroupFailoverStatusCodes ::
  AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
newAwsCloudFrontDistributionOriginGroupFailoverStatusCodes =
  AwsCloudFrontDistributionOriginGroupFailoverStatusCodes'
    { quantity =
        Prelude.Nothing,
      items =
        Prelude.Nothing
    }

-- | The number of status codes that can cause a failover.
awsCloudFrontDistributionOriginGroupFailoverStatusCodes_quantity :: Lens.Lens' AwsCloudFrontDistributionOriginGroupFailoverStatusCodes (Prelude.Maybe Prelude.Int)
awsCloudFrontDistributionOriginGroupFailoverStatusCodes_quantity = Lens.lens (\AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' {quantity} -> quantity) (\s@AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' {} a -> s {quantity = a} :: AwsCloudFrontDistributionOriginGroupFailoverStatusCodes)

-- | The list of status code values that can cause a failover to the next
-- origin.
awsCloudFrontDistributionOriginGroupFailoverStatusCodes_items :: Lens.Lens' AwsCloudFrontDistributionOriginGroupFailoverStatusCodes (Prelude.Maybe [Prelude.Int])
awsCloudFrontDistributionOriginGroupFailoverStatusCodes_items = Lens.lens (\AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' {items} -> items) (\s@AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' {} a -> s {items = a} :: AwsCloudFrontDistributionOriginGroupFailoverStatusCodes) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
  where
  parseJSON =
    Core.withObject
      "AwsCloudFrontDistributionOriginGroupFailoverStatusCodes"
      ( \x ->
          AwsCloudFrontDistributionOriginGroupFailoverStatusCodes'
            Prelude.<$> (x Core..:? "Quantity")
              Prelude.<*> (x Core..:? "Items" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes

instance
  Prelude.NFData
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes

instance
  Core.ToJSON
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
  where
  toJSON
    AwsCloudFrontDistributionOriginGroupFailoverStatusCodes' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Quantity" Core..=) Prelude.<$> quantity,
              ("Items" Core..=) Prelude.<$> items
            ]
        )
