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
-- Module      : Network.AWS.MacieV2.Types.Member
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.Member where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.RelationshipStatus
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about an account that\'s associated with an Amazon
-- Macie administrator account.
--
-- /See:/ 'newMember' smart constructor.
data Member = Member'
  { -- | The email address for the account.
    email :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID for the administrator account.
    administratorAccountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the account.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the relationship between the account and the
    -- administrator account.
    relationshipStatus :: Prelude.Maybe RelationshipStatus,
    -- | (Deprecated) The Amazon Web Services account ID for the administrator
    -- account. This property has been replaced by the administratorAccountId
    -- property and is retained only for backward compatibility.
    masterAccountId :: Prelude.Maybe Prelude.Text,
    -- | The date and time, in UTC and extended ISO 8601 format, when an Amazon
    -- Macie membership invitation was last sent to the account. This value is
    -- null if a Macie invitation hasn\'t been sent to the account.
    invitedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID for the account.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The date and time, in UTC and extended ISO 8601 format, of the most
    -- recent change to the status of the relationship between the account and
    -- the administrator account.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | A map of key-value pairs that identifies the tags (keys and values) that
    -- are associated with the account in Amazon Macie.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Member' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'email', 'member_email' - The email address for the account.
--
-- 'administratorAccountId', 'member_administratorAccountId' - The Amazon Web Services account ID for the administrator account.
--
-- 'arn', 'member_arn' - The Amazon Resource Name (ARN) of the account.
--
-- 'relationshipStatus', 'member_relationshipStatus' - The current status of the relationship between the account and the
-- administrator account.
--
-- 'masterAccountId', 'member_masterAccountId' - (Deprecated) The Amazon Web Services account ID for the administrator
-- account. This property has been replaced by the administratorAccountId
-- property and is retained only for backward compatibility.
--
-- 'invitedAt', 'member_invitedAt' - The date and time, in UTC and extended ISO 8601 format, when an Amazon
-- Macie membership invitation was last sent to the account. This value is
-- null if a Macie invitation hasn\'t been sent to the account.
--
-- 'accountId', 'member_accountId' - The Amazon Web Services account ID for the account.
--
-- 'updatedAt', 'member_updatedAt' - The date and time, in UTC and extended ISO 8601 format, of the most
-- recent change to the status of the relationship between the account and
-- the administrator account.
--
-- 'tags', 'member_tags' - A map of key-value pairs that identifies the tags (keys and values) that
-- are associated with the account in Amazon Macie.
newMember ::
  Member
newMember =
  Member'
    { email = Prelude.Nothing,
      administratorAccountId = Prelude.Nothing,
      arn = Prelude.Nothing,
      relationshipStatus = Prelude.Nothing,
      masterAccountId = Prelude.Nothing,
      invitedAt = Prelude.Nothing,
      accountId = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The email address for the account.
member_email :: Lens.Lens' Member (Prelude.Maybe Prelude.Text)
member_email = Lens.lens (\Member' {email} -> email) (\s@Member' {} a -> s {email = a} :: Member)

-- | The Amazon Web Services account ID for the administrator account.
member_administratorAccountId :: Lens.Lens' Member (Prelude.Maybe Prelude.Text)
member_administratorAccountId = Lens.lens (\Member' {administratorAccountId} -> administratorAccountId) (\s@Member' {} a -> s {administratorAccountId = a} :: Member)

-- | The Amazon Resource Name (ARN) of the account.
member_arn :: Lens.Lens' Member (Prelude.Maybe Prelude.Text)
member_arn = Lens.lens (\Member' {arn} -> arn) (\s@Member' {} a -> s {arn = a} :: Member)

-- | The current status of the relationship between the account and the
-- administrator account.
member_relationshipStatus :: Lens.Lens' Member (Prelude.Maybe RelationshipStatus)
member_relationshipStatus = Lens.lens (\Member' {relationshipStatus} -> relationshipStatus) (\s@Member' {} a -> s {relationshipStatus = a} :: Member)

-- | (Deprecated) The Amazon Web Services account ID for the administrator
-- account. This property has been replaced by the administratorAccountId
-- property and is retained only for backward compatibility.
member_masterAccountId :: Lens.Lens' Member (Prelude.Maybe Prelude.Text)
member_masterAccountId = Lens.lens (\Member' {masterAccountId} -> masterAccountId) (\s@Member' {} a -> s {masterAccountId = a} :: Member)

-- | The date and time, in UTC and extended ISO 8601 format, when an Amazon
-- Macie membership invitation was last sent to the account. This value is
-- null if a Macie invitation hasn\'t been sent to the account.
member_invitedAt :: Lens.Lens' Member (Prelude.Maybe Prelude.UTCTime)
member_invitedAt = Lens.lens (\Member' {invitedAt} -> invitedAt) (\s@Member' {} a -> s {invitedAt = a} :: Member) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID for the account.
member_accountId :: Lens.Lens' Member (Prelude.Maybe Prelude.Text)
member_accountId = Lens.lens (\Member' {accountId} -> accountId) (\s@Member' {} a -> s {accountId = a} :: Member)

-- | The date and time, in UTC and extended ISO 8601 format, of the most
-- recent change to the status of the relationship between the account and
-- the administrator account.
member_updatedAt :: Lens.Lens' Member (Prelude.Maybe Prelude.UTCTime)
member_updatedAt = Lens.lens (\Member' {updatedAt} -> updatedAt) (\s@Member' {} a -> s {updatedAt = a} :: Member) Prelude.. Lens.mapping Core._Time

-- | A map of key-value pairs that identifies the tags (keys and values) that
-- are associated with the account in Amazon Macie.
member_tags :: Lens.Lens' Member (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
member_tags = Lens.lens (\Member' {tags} -> tags) (\s@Member' {} a -> s {tags = a} :: Member) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Member where
  parseJSON =
    Core.withObject
      "Member"
      ( \x ->
          Member'
            Prelude.<$> (x Core..:? "email")
            Prelude.<*> (x Core..:? "administratorAccountId")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "relationshipStatus")
            Prelude.<*> (x Core..:? "masterAccountId")
            Prelude.<*> (x Core..:? "invitedAt")
            Prelude.<*> (x Core..:? "accountId")
            Prelude.<*> (x Core..:? "updatedAt")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Member

instance Prelude.NFData Member
