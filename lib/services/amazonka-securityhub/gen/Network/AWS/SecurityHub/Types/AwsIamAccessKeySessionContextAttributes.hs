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
-- Module      : Network.AWS.SecurityHub.Types.AwsIamAccessKeySessionContextAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsIamAccessKeySessionContextAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Attributes of the session that the key was used for.
--
-- /See:/ 'newAwsIamAccessKeySessionContextAttributes' smart constructor.
data AwsIamAccessKeySessionContextAttributes = AwsIamAccessKeySessionContextAttributes'
  { -- | Indicates when the session was created.
    --
    -- Uses the @date-time@ format specified in
    -- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
    -- The value cannot contain spaces. For example,
    -- @2020-03-22T13:22:13.933Z@.
    creationDate :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the session used multi-factor authentication (MFA).
    mfaAuthenticated :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsIamAccessKeySessionContextAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationDate', 'awsIamAccessKeySessionContextAttributes_creationDate' - Indicates when the session was created.
--
-- Uses the @date-time@ format specified in
-- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
-- The value cannot contain spaces. For example,
-- @2020-03-22T13:22:13.933Z@.
--
-- 'mfaAuthenticated', 'awsIamAccessKeySessionContextAttributes_mfaAuthenticated' - Indicates whether the session used multi-factor authentication (MFA).
newAwsIamAccessKeySessionContextAttributes ::
  AwsIamAccessKeySessionContextAttributes
newAwsIamAccessKeySessionContextAttributes =
  AwsIamAccessKeySessionContextAttributes'
    { creationDate =
        Prelude.Nothing,
      mfaAuthenticated = Prelude.Nothing
    }

-- | Indicates when the session was created.
--
-- Uses the @date-time@ format specified in
-- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
-- The value cannot contain spaces. For example,
-- @2020-03-22T13:22:13.933Z@.
awsIamAccessKeySessionContextAttributes_creationDate :: Lens.Lens' AwsIamAccessKeySessionContextAttributes (Prelude.Maybe Prelude.Text)
awsIamAccessKeySessionContextAttributes_creationDate = Lens.lens (\AwsIamAccessKeySessionContextAttributes' {creationDate} -> creationDate) (\s@AwsIamAccessKeySessionContextAttributes' {} a -> s {creationDate = a} :: AwsIamAccessKeySessionContextAttributes)

-- | Indicates whether the session used multi-factor authentication (MFA).
awsIamAccessKeySessionContextAttributes_mfaAuthenticated :: Lens.Lens' AwsIamAccessKeySessionContextAttributes (Prelude.Maybe Prelude.Bool)
awsIamAccessKeySessionContextAttributes_mfaAuthenticated = Lens.lens (\AwsIamAccessKeySessionContextAttributes' {mfaAuthenticated} -> mfaAuthenticated) (\s@AwsIamAccessKeySessionContextAttributes' {} a -> s {mfaAuthenticated = a} :: AwsIamAccessKeySessionContextAttributes)

instance
  Core.FromJSON
    AwsIamAccessKeySessionContextAttributes
  where
  parseJSON =
    Core.withObject
      "AwsIamAccessKeySessionContextAttributes"
      ( \x ->
          AwsIamAccessKeySessionContextAttributes'
            Prelude.<$> (x Core..:? "CreationDate")
            Prelude.<*> (x Core..:? "MfaAuthenticated")
      )

instance
  Prelude.Hashable
    AwsIamAccessKeySessionContextAttributes

instance
  Prelude.NFData
    AwsIamAccessKeySessionContextAttributes

instance
  Core.ToJSON
    AwsIamAccessKeySessionContextAttributes
  where
  toJSON AwsIamAccessKeySessionContextAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CreationDate" Core..=) Prelude.<$> creationDate,
            ("MfaAuthenticated" Core..=)
              Prelude.<$> mfaAuthenticated
          ]
      )
