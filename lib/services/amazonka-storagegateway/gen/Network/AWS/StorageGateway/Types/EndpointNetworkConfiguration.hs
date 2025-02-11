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
-- Module      : Network.AWS.StorageGateway.Types.EndpointNetworkConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.EndpointNetworkConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies network configuration information for the gateway associated
-- with the Amazon FSx file system.
--
-- /See:/ 'newEndpointNetworkConfiguration' smart constructor.
data EndpointNetworkConfiguration = EndpointNetworkConfiguration'
  { -- | A list of gateway IP addresses on which the associated Amazon FSx file
    -- system is available.
    --
    -- If multiple file systems are associated with this gateway, this field is
    -- required.
    ipAddresses :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EndpointNetworkConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipAddresses', 'endpointNetworkConfiguration_ipAddresses' - A list of gateway IP addresses on which the associated Amazon FSx file
-- system is available.
--
-- If multiple file systems are associated with this gateway, this field is
-- required.
newEndpointNetworkConfiguration ::
  EndpointNetworkConfiguration
newEndpointNetworkConfiguration =
  EndpointNetworkConfiguration'
    { ipAddresses =
        Prelude.Nothing
    }

-- | A list of gateway IP addresses on which the associated Amazon FSx file
-- system is available.
--
-- If multiple file systems are associated with this gateway, this field is
-- required.
endpointNetworkConfiguration_ipAddresses :: Lens.Lens' EndpointNetworkConfiguration (Prelude.Maybe [Prelude.Text])
endpointNetworkConfiguration_ipAddresses = Lens.lens (\EndpointNetworkConfiguration' {ipAddresses} -> ipAddresses) (\s@EndpointNetworkConfiguration' {} a -> s {ipAddresses = a} :: EndpointNetworkConfiguration) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EndpointNetworkConfiguration where
  parseJSON =
    Core.withObject
      "EndpointNetworkConfiguration"
      ( \x ->
          EndpointNetworkConfiguration'
            Prelude.<$> (x Core..:? "IpAddresses" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    EndpointNetworkConfiguration

instance Prelude.NFData EndpointNetworkConfiguration

instance Core.ToJSON EndpointNetworkConfiguration where
  toJSON EndpointNetworkConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("IpAddresses" Core..=) Prelude.<$> ipAddresses]
      )
