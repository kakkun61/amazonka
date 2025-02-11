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
-- Module      : Network.AWS.MacieV2.Types.SessionContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SessionContext where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.SessionContextAttributes
import Network.AWS.MacieV2.Types.SessionIssuer
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a session that was created for an entity that
-- performed an action by using temporary security credentials.
--
-- /See:/ 'newSessionContext' smart constructor.
data SessionContext = SessionContext'
  { -- | The date and time when the credentials were issued, and whether the
    -- credentials were authenticated with a multi-factor authentication (MFA)
    -- device.
    attributes :: Prelude.Maybe SessionContextAttributes,
    -- | The source and type of credentials that were issued to the entity.
    sessionIssuer :: Prelude.Maybe SessionIssuer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SessionContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'sessionContext_attributes' - The date and time when the credentials were issued, and whether the
-- credentials were authenticated with a multi-factor authentication (MFA)
-- device.
--
-- 'sessionIssuer', 'sessionContext_sessionIssuer' - The source and type of credentials that were issued to the entity.
newSessionContext ::
  SessionContext
newSessionContext =
  SessionContext'
    { attributes = Prelude.Nothing,
      sessionIssuer = Prelude.Nothing
    }

-- | The date and time when the credentials were issued, and whether the
-- credentials were authenticated with a multi-factor authentication (MFA)
-- device.
sessionContext_attributes :: Lens.Lens' SessionContext (Prelude.Maybe SessionContextAttributes)
sessionContext_attributes = Lens.lens (\SessionContext' {attributes} -> attributes) (\s@SessionContext' {} a -> s {attributes = a} :: SessionContext)

-- | The source and type of credentials that were issued to the entity.
sessionContext_sessionIssuer :: Lens.Lens' SessionContext (Prelude.Maybe SessionIssuer)
sessionContext_sessionIssuer = Lens.lens (\SessionContext' {sessionIssuer} -> sessionIssuer) (\s@SessionContext' {} a -> s {sessionIssuer = a} :: SessionContext)

instance Core.FromJSON SessionContext where
  parseJSON =
    Core.withObject
      "SessionContext"
      ( \x ->
          SessionContext'
            Prelude.<$> (x Core..:? "attributes")
            Prelude.<*> (x Core..:? "sessionIssuer")
      )

instance Prelude.Hashable SessionContext

instance Prelude.NFData SessionContext
