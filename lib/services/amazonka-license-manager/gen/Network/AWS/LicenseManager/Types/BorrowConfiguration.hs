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
-- Module      : Network.AWS.LicenseManager.Types.BorrowConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.BorrowConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about a borrow configuration.
--
-- /See:/ 'newBorrowConfiguration' smart constructor.
data BorrowConfiguration = BorrowConfiguration'
  { -- | Indicates whether early check-ins are allowed.
    allowEarlyCheckIn :: Prelude.Bool,
    -- | Maximum time for the borrow configuration, in minutes.
    maxTimeToLiveInMinutes :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BorrowConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allowEarlyCheckIn', 'borrowConfiguration_allowEarlyCheckIn' - Indicates whether early check-ins are allowed.
--
-- 'maxTimeToLiveInMinutes', 'borrowConfiguration_maxTimeToLiveInMinutes' - Maximum time for the borrow configuration, in minutes.
newBorrowConfiguration ::
  -- | 'allowEarlyCheckIn'
  Prelude.Bool ->
  -- | 'maxTimeToLiveInMinutes'
  Prelude.Int ->
  BorrowConfiguration
newBorrowConfiguration
  pAllowEarlyCheckIn_
  pMaxTimeToLiveInMinutes_ =
    BorrowConfiguration'
      { allowEarlyCheckIn =
          pAllowEarlyCheckIn_,
        maxTimeToLiveInMinutes = pMaxTimeToLiveInMinutes_
      }

-- | Indicates whether early check-ins are allowed.
borrowConfiguration_allowEarlyCheckIn :: Lens.Lens' BorrowConfiguration Prelude.Bool
borrowConfiguration_allowEarlyCheckIn = Lens.lens (\BorrowConfiguration' {allowEarlyCheckIn} -> allowEarlyCheckIn) (\s@BorrowConfiguration' {} a -> s {allowEarlyCheckIn = a} :: BorrowConfiguration)

-- | Maximum time for the borrow configuration, in minutes.
borrowConfiguration_maxTimeToLiveInMinutes :: Lens.Lens' BorrowConfiguration Prelude.Int
borrowConfiguration_maxTimeToLiveInMinutes = Lens.lens (\BorrowConfiguration' {maxTimeToLiveInMinutes} -> maxTimeToLiveInMinutes) (\s@BorrowConfiguration' {} a -> s {maxTimeToLiveInMinutes = a} :: BorrowConfiguration)

instance Core.FromJSON BorrowConfiguration where
  parseJSON =
    Core.withObject
      "BorrowConfiguration"
      ( \x ->
          BorrowConfiguration'
            Prelude.<$> (x Core..: "AllowEarlyCheckIn")
            Prelude.<*> (x Core..: "MaxTimeToLiveInMinutes")
      )

instance Prelude.Hashable BorrowConfiguration

instance Prelude.NFData BorrowConfiguration

instance Core.ToJSON BorrowConfiguration where
  toJSON BorrowConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AllowEarlyCheckIn" Core..= allowEarlyCheckIn),
            Prelude.Just
              ( "MaxTimeToLiveInMinutes"
                  Core..= maxTimeToLiveInMinutes
              )
          ]
      )
