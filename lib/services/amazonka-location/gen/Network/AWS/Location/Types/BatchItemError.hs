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
-- Module      : Network.AWS.Location.Types.BatchItemError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Location.Types.BatchItemError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types.BatchItemErrorCode
import qualified Network.AWS.Prelude as Prelude

-- | Contains the batch request error details associated with the request.
--
-- /See:/ 'newBatchItemError' smart constructor.
data BatchItemError = BatchItemError'
  { -- | The error code associated with the batch request error.
    code :: Prelude.Maybe BatchItemErrorCode,
    -- | A message with the reason for the batch request error.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchItemError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'code', 'batchItemError_code' - The error code associated with the batch request error.
--
-- 'message', 'batchItemError_message' - A message with the reason for the batch request error.
newBatchItemError ::
  BatchItemError
newBatchItemError =
  BatchItemError'
    { code = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | The error code associated with the batch request error.
batchItemError_code :: Lens.Lens' BatchItemError (Prelude.Maybe BatchItemErrorCode)
batchItemError_code = Lens.lens (\BatchItemError' {code} -> code) (\s@BatchItemError' {} a -> s {code = a} :: BatchItemError)

-- | A message with the reason for the batch request error.
batchItemError_message :: Lens.Lens' BatchItemError (Prelude.Maybe Prelude.Text)
batchItemError_message = Lens.lens (\BatchItemError' {message} -> message) (\s@BatchItemError' {} a -> s {message = a} :: BatchItemError)

instance Core.FromJSON BatchItemError where
  parseJSON =
    Core.withObject
      "BatchItemError"
      ( \x ->
          BatchItemError'
            Prelude.<$> (x Core..:? "Code")
            Prelude.<*> (x Core..:? "Message")
      )

instance Prelude.Hashable BatchItemError

instance Prelude.NFData BatchItemError
