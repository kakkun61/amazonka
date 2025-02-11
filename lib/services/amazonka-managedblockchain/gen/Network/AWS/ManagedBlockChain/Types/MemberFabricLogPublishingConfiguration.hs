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
-- Module      : Network.AWS.ManagedBlockChain.Types.MemberFabricLogPublishingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.MemberFabricLogPublishingConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.LogConfigurations
import qualified Network.AWS.Prelude as Prelude

-- | Configuration properties for logging events associated with a member of
-- a Managed Blockchain network using the Hyperledger Fabric framework.
--
-- /See:/ 'newMemberFabricLogPublishingConfiguration' smart constructor.
data MemberFabricLogPublishingConfiguration = MemberFabricLogPublishingConfiguration'
  { -- | Configuration properties for logging events associated with a member\'s
    -- Certificate Authority (CA). CA logs help you determine when a member in
    -- your account joins the network, or when new peers register with a member
    -- CA.
    caLogs :: Prelude.Maybe LogConfigurations
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MemberFabricLogPublishingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'caLogs', 'memberFabricLogPublishingConfiguration_caLogs' - Configuration properties for logging events associated with a member\'s
-- Certificate Authority (CA). CA logs help you determine when a member in
-- your account joins the network, or when new peers register with a member
-- CA.
newMemberFabricLogPublishingConfiguration ::
  MemberFabricLogPublishingConfiguration
newMemberFabricLogPublishingConfiguration =
  MemberFabricLogPublishingConfiguration'
    { caLogs =
        Prelude.Nothing
    }

-- | Configuration properties for logging events associated with a member\'s
-- Certificate Authority (CA). CA logs help you determine when a member in
-- your account joins the network, or when new peers register with a member
-- CA.
memberFabricLogPublishingConfiguration_caLogs :: Lens.Lens' MemberFabricLogPublishingConfiguration (Prelude.Maybe LogConfigurations)
memberFabricLogPublishingConfiguration_caLogs = Lens.lens (\MemberFabricLogPublishingConfiguration' {caLogs} -> caLogs) (\s@MemberFabricLogPublishingConfiguration' {} a -> s {caLogs = a} :: MemberFabricLogPublishingConfiguration)

instance
  Core.FromJSON
    MemberFabricLogPublishingConfiguration
  where
  parseJSON =
    Core.withObject
      "MemberFabricLogPublishingConfiguration"
      ( \x ->
          MemberFabricLogPublishingConfiguration'
            Prelude.<$> (x Core..:? "CaLogs")
      )

instance
  Prelude.Hashable
    MemberFabricLogPublishingConfiguration

instance
  Prelude.NFData
    MemberFabricLogPublishingConfiguration

instance
  Core.ToJSON
    MemberFabricLogPublishingConfiguration
  where
  toJSON MemberFabricLogPublishingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("CaLogs" Core..=) Prelude.<$> caLogs]
      )
