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
-- Module      : Network.AWS.Signer.RevokeSignature
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the state of a signing job to REVOKED. This indicates that the
-- signature is no longer valid.
module Network.AWS.Signer.RevokeSignature
  ( -- * Creating a Request
    RevokeSignature (..),
    newRevokeSignature,

    -- * Request Lenses
    revokeSignature_jobOwner,
    revokeSignature_reason,
    revokeSignature_jobId,

    -- * Destructuring the Response
    RevokeSignatureResponse (..),
    newRevokeSignatureResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Signer.Types

-- | /See:/ 'newRevokeSignature' smart constructor.
data RevokeSignature = RevokeSignature'
  { -- | AWS account ID of the job owner.
    jobOwner :: Prelude.Maybe Prelude.Text,
    -- | The reason for revoking the signing job.
    reason :: Prelude.Text,
    -- | ID of the signing job to be revoked.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeSignature' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobOwner', 'revokeSignature_jobOwner' - AWS account ID of the job owner.
--
-- 'reason', 'revokeSignature_reason' - The reason for revoking the signing job.
--
-- 'jobId', 'revokeSignature_jobId' - ID of the signing job to be revoked.
newRevokeSignature ::
  -- | 'reason'
  Prelude.Text ->
  -- | 'jobId'
  Prelude.Text ->
  RevokeSignature
newRevokeSignature pReason_ pJobId_ =
  RevokeSignature'
    { jobOwner = Prelude.Nothing,
      reason = pReason_,
      jobId = pJobId_
    }

-- | AWS account ID of the job owner.
revokeSignature_jobOwner :: Lens.Lens' RevokeSignature (Prelude.Maybe Prelude.Text)
revokeSignature_jobOwner = Lens.lens (\RevokeSignature' {jobOwner} -> jobOwner) (\s@RevokeSignature' {} a -> s {jobOwner = a} :: RevokeSignature)

-- | The reason for revoking the signing job.
revokeSignature_reason :: Lens.Lens' RevokeSignature Prelude.Text
revokeSignature_reason = Lens.lens (\RevokeSignature' {reason} -> reason) (\s@RevokeSignature' {} a -> s {reason = a} :: RevokeSignature)

-- | ID of the signing job to be revoked.
revokeSignature_jobId :: Lens.Lens' RevokeSignature Prelude.Text
revokeSignature_jobId = Lens.lens (\RevokeSignature' {jobId} -> jobId) (\s@RevokeSignature' {} a -> s {jobId = a} :: RevokeSignature)

instance Core.AWSRequest RevokeSignature where
  type
    AWSResponse RevokeSignature =
      RevokeSignatureResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull RevokeSignatureResponse'

instance Prelude.Hashable RevokeSignature

instance Prelude.NFData RevokeSignature

instance Core.ToHeaders RevokeSignature where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RevokeSignature where
  toJSON RevokeSignature' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("jobOwner" Core..=) Prelude.<$> jobOwner,
            Prelude.Just ("reason" Core..= reason)
          ]
      )

instance Core.ToPath RevokeSignature where
  toPath RevokeSignature' {..} =
    Prelude.mconcat
      ["/signing-jobs/", Core.toBS jobId, "/revoke"]

instance Core.ToQuery RevokeSignature where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRevokeSignatureResponse' smart constructor.
data RevokeSignatureResponse = RevokeSignatureResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeSignatureResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRevokeSignatureResponse ::
  RevokeSignatureResponse
newRevokeSignatureResponse = RevokeSignatureResponse'

instance Prelude.NFData RevokeSignatureResponse
