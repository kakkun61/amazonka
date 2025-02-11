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
-- Module      : Network.AWS.IoTEvents.Types.EmailRecipients
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.EmailRecipients where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.RecipientDetail
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the information of one or more recipients who receive the
-- emails.
--
-- You must
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive emails to your AWS SSO store>.
--
-- /See:/ 'newEmailRecipients' smart constructor.
data EmailRecipients = EmailRecipients'
  { -- | Specifies one or more recipients who receive the email.
    to :: Prelude.Maybe (Prelude.NonEmpty RecipientDetail)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmailRecipients' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'to', 'emailRecipients_to' - Specifies one or more recipients who receive the email.
newEmailRecipients ::
  EmailRecipients
newEmailRecipients =
  EmailRecipients' {to = Prelude.Nothing}

-- | Specifies one or more recipients who receive the email.
emailRecipients_to :: Lens.Lens' EmailRecipients (Prelude.Maybe (Prelude.NonEmpty RecipientDetail))
emailRecipients_to = Lens.lens (\EmailRecipients' {to} -> to) (\s@EmailRecipients' {} a -> s {to = a} :: EmailRecipients) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EmailRecipients where
  parseJSON =
    Core.withObject
      "EmailRecipients"
      ( \x ->
          EmailRecipients' Prelude.<$> (x Core..:? "to")
      )

instance Prelude.Hashable EmailRecipients

instance Prelude.NFData EmailRecipients

instance Core.ToJSON EmailRecipients where
  toJSON EmailRecipients' {..} =
    Core.object
      (Prelude.catMaybes [("to" Core..=) Prelude.<$> to])
