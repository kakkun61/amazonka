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
-- Module      : Network.AWS.MediaConnect.DescribeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays the details of an offering. The response includes the offering
-- description, duration, outbound bandwidth, price, and Amazon Resource
-- Name (ARN).
module Network.AWS.MediaConnect.DescribeOffering
  ( -- * Creating a Request
    DescribeOffering (..),
    newDescribeOffering,

    -- * Request Lenses
    describeOffering_offeringArn,

    -- * Destructuring the Response
    DescribeOfferingResponse (..),
    newDescribeOfferingResponse,

    -- * Response Lenses
    describeOfferingResponse_offering,
    describeOfferingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeOffering' smart constructor.
data DescribeOffering = DescribeOffering'
  { -- | The Amazon Resource Name (ARN) of the offering.
    offeringArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOffering' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'offeringArn', 'describeOffering_offeringArn' - The Amazon Resource Name (ARN) of the offering.
newDescribeOffering ::
  -- | 'offeringArn'
  Prelude.Text ->
  DescribeOffering
newDescribeOffering pOfferingArn_ =
  DescribeOffering' {offeringArn = pOfferingArn_}

-- | The Amazon Resource Name (ARN) of the offering.
describeOffering_offeringArn :: Lens.Lens' DescribeOffering Prelude.Text
describeOffering_offeringArn = Lens.lens (\DescribeOffering' {offeringArn} -> offeringArn) (\s@DescribeOffering' {} a -> s {offeringArn = a} :: DescribeOffering)

instance Core.AWSRequest DescribeOffering where
  type
    AWSResponse DescribeOffering =
      DescribeOfferingResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOfferingResponse'
            Prelude.<$> (x Core..?> "offering")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeOffering

instance Prelude.NFData DescribeOffering

instance Core.ToHeaders DescribeOffering where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeOffering where
  toPath DescribeOffering' {..} =
    Prelude.mconcat
      ["/v1/offerings/", Core.toBS offeringArn]

instance Core.ToQuery DescribeOffering where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeOfferingResponse' smart constructor.
data DescribeOfferingResponse = DescribeOfferingResponse'
  { offering :: Prelude.Maybe Offering,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOfferingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'offering', 'describeOfferingResponse_offering' - Undocumented member.
--
-- 'httpStatus', 'describeOfferingResponse_httpStatus' - The response's http status code.
newDescribeOfferingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeOfferingResponse
newDescribeOfferingResponse pHttpStatus_ =
  DescribeOfferingResponse'
    { offering =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeOfferingResponse_offering :: Lens.Lens' DescribeOfferingResponse (Prelude.Maybe Offering)
describeOfferingResponse_offering = Lens.lens (\DescribeOfferingResponse' {offering} -> offering) (\s@DescribeOfferingResponse' {} a -> s {offering = a} :: DescribeOfferingResponse)

-- | The response's http status code.
describeOfferingResponse_httpStatus :: Lens.Lens' DescribeOfferingResponse Prelude.Int
describeOfferingResponse_httpStatus = Lens.lens (\DescribeOfferingResponse' {httpStatus} -> httpStatus) (\s@DescribeOfferingResponse' {} a -> s {httpStatus = a} :: DescribeOfferingResponse)

instance Prelude.NFData DescribeOfferingResponse
