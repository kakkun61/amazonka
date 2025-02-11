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
-- Module      : Network.AWS.SecurityHub.Types.AwsRdsDbInstanceEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsRdsDbInstanceEndpoint where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the connection endpoint.
--
-- /See:/ 'newAwsRdsDbInstanceEndpoint' smart constructor.
data AwsRdsDbInstanceEndpoint = AwsRdsDbInstanceEndpoint'
  { -- | Specifies the ID that Amazon Route 53 assigns when you create a hosted
    -- zone.
    hostedZoneId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the DNS address of the DB instance.
    address :: Prelude.Maybe Prelude.Text,
    -- | Specifies the port that the database engine is listening on.
    port :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsRdsDbInstanceEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostedZoneId', 'awsRdsDbInstanceEndpoint_hostedZoneId' - Specifies the ID that Amazon Route 53 assigns when you create a hosted
-- zone.
--
-- 'address', 'awsRdsDbInstanceEndpoint_address' - Specifies the DNS address of the DB instance.
--
-- 'port', 'awsRdsDbInstanceEndpoint_port' - Specifies the port that the database engine is listening on.
newAwsRdsDbInstanceEndpoint ::
  AwsRdsDbInstanceEndpoint
newAwsRdsDbInstanceEndpoint =
  AwsRdsDbInstanceEndpoint'
    { hostedZoneId =
        Prelude.Nothing,
      address = Prelude.Nothing,
      port = Prelude.Nothing
    }

-- | Specifies the ID that Amazon Route 53 assigns when you create a hosted
-- zone.
awsRdsDbInstanceEndpoint_hostedZoneId :: Lens.Lens' AwsRdsDbInstanceEndpoint (Prelude.Maybe Prelude.Text)
awsRdsDbInstanceEndpoint_hostedZoneId = Lens.lens (\AwsRdsDbInstanceEndpoint' {hostedZoneId} -> hostedZoneId) (\s@AwsRdsDbInstanceEndpoint' {} a -> s {hostedZoneId = a} :: AwsRdsDbInstanceEndpoint)

-- | Specifies the DNS address of the DB instance.
awsRdsDbInstanceEndpoint_address :: Lens.Lens' AwsRdsDbInstanceEndpoint (Prelude.Maybe Prelude.Text)
awsRdsDbInstanceEndpoint_address = Lens.lens (\AwsRdsDbInstanceEndpoint' {address} -> address) (\s@AwsRdsDbInstanceEndpoint' {} a -> s {address = a} :: AwsRdsDbInstanceEndpoint)

-- | Specifies the port that the database engine is listening on.
awsRdsDbInstanceEndpoint_port :: Lens.Lens' AwsRdsDbInstanceEndpoint (Prelude.Maybe Prelude.Int)
awsRdsDbInstanceEndpoint_port = Lens.lens (\AwsRdsDbInstanceEndpoint' {port} -> port) (\s@AwsRdsDbInstanceEndpoint' {} a -> s {port = a} :: AwsRdsDbInstanceEndpoint)

instance Core.FromJSON AwsRdsDbInstanceEndpoint where
  parseJSON =
    Core.withObject
      "AwsRdsDbInstanceEndpoint"
      ( \x ->
          AwsRdsDbInstanceEndpoint'
            Prelude.<$> (x Core..:? "HostedZoneId")
            Prelude.<*> (x Core..:? "Address")
            Prelude.<*> (x Core..:? "Port")
      )

instance Prelude.Hashable AwsRdsDbInstanceEndpoint

instance Prelude.NFData AwsRdsDbInstanceEndpoint

instance Core.ToJSON AwsRdsDbInstanceEndpoint where
  toJSON AwsRdsDbInstanceEndpoint' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("HostedZoneId" Core..=) Prelude.<$> hostedZoneId,
            ("Address" Core..=) Prelude.<$> address,
            ("Port" Core..=) Prelude.<$> port
          ]
      )
