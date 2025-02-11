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
-- Module      : Network.AWS.AppRunner.Types.OperationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.OperationSummary where

import Network.AWS.AppRunner.Types.OperationStatus
import Network.AWS.AppRunner.Types.OperationType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides summary information for an operation that occurred on an App
-- Runner service.
--
-- /See:/ 'newOperationSummary' smart constructor.
data OperationSummary = OperationSummary'
  { -- | The current state of the operation.
    status :: Prelude.Maybe OperationStatus,
    -- | The Amazon Resource Name (ARN) of the resource that the operation acted
    -- on (for example, an App Runner service).
    targetArn :: Prelude.Maybe Prelude.Text,
    -- | The time when the operation ended. It\'s in the Unix time stamp format.
    endedAt :: Prelude.Maybe Core.POSIX,
    -- | The time when the operation started. It\'s in the Unix time stamp
    -- format.
    startedAt :: Prelude.Maybe Core.POSIX,
    -- | A unique ID of this operation. It\'s unique in the scope of the App
    -- Runner service.
    id :: Prelude.Maybe Prelude.Text,
    -- | The type of operation. It indicates a specific action that occured.
    type' :: Prelude.Maybe OperationType,
    -- | The time when the operation was last updated. It\'s in the Unix time
    -- stamp format.
    updatedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OperationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'operationSummary_status' - The current state of the operation.
--
-- 'targetArn', 'operationSummary_targetArn' - The Amazon Resource Name (ARN) of the resource that the operation acted
-- on (for example, an App Runner service).
--
-- 'endedAt', 'operationSummary_endedAt' - The time when the operation ended. It\'s in the Unix time stamp format.
--
-- 'startedAt', 'operationSummary_startedAt' - The time when the operation started. It\'s in the Unix time stamp
-- format.
--
-- 'id', 'operationSummary_id' - A unique ID of this operation. It\'s unique in the scope of the App
-- Runner service.
--
-- 'type'', 'operationSummary_type' - The type of operation. It indicates a specific action that occured.
--
-- 'updatedAt', 'operationSummary_updatedAt' - The time when the operation was last updated. It\'s in the Unix time
-- stamp format.
newOperationSummary ::
  OperationSummary
newOperationSummary =
  OperationSummary'
    { status = Prelude.Nothing,
      targetArn = Prelude.Nothing,
      endedAt = Prelude.Nothing,
      startedAt = Prelude.Nothing,
      id = Prelude.Nothing,
      type' = Prelude.Nothing,
      updatedAt = Prelude.Nothing
    }

-- | The current state of the operation.
operationSummary_status :: Lens.Lens' OperationSummary (Prelude.Maybe OperationStatus)
operationSummary_status = Lens.lens (\OperationSummary' {status} -> status) (\s@OperationSummary' {} a -> s {status = a} :: OperationSummary)

-- | The Amazon Resource Name (ARN) of the resource that the operation acted
-- on (for example, an App Runner service).
operationSummary_targetArn :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.Text)
operationSummary_targetArn = Lens.lens (\OperationSummary' {targetArn} -> targetArn) (\s@OperationSummary' {} a -> s {targetArn = a} :: OperationSummary)

-- | The time when the operation ended. It\'s in the Unix time stamp format.
operationSummary_endedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_endedAt = Lens.lens (\OperationSummary' {endedAt} -> endedAt) (\s@OperationSummary' {} a -> s {endedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

-- | The time when the operation started. It\'s in the Unix time stamp
-- format.
operationSummary_startedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_startedAt = Lens.lens (\OperationSummary' {startedAt} -> startedAt) (\s@OperationSummary' {} a -> s {startedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

-- | A unique ID of this operation. It\'s unique in the scope of the App
-- Runner service.
operationSummary_id :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.Text)
operationSummary_id = Lens.lens (\OperationSummary' {id} -> id) (\s@OperationSummary' {} a -> s {id = a} :: OperationSummary)

-- | The type of operation. It indicates a specific action that occured.
operationSummary_type :: Lens.Lens' OperationSummary (Prelude.Maybe OperationType)
operationSummary_type = Lens.lens (\OperationSummary' {type'} -> type') (\s@OperationSummary' {} a -> s {type' = a} :: OperationSummary)

-- | The time when the operation was last updated. It\'s in the Unix time
-- stamp format.
operationSummary_updatedAt :: Lens.Lens' OperationSummary (Prelude.Maybe Prelude.UTCTime)
operationSummary_updatedAt = Lens.lens (\OperationSummary' {updatedAt} -> updatedAt) (\s@OperationSummary' {} a -> s {updatedAt = a} :: OperationSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON OperationSummary where
  parseJSON =
    Core.withObject
      "OperationSummary"
      ( \x ->
          OperationSummary'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "TargetArn")
            Prelude.<*> (x Core..:? "EndedAt")
            Prelude.<*> (x Core..:? "StartedAt")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "UpdatedAt")
      )

instance Prelude.Hashable OperationSummary

instance Prelude.NFData OperationSummary
