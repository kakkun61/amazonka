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
-- Module      : Network.AWS.Grafana.Types.UpdateError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Grafana.Types.UpdateError where

import qualified Network.AWS.Core as Core
import Network.AWS.Grafana.Types.UpdateInstruction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure containing information about one error encountered while
-- performing an
-- <https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html UpdatePermissions>
-- operation.
--
-- /See:/ 'newUpdateError' smart constructor.
data UpdateError = UpdateError'
  { -- | Specifies which permission update caused the error.
    causedBy :: UpdateInstruction,
    -- | The error code.
    code :: Prelude.Natural,
    -- | The message for this error.
    message :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'causedBy', 'updateError_causedBy' - Specifies which permission update caused the error.
--
-- 'code', 'updateError_code' - The error code.
--
-- 'message', 'updateError_message' - The message for this error.
newUpdateError ::
  -- | 'causedBy'
  UpdateInstruction ->
  -- | 'code'
  Prelude.Natural ->
  -- | 'message'
  Prelude.Text ->
  UpdateError
newUpdateError pCausedBy_ pCode_ pMessage_ =
  UpdateError'
    { causedBy = pCausedBy_,
      code = pCode_,
      message = pMessage_
    }

-- | Specifies which permission update caused the error.
updateError_causedBy :: Lens.Lens' UpdateError UpdateInstruction
updateError_causedBy = Lens.lens (\UpdateError' {causedBy} -> causedBy) (\s@UpdateError' {} a -> s {causedBy = a} :: UpdateError)

-- | The error code.
updateError_code :: Lens.Lens' UpdateError Prelude.Natural
updateError_code = Lens.lens (\UpdateError' {code} -> code) (\s@UpdateError' {} a -> s {code = a} :: UpdateError)

-- | The message for this error.
updateError_message :: Lens.Lens' UpdateError Prelude.Text
updateError_message = Lens.lens (\UpdateError' {message} -> message) (\s@UpdateError' {} a -> s {message = a} :: UpdateError)

instance Core.FromJSON UpdateError where
  parseJSON =
    Core.withObject
      "UpdateError"
      ( \x ->
          UpdateError'
            Prelude.<$> (x Core..: "causedBy")
            Prelude.<*> (x Core..: "code")
            Prelude.<*> (x Core..: "message")
      )

instance Prelude.Hashable UpdateError

instance Prelude.NFData UpdateError
