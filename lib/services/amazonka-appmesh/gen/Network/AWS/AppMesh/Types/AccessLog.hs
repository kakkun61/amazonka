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
-- Module      : Network.AWS.AppMesh.Types.AccessLog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.AccessLog where

import Network.AWS.AppMesh.Types.FileAccessLog
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the access logging information for a virtual
-- node.
--
-- /See:/ 'newAccessLog' smart constructor.
data AccessLog = AccessLog'
  { -- | The file object to send virtual node access logs to.
    file :: Prelude.Maybe FileAccessLog
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessLog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'file', 'accessLog_file' - The file object to send virtual node access logs to.
newAccessLog ::
  AccessLog
newAccessLog = AccessLog' {file = Prelude.Nothing}

-- | The file object to send virtual node access logs to.
accessLog_file :: Lens.Lens' AccessLog (Prelude.Maybe FileAccessLog)
accessLog_file = Lens.lens (\AccessLog' {file} -> file) (\s@AccessLog' {} a -> s {file = a} :: AccessLog)

instance Core.FromJSON AccessLog where
  parseJSON =
    Core.withObject
      "AccessLog"
      (\x -> AccessLog' Prelude.<$> (x Core..:? "file"))

instance Prelude.Hashable AccessLog

instance Prelude.NFData AccessLog

instance Core.ToJSON AccessLog where
  toJSON AccessLog' {..} =
    Core.object
      ( Prelude.catMaybes
          [("file" Core..=) Prelude.<$> file]
      )
