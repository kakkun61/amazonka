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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayClientPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayClientPolicy where

import Network.AWS.AppMesh.Types.VirtualGatewayClientPolicyTls
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a client policy.
--
-- /See:/ 'newVirtualGatewayClientPolicy' smart constructor.
data VirtualGatewayClientPolicy = VirtualGatewayClientPolicy'
  { -- | A reference to an object that represents a Transport Layer Security
    -- (TLS) client policy.
    tls :: Prelude.Maybe VirtualGatewayClientPolicyTls
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayClientPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tls', 'virtualGatewayClientPolicy_tls' - A reference to an object that represents a Transport Layer Security
-- (TLS) client policy.
newVirtualGatewayClientPolicy ::
  VirtualGatewayClientPolicy
newVirtualGatewayClientPolicy =
  VirtualGatewayClientPolicy' {tls = Prelude.Nothing}

-- | A reference to an object that represents a Transport Layer Security
-- (TLS) client policy.
virtualGatewayClientPolicy_tls :: Lens.Lens' VirtualGatewayClientPolicy (Prelude.Maybe VirtualGatewayClientPolicyTls)
virtualGatewayClientPolicy_tls = Lens.lens (\VirtualGatewayClientPolicy' {tls} -> tls) (\s@VirtualGatewayClientPolicy' {} a -> s {tls = a} :: VirtualGatewayClientPolicy)

instance Core.FromJSON VirtualGatewayClientPolicy where
  parseJSON =
    Core.withObject
      "VirtualGatewayClientPolicy"
      ( \x ->
          VirtualGatewayClientPolicy'
            Prelude.<$> (x Core..:? "tls")
      )

instance Prelude.Hashable VirtualGatewayClientPolicy

instance Prelude.NFData VirtualGatewayClientPolicy

instance Core.ToJSON VirtualGatewayClientPolicy where
  toJSON VirtualGatewayClientPolicy' {..} =
    Core.object
      (Prelude.catMaybes [("tls" Core..=) Prelude.<$> tls])
