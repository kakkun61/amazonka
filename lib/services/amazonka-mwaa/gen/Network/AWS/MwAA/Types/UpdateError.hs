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
-- Module      : Network.AWS.MwAA.Types.UpdateError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MwAA.Types.UpdateError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object containing the error encountered with the last update:
-- @ErrorCode@, @ErrorMessage@.
--
-- /See:/ 'newUpdateError' smart constructor.
data UpdateError = UpdateError'
  { -- | The error code that corresponds to the error with the last update.
    errorCode :: Prelude.Maybe Prelude.Text,
    -- | The error message that corresponds to the error code.
    errorMessage :: Prelude.Maybe Prelude.Text
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
-- 'errorCode', 'updateError_errorCode' - The error code that corresponds to the error with the last update.
--
-- 'errorMessage', 'updateError_errorMessage' - The error message that corresponds to the error code.
newUpdateError ::
  UpdateError
newUpdateError =
  UpdateError'
    { errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The error code that corresponds to the error with the last update.
updateError_errorCode :: Lens.Lens' UpdateError (Prelude.Maybe Prelude.Text)
updateError_errorCode = Lens.lens (\UpdateError' {errorCode} -> errorCode) (\s@UpdateError' {} a -> s {errorCode = a} :: UpdateError)

-- | The error message that corresponds to the error code.
updateError_errorMessage :: Lens.Lens' UpdateError (Prelude.Maybe Prelude.Text)
updateError_errorMessage = Lens.lens (\UpdateError' {errorMessage} -> errorMessage) (\s@UpdateError' {} a -> s {errorMessage = a} :: UpdateError)

instance Core.FromJSON UpdateError where
  parseJSON =
    Core.withObject
      "UpdateError"
      ( \x ->
          UpdateError'
            Prelude.<$> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "ErrorMessage")
      )

instance Prelude.Hashable UpdateError

instance Prelude.NFData UpdateError
