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
-- Module      : Network.AWS.AppStream.Types.ResourceError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ResourceError where

import Network.AWS.AppStream.Types.FleetErrorCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a resource error.
--
-- /See:/ 'newResourceError' smart constructor.
data ResourceError = ResourceError'
  { -- | The error code.
    errorCode :: Prelude.Maybe FleetErrorCode,
    -- | The error message.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The time the error occurred.
    errorTimestamp :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorCode', 'resourceError_errorCode' - The error code.
--
-- 'errorMessage', 'resourceError_errorMessage' - The error message.
--
-- 'errorTimestamp', 'resourceError_errorTimestamp' - The time the error occurred.
newResourceError ::
  ResourceError
newResourceError =
  ResourceError'
    { errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      errorTimestamp = Prelude.Nothing
    }

-- | The error code.
resourceError_errorCode :: Lens.Lens' ResourceError (Prelude.Maybe FleetErrorCode)
resourceError_errorCode = Lens.lens (\ResourceError' {errorCode} -> errorCode) (\s@ResourceError' {} a -> s {errorCode = a} :: ResourceError)

-- | The error message.
resourceError_errorMessage :: Lens.Lens' ResourceError (Prelude.Maybe Prelude.Text)
resourceError_errorMessage = Lens.lens (\ResourceError' {errorMessage} -> errorMessage) (\s@ResourceError' {} a -> s {errorMessage = a} :: ResourceError)

-- | The time the error occurred.
resourceError_errorTimestamp :: Lens.Lens' ResourceError (Prelude.Maybe Prelude.UTCTime)
resourceError_errorTimestamp = Lens.lens (\ResourceError' {errorTimestamp} -> errorTimestamp) (\s@ResourceError' {} a -> s {errorTimestamp = a} :: ResourceError) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ResourceError where
  parseJSON =
    Core.withObject
      "ResourceError"
      ( \x ->
          ResourceError'
            Prelude.<$> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "ErrorTimestamp")
      )

instance Prelude.Hashable ResourceError

instance Prelude.NFData ResourceError
