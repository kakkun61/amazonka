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
-- Module      : Network.AWS.QLDBSession.Types.AbortTransactionResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QLDBSession.Types.AbortTransactionResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QLDBSession.Types.TimingInformation

-- | Contains the details of the aborted transaction.
--
-- /See:/ 'newAbortTransactionResult' smart constructor.
data AbortTransactionResult = AbortTransactionResult'
  { -- | Contains server-side performance information for the command.
    timingInformation :: Prelude.Maybe TimingInformation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AbortTransactionResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timingInformation', 'abortTransactionResult_timingInformation' - Contains server-side performance information for the command.
newAbortTransactionResult ::
  AbortTransactionResult
newAbortTransactionResult =
  AbortTransactionResult'
    { timingInformation =
        Prelude.Nothing
    }

-- | Contains server-side performance information for the command.
abortTransactionResult_timingInformation :: Lens.Lens' AbortTransactionResult (Prelude.Maybe TimingInformation)
abortTransactionResult_timingInformation = Lens.lens (\AbortTransactionResult' {timingInformation} -> timingInformation) (\s@AbortTransactionResult' {} a -> s {timingInformation = a} :: AbortTransactionResult)

instance Core.FromJSON AbortTransactionResult where
  parseJSON =
    Core.withObject
      "AbortTransactionResult"
      ( \x ->
          AbortTransactionResult'
            Prelude.<$> (x Core..:? "TimingInformation")
      )

instance Prelude.Hashable AbortTransactionResult

instance Prelude.NFData AbortTransactionResult
