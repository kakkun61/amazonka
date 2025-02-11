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
-- Module      : Network.AWS.SecurityHub.Types.ImportFindingsError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.ImportFindingsError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The list of the findings that cannot be imported. For each finding, the
-- list provides the error.
--
-- /See:/ 'newImportFindingsError' smart constructor.
data ImportFindingsError = ImportFindingsError'
  { -- | The identifier of the finding that could not be updated.
    id :: Prelude.Text,
    -- | The code of the error returned by the @BatchImportFindings@ operation.
    errorCode :: Prelude.Text,
    -- | The message of the error returned by the @BatchImportFindings@
    -- operation.
    errorMessage :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportFindingsError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'importFindingsError_id' - The identifier of the finding that could not be updated.
--
-- 'errorCode', 'importFindingsError_errorCode' - The code of the error returned by the @BatchImportFindings@ operation.
--
-- 'errorMessage', 'importFindingsError_errorMessage' - The message of the error returned by the @BatchImportFindings@
-- operation.
newImportFindingsError ::
  -- | 'id'
  Prelude.Text ->
  -- | 'errorCode'
  Prelude.Text ->
  -- | 'errorMessage'
  Prelude.Text ->
  ImportFindingsError
newImportFindingsError
  pId_
  pErrorCode_
  pErrorMessage_ =
    ImportFindingsError'
      { id = pId_,
        errorCode = pErrorCode_,
        errorMessage = pErrorMessage_
      }

-- | The identifier of the finding that could not be updated.
importFindingsError_id :: Lens.Lens' ImportFindingsError Prelude.Text
importFindingsError_id = Lens.lens (\ImportFindingsError' {id} -> id) (\s@ImportFindingsError' {} a -> s {id = a} :: ImportFindingsError)

-- | The code of the error returned by the @BatchImportFindings@ operation.
importFindingsError_errorCode :: Lens.Lens' ImportFindingsError Prelude.Text
importFindingsError_errorCode = Lens.lens (\ImportFindingsError' {errorCode} -> errorCode) (\s@ImportFindingsError' {} a -> s {errorCode = a} :: ImportFindingsError)

-- | The message of the error returned by the @BatchImportFindings@
-- operation.
importFindingsError_errorMessage :: Lens.Lens' ImportFindingsError Prelude.Text
importFindingsError_errorMessage = Lens.lens (\ImportFindingsError' {errorMessage} -> errorMessage) (\s@ImportFindingsError' {} a -> s {errorMessage = a} :: ImportFindingsError)

instance Core.FromJSON ImportFindingsError where
  parseJSON =
    Core.withObject
      "ImportFindingsError"
      ( \x ->
          ImportFindingsError'
            Prelude.<$> (x Core..: "Id")
            Prelude.<*> (x Core..: "ErrorCode")
            Prelude.<*> (x Core..: "ErrorMessage")
      )

instance Prelude.Hashable ImportFindingsError

instance Prelude.NFData ImportFindingsError
