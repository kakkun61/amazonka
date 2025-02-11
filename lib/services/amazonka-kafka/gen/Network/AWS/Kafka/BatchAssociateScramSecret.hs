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
-- Module      : Network.AWS.Kafka.BatchAssociateScramSecret
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates one or more Scram Secrets with an Amazon MSK cluster.
module Network.AWS.Kafka.BatchAssociateScramSecret
  ( -- * Creating a Request
    BatchAssociateScramSecret (..),
    newBatchAssociateScramSecret,

    -- * Request Lenses
    batchAssociateScramSecret_clusterArn,
    batchAssociateScramSecret_secretArnList,

    -- * Destructuring the Response
    BatchAssociateScramSecretResponse (..),
    newBatchAssociateScramSecretResponse,

    -- * Response Lenses
    batchAssociateScramSecretResponse_clusterArn,
    batchAssociateScramSecretResponse_unprocessedScramSecrets,
    batchAssociateScramSecretResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Associates sasl scram secrets to cluster.
--
-- /See:/ 'newBatchAssociateScramSecret' smart constructor.
data BatchAssociateScramSecret = BatchAssociateScramSecret'
  { -- | The Amazon Resource Name (ARN) of the cluster to be updated.
    clusterArn :: Prelude.Text,
    -- | List of AWS Secrets Manager secret ARNs.
    secretArnList :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateScramSecret' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'batchAssociateScramSecret_clusterArn' - The Amazon Resource Name (ARN) of the cluster to be updated.
--
-- 'secretArnList', 'batchAssociateScramSecret_secretArnList' - List of AWS Secrets Manager secret ARNs.
newBatchAssociateScramSecret ::
  -- | 'clusterArn'
  Prelude.Text ->
  BatchAssociateScramSecret
newBatchAssociateScramSecret pClusterArn_ =
  BatchAssociateScramSecret'
    { clusterArn =
        pClusterArn_,
      secretArnList = Prelude.mempty
    }

-- | The Amazon Resource Name (ARN) of the cluster to be updated.
batchAssociateScramSecret_clusterArn :: Lens.Lens' BatchAssociateScramSecret Prelude.Text
batchAssociateScramSecret_clusterArn = Lens.lens (\BatchAssociateScramSecret' {clusterArn} -> clusterArn) (\s@BatchAssociateScramSecret' {} a -> s {clusterArn = a} :: BatchAssociateScramSecret)

-- | List of AWS Secrets Manager secret ARNs.
batchAssociateScramSecret_secretArnList :: Lens.Lens' BatchAssociateScramSecret [Prelude.Text]
batchAssociateScramSecret_secretArnList = Lens.lens (\BatchAssociateScramSecret' {secretArnList} -> secretArnList) (\s@BatchAssociateScramSecret' {} a -> s {secretArnList = a} :: BatchAssociateScramSecret) Prelude.. Lens.coerced

instance Core.AWSRequest BatchAssociateScramSecret where
  type
    AWSResponse BatchAssociateScramSecret =
      BatchAssociateScramSecretResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchAssociateScramSecretResponse'
            Prelude.<$> (x Core..?> "clusterArn")
            Prelude.<*> ( x Core..?> "unprocessedScramSecrets"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchAssociateScramSecret

instance Prelude.NFData BatchAssociateScramSecret

instance Core.ToHeaders BatchAssociateScramSecret where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchAssociateScramSecret where
  toJSON BatchAssociateScramSecret' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("secretArnList" Core..= secretArnList)
          ]
      )

instance Core.ToPath BatchAssociateScramSecret where
  toPath BatchAssociateScramSecret' {..} =
    Prelude.mconcat
      [ "/v1/clusters/",
        Core.toBS clusterArn,
        "/scram-secrets"
      ]

instance Core.ToQuery BatchAssociateScramSecret where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchAssociateScramSecretResponse' smart constructor.
data BatchAssociateScramSecretResponse = BatchAssociateScramSecretResponse'
  { -- | The Amazon Resource Name (ARN) of the cluster.
    clusterArn :: Prelude.Maybe Prelude.Text,
    -- | List of errors when associating secrets to cluster.
    unprocessedScramSecrets :: Prelude.Maybe [UnprocessedScramSecret],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateScramSecretResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'batchAssociateScramSecretResponse_clusterArn' - The Amazon Resource Name (ARN) of the cluster.
--
-- 'unprocessedScramSecrets', 'batchAssociateScramSecretResponse_unprocessedScramSecrets' - List of errors when associating secrets to cluster.
--
-- 'httpStatus', 'batchAssociateScramSecretResponse_httpStatus' - The response's http status code.
newBatchAssociateScramSecretResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchAssociateScramSecretResponse
newBatchAssociateScramSecretResponse pHttpStatus_ =
  BatchAssociateScramSecretResponse'
    { clusterArn =
        Prelude.Nothing,
      unprocessedScramSecrets =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the cluster.
batchAssociateScramSecretResponse_clusterArn :: Lens.Lens' BatchAssociateScramSecretResponse (Prelude.Maybe Prelude.Text)
batchAssociateScramSecretResponse_clusterArn = Lens.lens (\BatchAssociateScramSecretResponse' {clusterArn} -> clusterArn) (\s@BatchAssociateScramSecretResponse' {} a -> s {clusterArn = a} :: BatchAssociateScramSecretResponse)

-- | List of errors when associating secrets to cluster.
batchAssociateScramSecretResponse_unprocessedScramSecrets :: Lens.Lens' BatchAssociateScramSecretResponse (Prelude.Maybe [UnprocessedScramSecret])
batchAssociateScramSecretResponse_unprocessedScramSecrets = Lens.lens (\BatchAssociateScramSecretResponse' {unprocessedScramSecrets} -> unprocessedScramSecrets) (\s@BatchAssociateScramSecretResponse' {} a -> s {unprocessedScramSecrets = a} :: BatchAssociateScramSecretResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchAssociateScramSecretResponse_httpStatus :: Lens.Lens' BatchAssociateScramSecretResponse Prelude.Int
batchAssociateScramSecretResponse_httpStatus = Lens.lens (\BatchAssociateScramSecretResponse' {httpStatus} -> httpStatus) (\s@BatchAssociateScramSecretResponse' {} a -> s {httpStatus = a} :: BatchAssociateScramSecretResponse)

instance
  Prelude.NFData
    BatchAssociateScramSecretResponse
