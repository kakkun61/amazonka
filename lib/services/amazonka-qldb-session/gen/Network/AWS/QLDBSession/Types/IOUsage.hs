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
-- Module      : Network.AWS.QLDBSession.Types.IOUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QLDBSession.Types.IOUsage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains I\/O usage metrics for a command that was invoked.
--
-- /See:/ 'newIOUsage' smart constructor.
data IOUsage = IOUsage'
  { -- | The number of read I\/O requests that the command made.
    readIOs :: Prelude.Maybe Prelude.Integer,
    -- | The number of write I\/O requests that the command made.
    writeIOs :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IOUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'readIOs', 'iOUsage_readIOs' - The number of read I\/O requests that the command made.
--
-- 'writeIOs', 'iOUsage_writeIOs' - The number of write I\/O requests that the command made.
newIOUsage ::
  IOUsage
newIOUsage =
  IOUsage'
    { readIOs = Prelude.Nothing,
      writeIOs = Prelude.Nothing
    }

-- | The number of read I\/O requests that the command made.
iOUsage_readIOs :: Lens.Lens' IOUsage (Prelude.Maybe Prelude.Integer)
iOUsage_readIOs = Lens.lens (\IOUsage' {readIOs} -> readIOs) (\s@IOUsage' {} a -> s {readIOs = a} :: IOUsage)

-- | The number of write I\/O requests that the command made.
iOUsage_writeIOs :: Lens.Lens' IOUsage (Prelude.Maybe Prelude.Integer)
iOUsage_writeIOs = Lens.lens (\IOUsage' {writeIOs} -> writeIOs) (\s@IOUsage' {} a -> s {writeIOs = a} :: IOUsage)

instance Core.FromJSON IOUsage where
  parseJSON =
    Core.withObject
      "IOUsage"
      ( \x ->
          IOUsage'
            Prelude.<$> (x Core..:? "ReadIOs")
            Prelude.<*> (x Core..:? "WriteIOs")
      )

instance Prelude.Hashable IOUsage

instance Prelude.NFData IOUsage
