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
-- Module      : Network.AWS.EC2.Types.CoipAddressUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CoipAddressUsage where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes address usage for a customer-owned address pool.
--
-- /See:/ 'newCoipAddressUsage' smart constructor.
data CoipAddressUsage = CoipAddressUsage'
  { -- | The allocation ID of the address.
    allocationId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Maybe Prelude.Text,
    -- | The customer-owned IP address.
    coIp :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services service.
    awsService :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CoipAddressUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allocationId', 'coipAddressUsage_allocationId' - The allocation ID of the address.
--
-- 'awsAccountId', 'coipAddressUsage_awsAccountId' - The Amazon Web Services account ID.
--
-- 'coIp', 'coipAddressUsage_coIp' - The customer-owned IP address.
--
-- 'awsService', 'coipAddressUsage_awsService' - The Amazon Web Services service.
newCoipAddressUsage ::
  CoipAddressUsage
newCoipAddressUsage =
  CoipAddressUsage'
    { allocationId = Prelude.Nothing,
      awsAccountId = Prelude.Nothing,
      coIp = Prelude.Nothing,
      awsService = Prelude.Nothing
    }

-- | The allocation ID of the address.
coipAddressUsage_allocationId :: Lens.Lens' CoipAddressUsage (Prelude.Maybe Prelude.Text)
coipAddressUsage_allocationId = Lens.lens (\CoipAddressUsage' {allocationId} -> allocationId) (\s@CoipAddressUsage' {} a -> s {allocationId = a} :: CoipAddressUsage)

-- | The Amazon Web Services account ID.
coipAddressUsage_awsAccountId :: Lens.Lens' CoipAddressUsage (Prelude.Maybe Prelude.Text)
coipAddressUsage_awsAccountId = Lens.lens (\CoipAddressUsage' {awsAccountId} -> awsAccountId) (\s@CoipAddressUsage' {} a -> s {awsAccountId = a} :: CoipAddressUsage)

-- | The customer-owned IP address.
coipAddressUsage_coIp :: Lens.Lens' CoipAddressUsage (Prelude.Maybe Prelude.Text)
coipAddressUsage_coIp = Lens.lens (\CoipAddressUsage' {coIp} -> coIp) (\s@CoipAddressUsage' {} a -> s {coIp = a} :: CoipAddressUsage)

-- | The Amazon Web Services service.
coipAddressUsage_awsService :: Lens.Lens' CoipAddressUsage (Prelude.Maybe Prelude.Text)
coipAddressUsage_awsService = Lens.lens (\CoipAddressUsage' {awsService} -> awsService) (\s@CoipAddressUsage' {} a -> s {awsService = a} :: CoipAddressUsage)

instance Core.FromXML CoipAddressUsage where
  parseXML x =
    CoipAddressUsage'
      Prelude.<$> (x Core..@? "allocationId")
      Prelude.<*> (x Core..@? "awsAccountId")
      Prelude.<*> (x Core..@? "coIp")
      Prelude.<*> (x Core..@? "awsService")

instance Prelude.Hashable CoipAddressUsage

instance Prelude.NFData CoipAddressUsage
