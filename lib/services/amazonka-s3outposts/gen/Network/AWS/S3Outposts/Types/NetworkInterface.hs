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
-- Module      : Network.AWS.S3Outposts.Types.NetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3Outposts.Types.NetworkInterface where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The container for the network interface.
--
-- /See:/ 'newNetworkInterface' smart constructor.
data NetworkInterface = NetworkInterface'
  { -- | The ID for the network interface.
    networkInterfaceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkInterface' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkInterfaceId', 'networkInterface_networkInterfaceId' - The ID for the network interface.
newNetworkInterface ::
  NetworkInterface
newNetworkInterface =
  NetworkInterface'
    { networkInterfaceId =
        Prelude.Nothing
    }

-- | The ID for the network interface.
networkInterface_networkInterfaceId :: Lens.Lens' NetworkInterface (Prelude.Maybe Prelude.Text)
networkInterface_networkInterfaceId = Lens.lens (\NetworkInterface' {networkInterfaceId} -> networkInterfaceId) (\s@NetworkInterface' {} a -> s {networkInterfaceId = a} :: NetworkInterface)

instance Core.FromJSON NetworkInterface where
  parseJSON =
    Core.withObject
      "NetworkInterface"
      ( \x ->
          NetworkInterface'
            Prelude.<$> (x Core..:? "NetworkInterfaceId")
      )

instance Prelude.Hashable NetworkInterface

instance Prelude.NFData NetworkInterface
