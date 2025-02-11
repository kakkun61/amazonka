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
-- Module      : Network.AWS.Kafka.GetCompatibleKafkaVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Apache Kafka versions to which you can update the MSK cluster.
module Network.AWS.Kafka.GetCompatibleKafkaVersions
  ( -- * Creating a Request
    GetCompatibleKafkaVersions (..),
    newGetCompatibleKafkaVersions,

    -- * Request Lenses
    getCompatibleKafkaVersions_clusterArn,

    -- * Destructuring the Response
    GetCompatibleKafkaVersionsResponse (..),
    newGetCompatibleKafkaVersionsResponse,

    -- * Response Lenses
    getCompatibleKafkaVersionsResponse_compatibleKafkaVersions,
    getCompatibleKafkaVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetCompatibleKafkaVersions' smart constructor.
data GetCompatibleKafkaVersions = GetCompatibleKafkaVersions'
  { -- | The Amazon Resource Name (ARN) of the cluster check.
    clusterArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCompatibleKafkaVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'getCompatibleKafkaVersions_clusterArn' - The Amazon Resource Name (ARN) of the cluster check.
newGetCompatibleKafkaVersions ::
  GetCompatibleKafkaVersions
newGetCompatibleKafkaVersions =
  GetCompatibleKafkaVersions'
    { clusterArn =
        Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the cluster check.
getCompatibleKafkaVersions_clusterArn :: Lens.Lens' GetCompatibleKafkaVersions (Prelude.Maybe Prelude.Text)
getCompatibleKafkaVersions_clusterArn = Lens.lens (\GetCompatibleKafkaVersions' {clusterArn} -> clusterArn) (\s@GetCompatibleKafkaVersions' {} a -> s {clusterArn = a} :: GetCompatibleKafkaVersions)

instance Core.AWSRequest GetCompatibleKafkaVersions where
  type
    AWSResponse GetCompatibleKafkaVersions =
      GetCompatibleKafkaVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCompatibleKafkaVersionsResponse'
            Prelude.<$> ( x Core..?> "compatibleKafkaVersions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetCompatibleKafkaVersions

instance Prelude.NFData GetCompatibleKafkaVersions

instance Core.ToHeaders GetCompatibleKafkaVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetCompatibleKafkaVersions where
  toPath =
    Prelude.const "/v1/compatible-kafka-versions"

instance Core.ToQuery GetCompatibleKafkaVersions where
  toQuery GetCompatibleKafkaVersions' {..} =
    Prelude.mconcat ["clusterArn" Core.=: clusterArn]

-- | /See:/ 'newGetCompatibleKafkaVersionsResponse' smart constructor.
data GetCompatibleKafkaVersionsResponse = GetCompatibleKafkaVersionsResponse'
  { -- | A list of CompatibleKafkaVersion objects.
    compatibleKafkaVersions :: Prelude.Maybe [CompatibleKafkaVersion],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCompatibleKafkaVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compatibleKafkaVersions', 'getCompatibleKafkaVersionsResponse_compatibleKafkaVersions' - A list of CompatibleKafkaVersion objects.
--
-- 'httpStatus', 'getCompatibleKafkaVersionsResponse_httpStatus' - The response's http status code.
newGetCompatibleKafkaVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCompatibleKafkaVersionsResponse
newGetCompatibleKafkaVersionsResponse pHttpStatus_ =
  GetCompatibleKafkaVersionsResponse'
    { compatibleKafkaVersions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of CompatibleKafkaVersion objects.
getCompatibleKafkaVersionsResponse_compatibleKafkaVersions :: Lens.Lens' GetCompatibleKafkaVersionsResponse (Prelude.Maybe [CompatibleKafkaVersion])
getCompatibleKafkaVersionsResponse_compatibleKafkaVersions = Lens.lens (\GetCompatibleKafkaVersionsResponse' {compatibleKafkaVersions} -> compatibleKafkaVersions) (\s@GetCompatibleKafkaVersionsResponse' {} a -> s {compatibleKafkaVersions = a} :: GetCompatibleKafkaVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getCompatibleKafkaVersionsResponse_httpStatus :: Lens.Lens' GetCompatibleKafkaVersionsResponse Prelude.Int
getCompatibleKafkaVersionsResponse_httpStatus = Lens.lens (\GetCompatibleKafkaVersionsResponse' {httpStatus} -> httpStatus) (\s@GetCompatibleKafkaVersionsResponse' {} a -> s {httpStatus = a} :: GetCompatibleKafkaVersionsResponse)

instance
  Prelude.NFData
    GetCompatibleKafkaVersionsResponse
