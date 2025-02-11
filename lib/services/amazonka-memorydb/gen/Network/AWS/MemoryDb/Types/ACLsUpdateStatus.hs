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
-- Module      : Network.AWS.MemoryDb.Types.ACLsUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MemoryDb.Types.ACLsUpdateStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The status of the ACL update
--
-- /See:/ 'newACLsUpdateStatus' smart constructor.
data ACLsUpdateStatus = ACLsUpdateStatus'
  { -- | A list of ACLs pending to be applied.
    aCLToApply :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ACLsUpdateStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aCLToApply', 'aCLsUpdateStatus_aCLToApply' - A list of ACLs pending to be applied.
newACLsUpdateStatus ::
  ACLsUpdateStatus
newACLsUpdateStatus =
  ACLsUpdateStatus' {aCLToApply = Prelude.Nothing}

-- | A list of ACLs pending to be applied.
aCLsUpdateStatus_aCLToApply :: Lens.Lens' ACLsUpdateStatus (Prelude.Maybe Prelude.Text)
aCLsUpdateStatus_aCLToApply = Lens.lens (\ACLsUpdateStatus' {aCLToApply} -> aCLToApply) (\s@ACLsUpdateStatus' {} a -> s {aCLToApply = a} :: ACLsUpdateStatus)

instance Core.FromJSON ACLsUpdateStatus where
  parseJSON =
    Core.withObject
      "ACLsUpdateStatus"
      ( \x ->
          ACLsUpdateStatus'
            Prelude.<$> (x Core..:? "ACLToApply")
      )

instance Prelude.Hashable ACLsUpdateStatus

instance Prelude.NFData ACLsUpdateStatus
