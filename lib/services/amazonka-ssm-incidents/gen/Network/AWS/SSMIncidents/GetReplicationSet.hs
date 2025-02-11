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
-- Module      : Network.AWS.SSMIncidents.GetReplicationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve your Incident Manager replication set.
module Network.AWS.SSMIncidents.GetReplicationSet
  ( -- * Creating a Request
    GetReplicationSet (..),
    newGetReplicationSet,

    -- * Request Lenses
    getReplicationSet_arn,

    -- * Destructuring the Response
    GetReplicationSetResponse (..),
    newGetReplicationSetResponse,

    -- * Response Lenses
    getReplicationSetResponse_httpStatus,
    getReplicationSetResponse_replicationSet,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMIncidents.Types

-- | /See:/ 'newGetReplicationSet' smart constructor.
data GetReplicationSet = GetReplicationSet'
  { -- | The Amazon Resource Name (ARN) of the replication set you want to
    -- retrieve.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReplicationSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getReplicationSet_arn' - The Amazon Resource Name (ARN) of the replication set you want to
-- retrieve.
newGetReplicationSet ::
  -- | 'arn'
  Prelude.Text ->
  GetReplicationSet
newGetReplicationSet pArn_ =
  GetReplicationSet' {arn = pArn_}

-- | The Amazon Resource Name (ARN) of the replication set you want to
-- retrieve.
getReplicationSet_arn :: Lens.Lens' GetReplicationSet Prelude.Text
getReplicationSet_arn = Lens.lens (\GetReplicationSet' {arn} -> arn) (\s@GetReplicationSet' {} a -> s {arn = a} :: GetReplicationSet)

instance Core.AWSRequest GetReplicationSet where
  type
    AWSResponse GetReplicationSet =
      GetReplicationSetResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetReplicationSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "replicationSet")
      )

instance Prelude.Hashable GetReplicationSet

instance Prelude.NFData GetReplicationSet

instance Core.ToHeaders GetReplicationSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetReplicationSet where
  toPath = Prelude.const "/getReplicationSet"

instance Core.ToQuery GetReplicationSet where
  toQuery GetReplicationSet' {..} =
    Prelude.mconcat ["arn" Core.=: arn]

-- | /See:/ 'newGetReplicationSetResponse' smart constructor.
data GetReplicationSetResponse = GetReplicationSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Details of the replication set.
    replicationSet :: ReplicationSet
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetReplicationSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getReplicationSetResponse_httpStatus' - The response's http status code.
--
-- 'replicationSet', 'getReplicationSetResponse_replicationSet' - Details of the replication set.
newGetReplicationSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'replicationSet'
  ReplicationSet ->
  GetReplicationSetResponse
newGetReplicationSetResponse
  pHttpStatus_
  pReplicationSet_ =
    GetReplicationSetResponse'
      { httpStatus =
          pHttpStatus_,
        replicationSet = pReplicationSet_
      }

-- | The response's http status code.
getReplicationSetResponse_httpStatus :: Lens.Lens' GetReplicationSetResponse Prelude.Int
getReplicationSetResponse_httpStatus = Lens.lens (\GetReplicationSetResponse' {httpStatus} -> httpStatus) (\s@GetReplicationSetResponse' {} a -> s {httpStatus = a} :: GetReplicationSetResponse)

-- | Details of the replication set.
getReplicationSetResponse_replicationSet :: Lens.Lens' GetReplicationSetResponse ReplicationSet
getReplicationSetResponse_replicationSet = Lens.lens (\GetReplicationSetResponse' {replicationSet} -> replicationSet) (\s@GetReplicationSetResponse' {} a -> s {replicationSet = a} :: GetReplicationSetResponse)

instance Prelude.NFData GetReplicationSetResponse
