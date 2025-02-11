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
-- Module      : Network.AWS.SNS.Types.SMSSandboxPhoneNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SNS.Types.SMSSandboxPhoneNumber where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SNS.Types.SMSSandboxPhoneNumberVerificationStatus

-- | A verified or pending destination phone number in the SMS sandbox.
--
-- When you start using Amazon SNS to send SMS messages, your account is in
-- the /SMS sandbox/. The SMS sandbox provides a safe environment for you
-- to try Amazon SNS features without risking your reputation as an SMS
-- sender. While your account is in the SMS sandbox, you can use all of the
-- features of Amazon SNS. However, you can send SMS messages only to
-- verified destination phone numbers. For more information, including how
-- to move out of the sandbox to send messages without restrictions, see
-- <https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html SMS sandbox>
-- in the /Amazon SNS Developer Guide/.
--
-- /See:/ 'newSMSSandboxPhoneNumber' smart constructor.
data SMSSandboxPhoneNumber = SMSSandboxPhoneNumber'
  { -- | The destination phone number\'s verification status.
    status :: Prelude.Maybe SMSSandboxPhoneNumberVerificationStatus,
    -- | The destination phone number.
    phoneNumber :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SMSSandboxPhoneNumber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'sMSSandboxPhoneNumber_status' - The destination phone number\'s verification status.
--
-- 'phoneNumber', 'sMSSandboxPhoneNumber_phoneNumber' - The destination phone number.
newSMSSandboxPhoneNumber ::
  SMSSandboxPhoneNumber
newSMSSandboxPhoneNumber =
  SMSSandboxPhoneNumber'
    { status = Prelude.Nothing,
      phoneNumber = Prelude.Nothing
    }

-- | The destination phone number\'s verification status.
sMSSandboxPhoneNumber_status :: Lens.Lens' SMSSandboxPhoneNumber (Prelude.Maybe SMSSandboxPhoneNumberVerificationStatus)
sMSSandboxPhoneNumber_status = Lens.lens (\SMSSandboxPhoneNumber' {status} -> status) (\s@SMSSandboxPhoneNumber' {} a -> s {status = a} :: SMSSandboxPhoneNumber)

-- | The destination phone number.
sMSSandboxPhoneNumber_phoneNumber :: Lens.Lens' SMSSandboxPhoneNumber (Prelude.Maybe Prelude.Text)
sMSSandboxPhoneNumber_phoneNumber = Lens.lens (\SMSSandboxPhoneNumber' {phoneNumber} -> phoneNumber) (\s@SMSSandboxPhoneNumber' {} a -> s {phoneNumber = a} :: SMSSandboxPhoneNumber)

instance Core.FromXML SMSSandboxPhoneNumber where
  parseXML x =
    SMSSandboxPhoneNumber'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "PhoneNumber")

instance Prelude.Hashable SMSSandboxPhoneNumber

instance Prelude.NFData SMSSandboxPhoneNumber
