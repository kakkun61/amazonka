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
-- Module      : Network.AWS.CognitoIdentity.Types.UnprocessedIdentityId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.UnprocessedIdentityId where

import Network.AWS.CognitoIdentity.Types.CognitoErrorCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An array of UnprocessedIdentityId objects, each of which contains an
-- ErrorCode and IdentityId.
--
-- /See:/ 'newUnprocessedIdentityId' smart constructor.
data UnprocessedIdentityId = UnprocessedIdentityId'
  { -- | The error code indicating the type of error that occurred.
    errorCode :: Prelude.Maybe CognitoErrorCode,
    -- | A unique identifier in the format REGION:GUID.
    identityId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UnprocessedIdentityId' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorCode', 'unprocessedIdentityId_errorCode' - The error code indicating the type of error that occurred.
--
-- 'identityId', 'unprocessedIdentityId_identityId' - A unique identifier in the format REGION:GUID.
newUnprocessedIdentityId ::
  UnprocessedIdentityId
newUnprocessedIdentityId =
  UnprocessedIdentityId'
    { errorCode = Prelude.Nothing,
      identityId = Prelude.Nothing
    }

-- | The error code indicating the type of error that occurred.
unprocessedIdentityId_errorCode :: Lens.Lens' UnprocessedIdentityId (Prelude.Maybe CognitoErrorCode)
unprocessedIdentityId_errorCode = Lens.lens (\UnprocessedIdentityId' {errorCode} -> errorCode) (\s@UnprocessedIdentityId' {} a -> s {errorCode = a} :: UnprocessedIdentityId)

-- | A unique identifier in the format REGION:GUID.
unprocessedIdentityId_identityId :: Lens.Lens' UnprocessedIdentityId (Prelude.Maybe Prelude.Text)
unprocessedIdentityId_identityId = Lens.lens (\UnprocessedIdentityId' {identityId} -> identityId) (\s@UnprocessedIdentityId' {} a -> s {identityId = a} :: UnprocessedIdentityId)

instance Core.FromJSON UnprocessedIdentityId where
  parseJSON =
    Core.withObject
      "UnprocessedIdentityId"
      ( \x ->
          UnprocessedIdentityId'
            Prelude.<$> (x Core..:? "ErrorCode")
            Prelude.<*> (x Core..:? "IdentityId")
      )

instance Prelude.Hashable UnprocessedIdentityId

instance Prelude.NFData UnprocessedIdentityId
