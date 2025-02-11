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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayAccessLog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayAccessLog where

import Network.AWS.AppMesh.Types.VirtualGatewayFileAccessLog
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The access log configuration for a virtual gateway.
--
-- /See:/ 'newVirtualGatewayAccessLog' smart constructor.
data VirtualGatewayAccessLog = VirtualGatewayAccessLog'
  { -- | The file object to send virtual gateway access logs to.
    file :: Prelude.Maybe VirtualGatewayFileAccessLog
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayAccessLog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'file', 'virtualGatewayAccessLog_file' - The file object to send virtual gateway access logs to.
newVirtualGatewayAccessLog ::
  VirtualGatewayAccessLog
newVirtualGatewayAccessLog =
  VirtualGatewayAccessLog' {file = Prelude.Nothing}

-- | The file object to send virtual gateway access logs to.
virtualGatewayAccessLog_file :: Lens.Lens' VirtualGatewayAccessLog (Prelude.Maybe VirtualGatewayFileAccessLog)
virtualGatewayAccessLog_file = Lens.lens (\VirtualGatewayAccessLog' {file} -> file) (\s@VirtualGatewayAccessLog' {} a -> s {file = a} :: VirtualGatewayAccessLog)

instance Core.FromJSON VirtualGatewayAccessLog where
  parseJSON =
    Core.withObject
      "VirtualGatewayAccessLog"
      ( \x ->
          VirtualGatewayAccessLog'
            Prelude.<$> (x Core..:? "file")
      )

instance Prelude.Hashable VirtualGatewayAccessLog

instance Prelude.NFData VirtualGatewayAccessLog

instance Core.ToJSON VirtualGatewayAccessLog where
  toJSON VirtualGatewayAccessLog' {..} =
    Core.object
      ( Prelude.catMaybes
          [("file" Core..=) Prelude.<$> file]
      )
