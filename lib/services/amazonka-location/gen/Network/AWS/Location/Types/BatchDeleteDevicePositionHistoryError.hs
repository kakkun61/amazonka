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
-- Module      : Network.AWS.Location.Types.BatchDeleteDevicePositionHistoryError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Location.Types.BatchDeleteDevicePositionHistoryError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types.BatchItemError
import qualified Network.AWS.Prelude as Prelude

-- | Contains the tracker resource details.
--
-- /See:/ 'newBatchDeleteDevicePositionHistoryError' smart constructor.
data BatchDeleteDevicePositionHistoryError = BatchDeleteDevicePositionHistoryError'
  { -- | The ID of the device for this position.
    deviceId :: Prelude.Text,
    error :: BatchItemError
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteDevicePositionHistoryError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceId', 'batchDeleteDevicePositionHistoryError_deviceId' - The ID of the device for this position.
--
-- 'error', 'batchDeleteDevicePositionHistoryError_error' - Undocumented member.
newBatchDeleteDevicePositionHistoryError ::
  -- | 'deviceId'
  Prelude.Text ->
  -- | 'error'
  BatchItemError ->
  BatchDeleteDevicePositionHistoryError
newBatchDeleteDevicePositionHistoryError
  pDeviceId_
  pError_ =
    BatchDeleteDevicePositionHistoryError'
      { deviceId =
          pDeviceId_,
        error = pError_
      }

-- | The ID of the device for this position.
batchDeleteDevicePositionHistoryError_deviceId :: Lens.Lens' BatchDeleteDevicePositionHistoryError Prelude.Text
batchDeleteDevicePositionHistoryError_deviceId = Lens.lens (\BatchDeleteDevicePositionHistoryError' {deviceId} -> deviceId) (\s@BatchDeleteDevicePositionHistoryError' {} a -> s {deviceId = a} :: BatchDeleteDevicePositionHistoryError)

-- | Undocumented member.
batchDeleteDevicePositionHistoryError_error :: Lens.Lens' BatchDeleteDevicePositionHistoryError BatchItemError
batchDeleteDevicePositionHistoryError_error = Lens.lens (\BatchDeleteDevicePositionHistoryError' {error} -> error) (\s@BatchDeleteDevicePositionHistoryError' {} a -> s {error = a} :: BatchDeleteDevicePositionHistoryError)

instance
  Core.FromJSON
    BatchDeleteDevicePositionHistoryError
  where
  parseJSON =
    Core.withObject
      "BatchDeleteDevicePositionHistoryError"
      ( \x ->
          BatchDeleteDevicePositionHistoryError'
            Prelude.<$> (x Core..: "DeviceId")
            Prelude.<*> (x Core..: "Error")
      )

instance
  Prelude.Hashable
    BatchDeleteDevicePositionHistoryError

instance
  Prelude.NFData
    BatchDeleteDevicePositionHistoryError
