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
-- Module      : Network.AWS.Chime.Types.MemberError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.MemberError where

import Network.AWS.Chime.Types.ErrorCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The list of errors returned when a member action results in an error.
--
-- /See:/ 'newMemberError' smart constructor.
data MemberError = MemberError'
  { -- | The member ID.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | The error code.
    errorCode :: Prelude.Maybe ErrorCode,
    -- | The error message.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MemberError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberId', 'memberError_memberId' - The member ID.
--
-- 'errorCode', 'memberError_errorCode' - The error code.
--
-- 'errorMessage', 'memberError_errorMessage' - The error message.
newMemberError ::
  MemberError
newMemberError =
  MemberError'
    { memberId = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The member ID.
memberError_memberId :: Lens.Lens' MemberError (Prelude.Maybe Prelude.Text)
memberError_memberId = Lens.lens (\MemberError' {memberId} -> memberId) (\s@MemberError' {} a -> s {memberId = a} :: MemberError)

-- | The error code.
memberError_errorCode :: Lens.Lens' MemberError (Prelude.Maybe ErrorCode)
memberError_errorCode = Lens.lens (\MemberError' {errorCode} -> errorCode) (\s@MemberError' {} a -> s {errorCode = a} :: MemberError)

-- | The error message.
memberError_errorMessage :: Lens.Lens' MemberError (Prelude.Maybe Prelude.Text)
memberError_errorMessage = Lens.lens (\MemberError' {errorMessage} -> errorMessage) (\s@MemberError' {} a -> s {errorMessage = a} :: MemberError)

instance Core.FromJSON MemberError where
  parseJSON =
    Core.withObject
      "MemberError"
      ( \x ->
          MemberError'
            Prelude.<$> (x Core..:? "MemberId")
            Prelude.<*> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "ErrorMessage")
      )

instance Prelude.Hashable MemberError

instance Prelude.NFData MemberError
