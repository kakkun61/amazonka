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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayLogging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayLogging where

import Network.AWS.AppMesh.Types.VirtualGatewayAccessLog
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents logging information.
--
-- /See:/ 'newVirtualGatewayLogging' smart constructor.
data VirtualGatewayLogging = VirtualGatewayLogging'
  { -- | The access log configuration.
    accessLog :: Prelude.Maybe VirtualGatewayAccessLog
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayLogging' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessLog', 'virtualGatewayLogging_accessLog' - The access log configuration.
newVirtualGatewayLogging ::
  VirtualGatewayLogging
newVirtualGatewayLogging =
  VirtualGatewayLogging' {accessLog = Prelude.Nothing}

-- | The access log configuration.
virtualGatewayLogging_accessLog :: Lens.Lens' VirtualGatewayLogging (Prelude.Maybe VirtualGatewayAccessLog)
virtualGatewayLogging_accessLog = Lens.lens (\VirtualGatewayLogging' {accessLog} -> accessLog) (\s@VirtualGatewayLogging' {} a -> s {accessLog = a} :: VirtualGatewayLogging)

instance Core.FromJSON VirtualGatewayLogging where
  parseJSON =
    Core.withObject
      "VirtualGatewayLogging"
      ( \x ->
          VirtualGatewayLogging'
            Prelude.<$> (x Core..:? "accessLog")
      )

instance Prelude.Hashable VirtualGatewayLogging

instance Prelude.NFData VirtualGatewayLogging

instance Core.ToJSON VirtualGatewayLogging where
  toJSON VirtualGatewayLogging' {..} =
    Core.object
      ( Prelude.catMaybes
          [("accessLog" Core..=) Prelude.<$> accessLog]
      )
