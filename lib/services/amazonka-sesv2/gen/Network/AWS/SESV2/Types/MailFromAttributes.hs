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
-- Module      : Network.AWS.SESV2.Types.MailFromAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SESV2.Types.MailFromAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SESV2.Types.BehaviorOnMxFailure
import Network.AWS.SESV2.Types.MailFromDomainStatus

-- | A list of attributes that are associated with a MAIL FROM domain.
--
-- /See:/ 'newMailFromAttributes' smart constructor.
data MailFromAttributes = MailFromAttributes'
  { -- | The name of a domain that an email identity uses as a custom MAIL FROM
    -- domain.
    mailFromDomain :: Prelude.Text,
    -- | The status of the MAIL FROM domain. This status can have the following
    -- values:
    --
    -- -   @PENDING@ – Amazon SES hasn\'t started searching for the MX record
    --     yet.
    --
    -- -   @SUCCESS@ – Amazon SES detected the required MX record for the MAIL
    --     FROM domain.
    --
    -- -   @FAILED@ – Amazon SES can\'t find the required MX record, or the
    --     record no longer exists.
    --
    -- -   @TEMPORARY_FAILURE@ – A temporary issue occurred, which prevented
    --     Amazon SES from determining the status of the MAIL FROM domain.
    mailFromDomainStatus :: MailFromDomainStatus,
    -- | The action to take if the required MX record can\'t be found when you
    -- send an email. When you set this value to @UseDefaultValue@, the mail is
    -- sent using /amazonses.com/ as the MAIL FROM domain. When you set this
    -- value to @RejectMessage@, the Amazon SES API v2 returns a
    -- @MailFromDomainNotVerified@ error, and doesn\'t attempt to deliver the
    -- email.
    --
    -- These behaviors are taken when the custom MAIL FROM domain configuration
    -- is in the @Pending@, @Failed@, and @TemporaryFailure@ states.
    behaviorOnMxFailure :: BehaviorOnMxFailure
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MailFromAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mailFromDomain', 'mailFromAttributes_mailFromDomain' - The name of a domain that an email identity uses as a custom MAIL FROM
-- domain.
--
-- 'mailFromDomainStatus', 'mailFromAttributes_mailFromDomainStatus' - The status of the MAIL FROM domain. This status can have the following
-- values:
--
-- -   @PENDING@ – Amazon SES hasn\'t started searching for the MX record
--     yet.
--
-- -   @SUCCESS@ – Amazon SES detected the required MX record for the MAIL
--     FROM domain.
--
-- -   @FAILED@ – Amazon SES can\'t find the required MX record, or the
--     record no longer exists.
--
-- -   @TEMPORARY_FAILURE@ – A temporary issue occurred, which prevented
--     Amazon SES from determining the status of the MAIL FROM domain.
--
-- 'behaviorOnMxFailure', 'mailFromAttributes_behaviorOnMxFailure' - The action to take if the required MX record can\'t be found when you
-- send an email. When you set this value to @UseDefaultValue@, the mail is
-- sent using /amazonses.com/ as the MAIL FROM domain. When you set this
-- value to @RejectMessage@, the Amazon SES API v2 returns a
-- @MailFromDomainNotVerified@ error, and doesn\'t attempt to deliver the
-- email.
--
-- These behaviors are taken when the custom MAIL FROM domain configuration
-- is in the @Pending@, @Failed@, and @TemporaryFailure@ states.
newMailFromAttributes ::
  -- | 'mailFromDomain'
  Prelude.Text ->
  -- | 'mailFromDomainStatus'
  MailFromDomainStatus ->
  -- | 'behaviorOnMxFailure'
  BehaviorOnMxFailure ->
  MailFromAttributes
newMailFromAttributes
  pMailFromDomain_
  pMailFromDomainStatus_
  pBehaviorOnMxFailure_ =
    MailFromAttributes'
      { mailFromDomain =
          pMailFromDomain_,
        mailFromDomainStatus = pMailFromDomainStatus_,
        behaviorOnMxFailure = pBehaviorOnMxFailure_
      }

-- | The name of a domain that an email identity uses as a custom MAIL FROM
-- domain.
mailFromAttributes_mailFromDomain :: Lens.Lens' MailFromAttributes Prelude.Text
mailFromAttributes_mailFromDomain = Lens.lens (\MailFromAttributes' {mailFromDomain} -> mailFromDomain) (\s@MailFromAttributes' {} a -> s {mailFromDomain = a} :: MailFromAttributes)

-- | The status of the MAIL FROM domain. This status can have the following
-- values:
--
-- -   @PENDING@ – Amazon SES hasn\'t started searching for the MX record
--     yet.
--
-- -   @SUCCESS@ – Amazon SES detected the required MX record for the MAIL
--     FROM domain.
--
-- -   @FAILED@ – Amazon SES can\'t find the required MX record, or the
--     record no longer exists.
--
-- -   @TEMPORARY_FAILURE@ – A temporary issue occurred, which prevented
--     Amazon SES from determining the status of the MAIL FROM domain.
mailFromAttributes_mailFromDomainStatus :: Lens.Lens' MailFromAttributes MailFromDomainStatus
mailFromAttributes_mailFromDomainStatus = Lens.lens (\MailFromAttributes' {mailFromDomainStatus} -> mailFromDomainStatus) (\s@MailFromAttributes' {} a -> s {mailFromDomainStatus = a} :: MailFromAttributes)

-- | The action to take if the required MX record can\'t be found when you
-- send an email. When you set this value to @UseDefaultValue@, the mail is
-- sent using /amazonses.com/ as the MAIL FROM domain. When you set this
-- value to @RejectMessage@, the Amazon SES API v2 returns a
-- @MailFromDomainNotVerified@ error, and doesn\'t attempt to deliver the
-- email.
--
-- These behaviors are taken when the custom MAIL FROM domain configuration
-- is in the @Pending@, @Failed@, and @TemporaryFailure@ states.
mailFromAttributes_behaviorOnMxFailure :: Lens.Lens' MailFromAttributes BehaviorOnMxFailure
mailFromAttributes_behaviorOnMxFailure = Lens.lens (\MailFromAttributes' {behaviorOnMxFailure} -> behaviorOnMxFailure) (\s@MailFromAttributes' {} a -> s {behaviorOnMxFailure = a} :: MailFromAttributes)

instance Core.FromJSON MailFromAttributes where
  parseJSON =
    Core.withObject
      "MailFromAttributes"
      ( \x ->
          MailFromAttributes'
            Prelude.<$> (x Core..: "MailFromDomain")
            Prelude.<*> (x Core..: "MailFromDomainStatus")
            Prelude.<*> (x Core..: "BehaviorOnMxFailure")
      )

instance Prelude.Hashable MailFromAttributes

instance Prelude.NFData MailFromAttributes
