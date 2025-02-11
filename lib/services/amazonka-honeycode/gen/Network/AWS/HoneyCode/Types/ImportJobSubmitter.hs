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
-- Module      : Network.AWS.HoneyCode.Types.ImportJobSubmitter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.ImportJobSubmitter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that contains the attributes of the submitter of the import
-- job.
--
-- /See:/ 'newImportJobSubmitter' smart constructor.
data ImportJobSubmitter = ImportJobSubmitter'
  { -- | The email id of the submitter of the import job, if available.
    email :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The AWS user ARN of the submitter of the import job, if available.
    userArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportJobSubmitter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'email', 'importJobSubmitter_email' - The email id of the submitter of the import job, if available.
--
-- 'userArn', 'importJobSubmitter_userArn' - The AWS user ARN of the submitter of the import job, if available.
newImportJobSubmitter ::
  ImportJobSubmitter
newImportJobSubmitter =
  ImportJobSubmitter'
    { email = Prelude.Nothing,
      userArn = Prelude.Nothing
    }

-- | The email id of the submitter of the import job, if available.
importJobSubmitter_email :: Lens.Lens' ImportJobSubmitter (Prelude.Maybe Prelude.Text)
importJobSubmitter_email = Lens.lens (\ImportJobSubmitter' {email} -> email) (\s@ImportJobSubmitter' {} a -> s {email = a} :: ImportJobSubmitter) Prelude.. Lens.mapping Core._Sensitive

-- | The AWS user ARN of the submitter of the import job, if available.
importJobSubmitter_userArn :: Lens.Lens' ImportJobSubmitter (Prelude.Maybe Prelude.Text)
importJobSubmitter_userArn = Lens.lens (\ImportJobSubmitter' {userArn} -> userArn) (\s@ImportJobSubmitter' {} a -> s {userArn = a} :: ImportJobSubmitter)

instance Core.FromJSON ImportJobSubmitter where
  parseJSON =
    Core.withObject
      "ImportJobSubmitter"
      ( \x ->
          ImportJobSubmitter'
            Prelude.<$> (x Core..:? "email")
            Prelude.<*> (x Core..:? "userArn")
      )

instance Prelude.Hashable ImportJobSubmitter

instance Prelude.NFData ImportJobSubmitter
