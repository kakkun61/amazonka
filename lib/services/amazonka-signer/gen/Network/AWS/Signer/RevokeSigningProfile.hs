{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Signer.RevokeSigningProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the state of a signing profile to REVOKED. This indicates that
-- signatures generated using the signing profile after an effective start
-- date are no longer valid.
module Network.AWS.Signer.RevokeSigningProfile
  ( -- * Creating a Request
    RevokeSigningProfile (..),
    newRevokeSigningProfile,

    -- * Request Lenses
    revokeSigningProfile_profileVersion,
    revokeSigningProfile_reason,
    revokeSigningProfile_effectiveTime,
    revokeSigningProfile_profileName,

    -- * Destructuring the Response
    RevokeSigningProfileResponse (..),
    newRevokeSigningProfileResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Signer.Types

-- | /See:/ 'newRevokeSigningProfile' smart constructor.
data RevokeSigningProfile = RevokeSigningProfile'
  { -- | The version of the signing profile to be revoked.
    profileVersion :: Prelude.Text,
    -- | The reason for revoking a signing profile.
    reason :: Prelude.Text,
    -- | A timestamp for when revocation of a Signing Profile should become
    -- effective. Signatures generated using the signing profile after this
    -- timestamp are not trusted.
    effectiveTime :: Core.POSIX,
    -- | The name of the signing profile to be revoked.
    profileName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeSigningProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileVersion', 'revokeSigningProfile_profileVersion' - The version of the signing profile to be revoked.
--
-- 'reason', 'revokeSigningProfile_reason' - The reason for revoking a signing profile.
--
-- 'effectiveTime', 'revokeSigningProfile_effectiveTime' - A timestamp for when revocation of a Signing Profile should become
-- effective. Signatures generated using the signing profile after this
-- timestamp are not trusted.
--
-- 'profileName', 'revokeSigningProfile_profileName' - The name of the signing profile to be revoked.
newRevokeSigningProfile ::
  -- | 'profileVersion'
  Prelude.Text ->
  -- | 'reason'
  Prelude.Text ->
  -- | 'effectiveTime'
  Prelude.UTCTime ->
  -- | 'profileName'
  Prelude.Text ->
  RevokeSigningProfile
newRevokeSigningProfile
  pProfileVersion_
  pReason_
  pEffectiveTime_
  pProfileName_ =
    RevokeSigningProfile'
      { profileVersion =
          pProfileVersion_,
        reason = pReason_,
        effectiveTime = Core._Time Lens.# pEffectiveTime_,
        profileName = pProfileName_
      }

-- | The version of the signing profile to be revoked.
revokeSigningProfile_profileVersion :: Lens.Lens' RevokeSigningProfile Prelude.Text
revokeSigningProfile_profileVersion = Lens.lens (\RevokeSigningProfile' {profileVersion} -> profileVersion) (\s@RevokeSigningProfile' {} a -> s {profileVersion = a} :: RevokeSigningProfile)

-- | The reason for revoking a signing profile.
revokeSigningProfile_reason :: Lens.Lens' RevokeSigningProfile Prelude.Text
revokeSigningProfile_reason = Lens.lens (\RevokeSigningProfile' {reason} -> reason) (\s@RevokeSigningProfile' {} a -> s {reason = a} :: RevokeSigningProfile)

-- | A timestamp for when revocation of a Signing Profile should become
-- effective. Signatures generated using the signing profile after this
-- timestamp are not trusted.
revokeSigningProfile_effectiveTime :: Lens.Lens' RevokeSigningProfile Prelude.UTCTime
revokeSigningProfile_effectiveTime = Lens.lens (\RevokeSigningProfile' {effectiveTime} -> effectiveTime) (\s@RevokeSigningProfile' {} a -> s {effectiveTime = a} :: RevokeSigningProfile) Prelude.. Core._Time

-- | The name of the signing profile to be revoked.
revokeSigningProfile_profileName :: Lens.Lens' RevokeSigningProfile Prelude.Text
revokeSigningProfile_profileName = Lens.lens (\RevokeSigningProfile' {profileName} -> profileName) (\s@RevokeSigningProfile' {} a -> s {profileName = a} :: RevokeSigningProfile)

instance Core.AWSRequest RevokeSigningProfile where
  type
    AWSResponse RevokeSigningProfile =
      RevokeSigningProfileResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull RevokeSigningProfileResponse'

instance Prelude.Hashable RevokeSigningProfile

instance Prelude.NFData RevokeSigningProfile

instance Core.ToHeaders RevokeSigningProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RevokeSigningProfile where
  toJSON RevokeSigningProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("profileVersion" Core..= profileVersion),
            Prelude.Just ("reason" Core..= reason),
            Prelude.Just
              ("effectiveTime" Core..= effectiveTime)
          ]
      )

instance Core.ToPath RevokeSigningProfile where
  toPath RevokeSigningProfile' {..} =
    Prelude.mconcat
      [ "/signing-profiles/",
        Core.toBS profileName,
        "/revoke"
      ]

instance Core.ToQuery RevokeSigningProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRevokeSigningProfileResponse' smart constructor.
data RevokeSigningProfileResponse = RevokeSigningProfileResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeSigningProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRevokeSigningProfileResponse ::
  RevokeSigningProfileResponse
newRevokeSigningProfileResponse =
  RevokeSigningProfileResponse'

instance Prelude.NFData RevokeSigningProfileResponse
