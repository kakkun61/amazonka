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
-- Module      : Network.AWS.Schemas.PutResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The name of the policy.
module Network.AWS.Schemas.PutResourcePolicy
  ( -- * Creating a Request
    PutResourcePolicy (..),
    newPutResourcePolicy,

    -- * Request Lenses
    putResourcePolicy_registryName,
    putResourcePolicy_revisionId,
    putResourcePolicy_policy,

    -- * Destructuring the Response
    PutResourcePolicyResponse (..),
    newPutResourcePolicyResponse,

    -- * Response Lenses
    putResourcePolicyResponse_policy,
    putResourcePolicyResponse_revisionId,
    putResourcePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | The name of the policy.
--
-- /See:/ 'newPutResourcePolicy' smart constructor.
data PutResourcePolicy = PutResourcePolicy'
  { -- | The name of the registry.
    registryName :: Prelude.Maybe Prelude.Text,
    -- | The revision ID of the policy.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The resource-based policy.
    policy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutResourcePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryName', 'putResourcePolicy_registryName' - The name of the registry.
--
-- 'revisionId', 'putResourcePolicy_revisionId' - The revision ID of the policy.
--
-- 'policy', 'putResourcePolicy_policy' - The resource-based policy.
newPutResourcePolicy ::
  -- | 'policy'
  Prelude.Text ->
  PutResourcePolicy
newPutResourcePolicy pPolicy_ =
  PutResourcePolicy'
    { registryName = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      policy = pPolicy_
    }

-- | The name of the registry.
putResourcePolicy_registryName :: Lens.Lens' PutResourcePolicy (Prelude.Maybe Prelude.Text)
putResourcePolicy_registryName = Lens.lens (\PutResourcePolicy' {registryName} -> registryName) (\s@PutResourcePolicy' {} a -> s {registryName = a} :: PutResourcePolicy)

-- | The revision ID of the policy.
putResourcePolicy_revisionId :: Lens.Lens' PutResourcePolicy (Prelude.Maybe Prelude.Text)
putResourcePolicy_revisionId = Lens.lens (\PutResourcePolicy' {revisionId} -> revisionId) (\s@PutResourcePolicy' {} a -> s {revisionId = a} :: PutResourcePolicy)

-- | The resource-based policy.
putResourcePolicy_policy :: Lens.Lens' PutResourcePolicy Prelude.Text
putResourcePolicy_policy = Lens.lens (\PutResourcePolicy' {policy} -> policy) (\s@PutResourcePolicy' {} a -> s {policy = a} :: PutResourcePolicy)

instance Core.AWSRequest PutResourcePolicy where
  type
    AWSResponse PutResourcePolicy =
      PutResourcePolicyResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutResourcePolicyResponse'
            Prelude.<$> (x Core..?> "Policy")
            Prelude.<*> (x Core..?> "RevisionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutResourcePolicy

instance Prelude.NFData PutResourcePolicy

instance Core.ToHeaders PutResourcePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutResourcePolicy where
  toJSON PutResourcePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RevisionId" Core..=) Prelude.<$> revisionId,
            Prelude.Just ("Policy" Core..= policy)
          ]
      )

instance Core.ToPath PutResourcePolicy where
  toPath = Prelude.const "/v1/policy"

instance Core.ToQuery PutResourcePolicy where
  toQuery PutResourcePolicy' {..} =
    Prelude.mconcat
      ["registryName" Core.=: registryName]

-- | /See:/ 'newPutResourcePolicyResponse' smart constructor.
data PutResourcePolicyResponse = PutResourcePolicyResponse'
  { -- | The resource-based policy.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The revision ID of the policy.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutResourcePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'putResourcePolicyResponse_policy' - The resource-based policy.
--
-- 'revisionId', 'putResourcePolicyResponse_revisionId' - The revision ID of the policy.
--
-- 'httpStatus', 'putResourcePolicyResponse_httpStatus' - The response's http status code.
newPutResourcePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutResourcePolicyResponse
newPutResourcePolicyResponse pHttpStatus_ =
  PutResourcePolicyResponse'
    { policy =
        Prelude.Nothing,
      revisionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The resource-based policy.
putResourcePolicyResponse_policy :: Lens.Lens' PutResourcePolicyResponse (Prelude.Maybe Prelude.Text)
putResourcePolicyResponse_policy = Lens.lens (\PutResourcePolicyResponse' {policy} -> policy) (\s@PutResourcePolicyResponse' {} a -> s {policy = a} :: PutResourcePolicyResponse)

-- | The revision ID of the policy.
putResourcePolicyResponse_revisionId :: Lens.Lens' PutResourcePolicyResponse (Prelude.Maybe Prelude.Text)
putResourcePolicyResponse_revisionId = Lens.lens (\PutResourcePolicyResponse' {revisionId} -> revisionId) (\s@PutResourcePolicyResponse' {} a -> s {revisionId = a} :: PutResourcePolicyResponse)

-- | The response's http status code.
putResourcePolicyResponse_httpStatus :: Lens.Lens' PutResourcePolicyResponse Prelude.Int
putResourcePolicyResponse_httpStatus = Lens.lens (\PutResourcePolicyResponse' {httpStatus} -> httpStatus) (\s@PutResourcePolicyResponse' {} a -> s {httpStatus = a} :: PutResourcePolicyResponse)

instance Prelude.NFData PutResourcePolicyResponse
