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
-- Module      : Network.AWS.SecurityHub.GetFindingAggregator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current finding aggregation configuration.
module Network.AWS.SecurityHub.GetFindingAggregator
  ( -- * Creating a Request
    GetFindingAggregator (..),
    newGetFindingAggregator,

    -- * Request Lenses
    getFindingAggregator_findingAggregatorArn,

    -- * Destructuring the Response
    GetFindingAggregatorResponse (..),
    newGetFindingAggregatorResponse,

    -- * Response Lenses
    getFindingAggregatorResponse_regions,
    getFindingAggregatorResponse_findingAggregatorArn,
    getFindingAggregatorResponse_regionLinkingMode,
    getFindingAggregatorResponse_findingAggregationRegion,
    getFindingAggregatorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newGetFindingAggregator' smart constructor.
data GetFindingAggregator = GetFindingAggregator'
  { -- | The ARN of the finding aggregator to return details for. To obtain the
    -- ARN, use @ListFindingAggregators@.
    findingAggregatorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFindingAggregator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'findingAggregatorArn', 'getFindingAggregator_findingAggregatorArn' - The ARN of the finding aggregator to return details for. To obtain the
-- ARN, use @ListFindingAggregators@.
newGetFindingAggregator ::
  -- | 'findingAggregatorArn'
  Prelude.Text ->
  GetFindingAggregator
newGetFindingAggregator pFindingAggregatorArn_ =
  GetFindingAggregator'
    { findingAggregatorArn =
        pFindingAggregatorArn_
    }

-- | The ARN of the finding aggregator to return details for. To obtain the
-- ARN, use @ListFindingAggregators@.
getFindingAggregator_findingAggregatorArn :: Lens.Lens' GetFindingAggregator Prelude.Text
getFindingAggregator_findingAggregatorArn = Lens.lens (\GetFindingAggregator' {findingAggregatorArn} -> findingAggregatorArn) (\s@GetFindingAggregator' {} a -> s {findingAggregatorArn = a} :: GetFindingAggregator)

instance Core.AWSRequest GetFindingAggregator where
  type
    AWSResponse GetFindingAggregator =
      GetFindingAggregatorResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFindingAggregatorResponse'
            Prelude.<$> (x Core..?> "Regions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "FindingAggregatorArn")
            Prelude.<*> (x Core..?> "RegionLinkingMode")
            Prelude.<*> (x Core..?> "FindingAggregationRegion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetFindingAggregator

instance Prelude.NFData GetFindingAggregator

instance Core.ToHeaders GetFindingAggregator where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetFindingAggregator where
  toPath GetFindingAggregator' {..} =
    Prelude.mconcat
      [ "/findingAggregator/get/",
        Core.toBS findingAggregatorArn
      ]

instance Core.ToQuery GetFindingAggregator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetFindingAggregatorResponse' smart constructor.
data GetFindingAggregatorResponse = GetFindingAggregatorResponse'
  { -- | The list of excluded Regions or included Regions.
    regions :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the finding aggregator.
    findingAggregatorArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether to link all Regions, all Regions except for a list of
    -- excluded Regions, or a list of included Regions.
    regionLinkingMode :: Prelude.Maybe Prelude.Text,
    -- | The aggregation Region.
    findingAggregationRegion :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFindingAggregatorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regions', 'getFindingAggregatorResponse_regions' - The list of excluded Regions or included Regions.
--
-- 'findingAggregatorArn', 'getFindingAggregatorResponse_findingAggregatorArn' - The ARN of the finding aggregator.
--
-- 'regionLinkingMode', 'getFindingAggregatorResponse_regionLinkingMode' - Indicates whether to link all Regions, all Regions except for a list of
-- excluded Regions, or a list of included Regions.
--
-- 'findingAggregationRegion', 'getFindingAggregatorResponse_findingAggregationRegion' - The aggregation Region.
--
-- 'httpStatus', 'getFindingAggregatorResponse_httpStatus' - The response's http status code.
newGetFindingAggregatorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFindingAggregatorResponse
newGetFindingAggregatorResponse pHttpStatus_ =
  GetFindingAggregatorResponse'
    { regions =
        Prelude.Nothing,
      findingAggregatorArn = Prelude.Nothing,
      regionLinkingMode = Prelude.Nothing,
      findingAggregationRegion = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of excluded Regions or included Regions.
getFindingAggregatorResponse_regions :: Lens.Lens' GetFindingAggregatorResponse (Prelude.Maybe [Prelude.Text])
getFindingAggregatorResponse_regions = Lens.lens (\GetFindingAggregatorResponse' {regions} -> regions) (\s@GetFindingAggregatorResponse' {} a -> s {regions = a} :: GetFindingAggregatorResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the finding aggregator.
getFindingAggregatorResponse_findingAggregatorArn :: Lens.Lens' GetFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
getFindingAggregatorResponse_findingAggregatorArn = Lens.lens (\GetFindingAggregatorResponse' {findingAggregatorArn} -> findingAggregatorArn) (\s@GetFindingAggregatorResponse' {} a -> s {findingAggregatorArn = a} :: GetFindingAggregatorResponse)

-- | Indicates whether to link all Regions, all Regions except for a list of
-- excluded Regions, or a list of included Regions.
getFindingAggregatorResponse_regionLinkingMode :: Lens.Lens' GetFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
getFindingAggregatorResponse_regionLinkingMode = Lens.lens (\GetFindingAggregatorResponse' {regionLinkingMode} -> regionLinkingMode) (\s@GetFindingAggregatorResponse' {} a -> s {regionLinkingMode = a} :: GetFindingAggregatorResponse)

-- | The aggregation Region.
getFindingAggregatorResponse_findingAggregationRegion :: Lens.Lens' GetFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
getFindingAggregatorResponse_findingAggregationRegion = Lens.lens (\GetFindingAggregatorResponse' {findingAggregationRegion} -> findingAggregationRegion) (\s@GetFindingAggregatorResponse' {} a -> s {findingAggregationRegion = a} :: GetFindingAggregatorResponse)

-- | The response's http status code.
getFindingAggregatorResponse_httpStatus :: Lens.Lens' GetFindingAggregatorResponse Prelude.Int
getFindingAggregatorResponse_httpStatus = Lens.lens (\GetFindingAggregatorResponse' {httpStatus} -> httpStatus) (\s@GetFindingAggregatorResponse' {} a -> s {httpStatus = a} :: GetFindingAggregatorResponse)

instance Prelude.NFData GetFindingAggregatorResponse
