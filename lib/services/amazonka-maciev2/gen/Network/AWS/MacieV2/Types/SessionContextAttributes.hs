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
-- Module      : Network.AWS.MacieV2.Types.SessionContextAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SessionContextAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the context in which temporary security
-- credentials were issued to an entity.
--
-- /See:/ 'newSessionContextAttributes' smart constructor.
data SessionContextAttributes = SessionContextAttributes'
  { -- | The date and time, in UTC and ISO 8601 format, when the credentials were
    -- issued.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | Specifies whether the credentials were authenticated with a multi-factor
    -- authentication (MFA) device.
    mfaAuthenticated :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SessionContextAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationDate', 'sessionContextAttributes_creationDate' - The date and time, in UTC and ISO 8601 format, when the credentials were
-- issued.
--
-- 'mfaAuthenticated', 'sessionContextAttributes_mfaAuthenticated' - Specifies whether the credentials were authenticated with a multi-factor
-- authentication (MFA) device.
newSessionContextAttributes ::
  SessionContextAttributes
newSessionContextAttributes =
  SessionContextAttributes'
    { creationDate =
        Prelude.Nothing,
      mfaAuthenticated = Prelude.Nothing
    }

-- | The date and time, in UTC and ISO 8601 format, when the credentials were
-- issued.
sessionContextAttributes_creationDate :: Lens.Lens' SessionContextAttributes (Prelude.Maybe Prelude.UTCTime)
sessionContextAttributes_creationDate = Lens.lens (\SessionContextAttributes' {creationDate} -> creationDate) (\s@SessionContextAttributes' {} a -> s {creationDate = a} :: SessionContextAttributes) Prelude.. Lens.mapping Core._Time

-- | Specifies whether the credentials were authenticated with a multi-factor
-- authentication (MFA) device.
sessionContextAttributes_mfaAuthenticated :: Lens.Lens' SessionContextAttributes (Prelude.Maybe Prelude.Bool)
sessionContextAttributes_mfaAuthenticated = Lens.lens (\SessionContextAttributes' {mfaAuthenticated} -> mfaAuthenticated) (\s@SessionContextAttributes' {} a -> s {mfaAuthenticated = a} :: SessionContextAttributes)

instance Core.FromJSON SessionContextAttributes where
  parseJSON =
    Core.withObject
      "SessionContextAttributes"
      ( \x ->
          SessionContextAttributes'
            Prelude.<$> (x Core..:? "creationDate")
            Prelude.<*> (x Core..:? "mfaAuthenticated")
      )

instance Prelude.Hashable SessionContextAttributes

instance Prelude.NFData SessionContextAttributes
