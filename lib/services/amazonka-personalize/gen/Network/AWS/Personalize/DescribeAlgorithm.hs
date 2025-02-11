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
-- Module      : Network.AWS.Personalize.DescribeAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the given algorithm.
module Network.AWS.Personalize.DescribeAlgorithm
  ( -- * Creating a Request
    DescribeAlgorithm (..),
    newDescribeAlgorithm,

    -- * Request Lenses
    describeAlgorithm_algorithmArn,

    -- * Destructuring the Response
    DescribeAlgorithmResponse (..),
    newDescribeAlgorithmResponse,

    -- * Response Lenses
    describeAlgorithmResponse_algorithm,
    describeAlgorithmResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAlgorithm' smart constructor.
data DescribeAlgorithm = DescribeAlgorithm'
  { -- | The Amazon Resource Name (ARN) of the algorithm to describe.
    algorithmArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlgorithm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'algorithmArn', 'describeAlgorithm_algorithmArn' - The Amazon Resource Name (ARN) of the algorithm to describe.
newDescribeAlgorithm ::
  -- | 'algorithmArn'
  Prelude.Text ->
  DescribeAlgorithm
newDescribeAlgorithm pAlgorithmArn_ =
  DescribeAlgorithm' {algorithmArn = pAlgorithmArn_}

-- | The Amazon Resource Name (ARN) of the algorithm to describe.
describeAlgorithm_algorithmArn :: Lens.Lens' DescribeAlgorithm Prelude.Text
describeAlgorithm_algorithmArn = Lens.lens (\DescribeAlgorithm' {algorithmArn} -> algorithmArn) (\s@DescribeAlgorithm' {} a -> s {algorithmArn = a} :: DescribeAlgorithm)

instance Core.AWSRequest DescribeAlgorithm where
  type
    AWSResponse DescribeAlgorithm =
      DescribeAlgorithmResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAlgorithmResponse'
            Prelude.<$> (x Core..?> "algorithm")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAlgorithm

instance Prelude.NFData DescribeAlgorithm

instance Core.ToHeaders DescribeAlgorithm where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.DescribeAlgorithm" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAlgorithm where
  toJSON DescribeAlgorithm' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("algorithmArn" Core..= algorithmArn)]
      )

instance Core.ToPath DescribeAlgorithm where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAlgorithm where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAlgorithmResponse' smart constructor.
data DescribeAlgorithmResponse = DescribeAlgorithmResponse'
  { -- | A listing of the properties of the algorithm.
    algorithm :: Prelude.Maybe Algorithm,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlgorithmResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'algorithm', 'describeAlgorithmResponse_algorithm' - A listing of the properties of the algorithm.
--
-- 'httpStatus', 'describeAlgorithmResponse_httpStatus' - The response's http status code.
newDescribeAlgorithmResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAlgorithmResponse
newDescribeAlgorithmResponse pHttpStatus_ =
  DescribeAlgorithmResponse'
    { algorithm =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A listing of the properties of the algorithm.
describeAlgorithmResponse_algorithm :: Lens.Lens' DescribeAlgorithmResponse (Prelude.Maybe Algorithm)
describeAlgorithmResponse_algorithm = Lens.lens (\DescribeAlgorithmResponse' {algorithm} -> algorithm) (\s@DescribeAlgorithmResponse' {} a -> s {algorithm = a} :: DescribeAlgorithmResponse)

-- | The response's http status code.
describeAlgorithmResponse_httpStatus :: Lens.Lens' DescribeAlgorithmResponse Prelude.Int
describeAlgorithmResponse_httpStatus = Lens.lens (\DescribeAlgorithmResponse' {httpStatus} -> httpStatus) (\s@DescribeAlgorithmResponse' {} a -> s {httpStatus = a} :: DescribeAlgorithmResponse)

instance Prelude.NFData DescribeAlgorithmResponse
