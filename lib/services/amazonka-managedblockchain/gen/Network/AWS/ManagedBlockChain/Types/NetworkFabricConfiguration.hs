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
-- Module      : Network.AWS.ManagedBlockChain.Types.NetworkFabricConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.NetworkFabricConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.Edition
import qualified Network.AWS.Prelude as Prelude

-- | Hyperledger Fabric configuration properties for the network.
--
-- /See:/ 'newNetworkFabricConfiguration' smart constructor.
data NetworkFabricConfiguration = NetworkFabricConfiguration'
  { -- | The edition of Amazon Managed Blockchain that the network uses. For more
    -- information, see
    -- <http://aws.amazon.com/managed-blockchain/pricing/ Amazon Managed Blockchain Pricing>.
    edition :: Edition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkFabricConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'edition', 'networkFabricConfiguration_edition' - The edition of Amazon Managed Blockchain that the network uses. For more
-- information, see
-- <http://aws.amazon.com/managed-blockchain/pricing/ Amazon Managed Blockchain Pricing>.
newNetworkFabricConfiguration ::
  -- | 'edition'
  Edition ->
  NetworkFabricConfiguration
newNetworkFabricConfiguration pEdition_ =
  NetworkFabricConfiguration' {edition = pEdition_}

-- | The edition of Amazon Managed Blockchain that the network uses. For more
-- information, see
-- <http://aws.amazon.com/managed-blockchain/pricing/ Amazon Managed Blockchain Pricing>.
networkFabricConfiguration_edition :: Lens.Lens' NetworkFabricConfiguration Edition
networkFabricConfiguration_edition = Lens.lens (\NetworkFabricConfiguration' {edition} -> edition) (\s@NetworkFabricConfiguration' {} a -> s {edition = a} :: NetworkFabricConfiguration)

instance Prelude.Hashable NetworkFabricConfiguration

instance Prelude.NFData NetworkFabricConfiguration

instance Core.ToJSON NetworkFabricConfiguration where
  toJSON NetworkFabricConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Edition" Core..= edition)]
      )
