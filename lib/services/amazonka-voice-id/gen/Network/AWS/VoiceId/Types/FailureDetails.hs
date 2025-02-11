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
-- Module      : Network.AWS.VoiceId.Types.FailureDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Types.FailureDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains error details for a failed batch job.
--
-- /See:/ 'newFailureDetails' smart constructor.
data FailureDetails = FailureDetails'
  { -- | A description of the error that caused the batch job failure.
    message :: Prelude.Maybe Prelude.Text,
    -- | An HTTP status code representing the nature of the error.
    statusCode :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FailureDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'failureDetails_message' - A description of the error that caused the batch job failure.
--
-- 'statusCode', 'failureDetails_statusCode' - An HTTP status code representing the nature of the error.
newFailureDetails ::
  FailureDetails
newFailureDetails =
  FailureDetails'
    { message = Prelude.Nothing,
      statusCode = Prelude.Nothing
    }

-- | A description of the error that caused the batch job failure.
failureDetails_message :: Lens.Lens' FailureDetails (Prelude.Maybe Prelude.Text)
failureDetails_message = Lens.lens (\FailureDetails' {message} -> message) (\s@FailureDetails' {} a -> s {message = a} :: FailureDetails)

-- | An HTTP status code representing the nature of the error.
failureDetails_statusCode :: Lens.Lens' FailureDetails (Prelude.Maybe Prelude.Int)
failureDetails_statusCode = Lens.lens (\FailureDetails' {statusCode} -> statusCode) (\s@FailureDetails' {} a -> s {statusCode = a} :: FailureDetails)

instance Core.FromJSON FailureDetails where
  parseJSON =
    Core.withObject
      "FailureDetails"
      ( \x ->
          FailureDetails'
            Prelude.<$> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "StatusCode")
      )

instance Prelude.Hashable FailureDetails

instance Prelude.NFData FailureDetails
