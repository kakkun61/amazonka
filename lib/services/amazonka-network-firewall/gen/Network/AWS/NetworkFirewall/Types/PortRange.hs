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
-- Module      : Network.AWS.NetworkFirewall.Types.PortRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.PortRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A single port range specification. This is used for source and
-- destination port ranges in the stateless rule MatchAttributes,
-- @SourcePorts@, and @DestinationPorts@ settings.
--
-- /See:/ 'newPortRange' smart constructor.
data PortRange = PortRange'
  { -- | The lower limit of the port range. This must be less than or equal to
    -- the @ToPort@ specification.
    fromPort :: Prelude.Natural,
    -- | The upper limit of the port range. This must be greater than or equal to
    -- the @FromPort@ specification.
    toPort :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fromPort', 'portRange_fromPort' - The lower limit of the port range. This must be less than or equal to
-- the @ToPort@ specification.
--
-- 'toPort', 'portRange_toPort' - The upper limit of the port range. This must be greater than or equal to
-- the @FromPort@ specification.
newPortRange ::
  -- | 'fromPort'
  Prelude.Natural ->
  -- | 'toPort'
  Prelude.Natural ->
  PortRange
newPortRange pFromPort_ pToPort_ =
  PortRange'
    { fromPort = pFromPort_,
      toPort = pToPort_
    }

-- | The lower limit of the port range. This must be less than or equal to
-- the @ToPort@ specification.
portRange_fromPort :: Lens.Lens' PortRange Prelude.Natural
portRange_fromPort = Lens.lens (\PortRange' {fromPort} -> fromPort) (\s@PortRange' {} a -> s {fromPort = a} :: PortRange)

-- | The upper limit of the port range. This must be greater than or equal to
-- the @FromPort@ specification.
portRange_toPort :: Lens.Lens' PortRange Prelude.Natural
portRange_toPort = Lens.lens (\PortRange' {toPort} -> toPort) (\s@PortRange' {} a -> s {toPort = a} :: PortRange)

instance Core.FromJSON PortRange where
  parseJSON =
    Core.withObject
      "PortRange"
      ( \x ->
          PortRange'
            Prelude.<$> (x Core..: "FromPort")
            Prelude.<*> (x Core..: "ToPort")
      )

instance Prelude.Hashable PortRange

instance Prelude.NFData PortRange

instance Core.ToJSON PortRange where
  toJSON PortRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("FromPort" Core..= fromPort),
            Prelude.Just ("ToPort" Core..= toPort)
          ]
      )
