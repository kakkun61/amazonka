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
-- Module      : Network.AWS.IoTEvents.Types.EmailConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.EmailConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.EmailContent
import Network.AWS.IoTEvents.Types.EmailRecipients
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the configuration information of email notifications.
--
-- /See:/ 'newEmailConfiguration' smart constructor.
data EmailConfiguration = EmailConfiguration'
  { -- | Contains the subject and message of an email.
    content :: Prelude.Maybe EmailContent,
    -- | The email address that sends emails.
    --
    -- If you use the AWS IoT Events managed AWS Lambda function to manage your
    -- emails, you must
    -- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html verify the email address that sends emails in Amazon SES>.
    from :: Prelude.Text,
    -- | Contains the information of one or more recipients who receive the
    -- emails.
    --
    -- You must
    -- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive emails to your AWS SSO store>.
    recipients :: EmailRecipients
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmailConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'content', 'emailConfiguration_content' - Contains the subject and message of an email.
--
-- 'from', 'emailConfiguration_from' - The email address that sends emails.
--
-- If you use the AWS IoT Events managed AWS Lambda function to manage your
-- emails, you must
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html verify the email address that sends emails in Amazon SES>.
--
-- 'recipients', 'emailConfiguration_recipients' - Contains the information of one or more recipients who receive the
-- emails.
--
-- You must
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive emails to your AWS SSO store>.
newEmailConfiguration ::
  -- | 'from'
  Prelude.Text ->
  -- | 'recipients'
  EmailRecipients ->
  EmailConfiguration
newEmailConfiguration pFrom_ pRecipients_ =
  EmailConfiguration'
    { content = Prelude.Nothing,
      from = pFrom_,
      recipients = pRecipients_
    }

-- | Contains the subject and message of an email.
emailConfiguration_content :: Lens.Lens' EmailConfiguration (Prelude.Maybe EmailContent)
emailConfiguration_content = Lens.lens (\EmailConfiguration' {content} -> content) (\s@EmailConfiguration' {} a -> s {content = a} :: EmailConfiguration)

-- | The email address that sends emails.
--
-- If you use the AWS IoT Events managed AWS Lambda function to manage your
-- emails, you must
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html verify the email address that sends emails in Amazon SES>.
emailConfiguration_from :: Lens.Lens' EmailConfiguration Prelude.Text
emailConfiguration_from = Lens.lens (\EmailConfiguration' {from} -> from) (\s@EmailConfiguration' {} a -> s {from = a} :: EmailConfiguration)

-- | Contains the information of one or more recipients who receive the
-- emails.
--
-- You must
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive emails to your AWS SSO store>.
emailConfiguration_recipients :: Lens.Lens' EmailConfiguration EmailRecipients
emailConfiguration_recipients = Lens.lens (\EmailConfiguration' {recipients} -> recipients) (\s@EmailConfiguration' {} a -> s {recipients = a} :: EmailConfiguration)

instance Core.FromJSON EmailConfiguration where
  parseJSON =
    Core.withObject
      "EmailConfiguration"
      ( \x ->
          EmailConfiguration'
            Prelude.<$> (x Core..:? "content")
            Prelude.<*> (x Core..: "from")
            Prelude.<*> (x Core..: "recipients")
      )

instance Prelude.Hashable EmailConfiguration

instance Prelude.NFData EmailConfiguration

instance Core.ToJSON EmailConfiguration where
  toJSON EmailConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("content" Core..=) Prelude.<$> content,
            Prelude.Just ("from" Core..= from),
            Prelude.Just ("recipients" Core..= recipients)
          ]
      )
