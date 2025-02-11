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
-- Module      : Network.AWS.SecurityHub.UpdateFindingAggregator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the finding aggregation configuration. Used to update the Region
-- linking mode and the list of included or excluded Regions. You cannot
-- use @UpdateFindingAggregator@ to change the aggregation Region.
--
-- You must run @UpdateFindingAggregator@ from the current aggregation
-- Region.
module Network.AWS.SecurityHub.UpdateFindingAggregator
  ( -- * Creating a Request
    UpdateFindingAggregator (..),
    newUpdateFindingAggregator,

    -- * Request Lenses
    updateFindingAggregator_regions,
    updateFindingAggregator_findingAggregatorArn,
    updateFindingAggregator_regionLinkingMode,

    -- * Destructuring the Response
    UpdateFindingAggregatorResponse (..),
    newUpdateFindingAggregatorResponse,

    -- * Response Lenses
    updateFindingAggregatorResponse_regions,
    updateFindingAggregatorResponse_findingAggregatorArn,
    updateFindingAggregatorResponse_regionLinkingMode,
    updateFindingAggregatorResponse_findingAggregationRegion,
    updateFindingAggregatorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newUpdateFindingAggregator' smart constructor.
data UpdateFindingAggregator = UpdateFindingAggregator'
  { -- | If @RegionLinkingMode@ is @ALL_REGIONS_EXCEPT_SPECIFIED@, then this is a
    -- comma-separated list of Regions that do not aggregate findings to the
    -- aggregation Region.
    --
    -- If @RegionLinkingMode@ is @SPECIFIED_REGIONS@, then this is a
    -- comma-separated list of Regions that do aggregate findings to the
    -- aggregation Region.
    regions :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the finding aggregator. To obtain the ARN, use
    -- @ListFindingAggregators@.
    findingAggregatorArn :: Prelude.Text,
    -- | Indicates whether to aggregate findings from all of the available
    -- Regions in the current partition. Also determines whether to
    -- automatically aggregate findings from new Regions as Security Hub
    -- supports them and you opt into them.
    --
    -- The selected option also determines how to use the Regions provided in
    -- the Regions list.
    --
    -- The options are as follows:
    --
    -- -   @ALL_REGIONS@ - Indicates to aggregate findings from all of the
    --     Regions where Security Hub is enabled. When you choose this option,
    --     Security Hub also automatically aggregates findings from new Regions
    --     as Security Hub supports them and you opt into them.
    --
    -- -   @ALL_REGIONS_EXCEPT_SPECIFIED@ - Indicates to aggregate findings
    --     from all of the Regions where Security Hub is enabled, except for
    --     the Regions listed in the @Regions@ parameter. When you choose this
    --     option, Security Hub also automatically aggregates findings from new
    --     Regions as Security Hub supports them and you opt into them.
    --
    -- -   @SPECIFIED_REGIONS@ - Indicates to aggregate findings only from the
    --     Regions listed in the @Regions@ parameter. Security Hub does not
    --     automatically aggregate findings from new Regions.
    regionLinkingMode :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFindingAggregator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regions', 'updateFindingAggregator_regions' - If @RegionLinkingMode@ is @ALL_REGIONS_EXCEPT_SPECIFIED@, then this is a
-- comma-separated list of Regions that do not aggregate findings to the
-- aggregation Region.
--
-- If @RegionLinkingMode@ is @SPECIFIED_REGIONS@, then this is a
-- comma-separated list of Regions that do aggregate findings to the
-- aggregation Region.
--
-- 'findingAggregatorArn', 'updateFindingAggregator_findingAggregatorArn' - The ARN of the finding aggregator. To obtain the ARN, use
-- @ListFindingAggregators@.
--
-- 'regionLinkingMode', 'updateFindingAggregator_regionLinkingMode' - Indicates whether to aggregate findings from all of the available
-- Regions in the current partition. Also determines whether to
-- automatically aggregate findings from new Regions as Security Hub
-- supports them and you opt into them.
--
-- The selected option also determines how to use the Regions provided in
-- the Regions list.
--
-- The options are as follows:
--
-- -   @ALL_REGIONS@ - Indicates to aggregate findings from all of the
--     Regions where Security Hub is enabled. When you choose this option,
--     Security Hub also automatically aggregates findings from new Regions
--     as Security Hub supports them and you opt into them.
--
-- -   @ALL_REGIONS_EXCEPT_SPECIFIED@ - Indicates to aggregate findings
--     from all of the Regions where Security Hub is enabled, except for
--     the Regions listed in the @Regions@ parameter. When you choose this
--     option, Security Hub also automatically aggregates findings from new
--     Regions as Security Hub supports them and you opt into them.
--
-- -   @SPECIFIED_REGIONS@ - Indicates to aggregate findings only from the
--     Regions listed in the @Regions@ parameter. Security Hub does not
--     automatically aggregate findings from new Regions.
newUpdateFindingAggregator ::
  -- | 'findingAggregatorArn'
  Prelude.Text ->
  -- | 'regionLinkingMode'
  Prelude.Text ->
  UpdateFindingAggregator
newUpdateFindingAggregator
  pFindingAggregatorArn_
  pRegionLinkingMode_ =
    UpdateFindingAggregator'
      { regions = Prelude.Nothing,
        findingAggregatorArn = pFindingAggregatorArn_,
        regionLinkingMode = pRegionLinkingMode_
      }

-- | If @RegionLinkingMode@ is @ALL_REGIONS_EXCEPT_SPECIFIED@, then this is a
-- comma-separated list of Regions that do not aggregate findings to the
-- aggregation Region.
--
-- If @RegionLinkingMode@ is @SPECIFIED_REGIONS@, then this is a
-- comma-separated list of Regions that do aggregate findings to the
-- aggregation Region.
updateFindingAggregator_regions :: Lens.Lens' UpdateFindingAggregator (Prelude.Maybe [Prelude.Text])
updateFindingAggregator_regions = Lens.lens (\UpdateFindingAggregator' {regions} -> regions) (\s@UpdateFindingAggregator' {} a -> s {regions = a} :: UpdateFindingAggregator) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the finding aggregator. To obtain the ARN, use
-- @ListFindingAggregators@.
updateFindingAggregator_findingAggregatorArn :: Lens.Lens' UpdateFindingAggregator Prelude.Text
updateFindingAggregator_findingAggregatorArn = Lens.lens (\UpdateFindingAggregator' {findingAggregatorArn} -> findingAggregatorArn) (\s@UpdateFindingAggregator' {} a -> s {findingAggregatorArn = a} :: UpdateFindingAggregator)

-- | Indicates whether to aggregate findings from all of the available
-- Regions in the current partition. Also determines whether to
-- automatically aggregate findings from new Regions as Security Hub
-- supports them and you opt into them.
--
-- The selected option also determines how to use the Regions provided in
-- the Regions list.
--
-- The options are as follows:
--
-- -   @ALL_REGIONS@ - Indicates to aggregate findings from all of the
--     Regions where Security Hub is enabled. When you choose this option,
--     Security Hub also automatically aggregates findings from new Regions
--     as Security Hub supports them and you opt into them.
--
-- -   @ALL_REGIONS_EXCEPT_SPECIFIED@ - Indicates to aggregate findings
--     from all of the Regions where Security Hub is enabled, except for
--     the Regions listed in the @Regions@ parameter. When you choose this
--     option, Security Hub also automatically aggregates findings from new
--     Regions as Security Hub supports them and you opt into them.
--
-- -   @SPECIFIED_REGIONS@ - Indicates to aggregate findings only from the
--     Regions listed in the @Regions@ parameter. Security Hub does not
--     automatically aggregate findings from new Regions.
updateFindingAggregator_regionLinkingMode :: Lens.Lens' UpdateFindingAggregator Prelude.Text
updateFindingAggregator_regionLinkingMode = Lens.lens (\UpdateFindingAggregator' {regionLinkingMode} -> regionLinkingMode) (\s@UpdateFindingAggregator' {} a -> s {regionLinkingMode = a} :: UpdateFindingAggregator)

instance Core.AWSRequest UpdateFindingAggregator where
  type
    AWSResponse UpdateFindingAggregator =
      UpdateFindingAggregatorResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFindingAggregatorResponse'
            Prelude.<$> (x Core..?> "Regions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "FindingAggregatorArn")
            Prelude.<*> (x Core..?> "RegionLinkingMode")
            Prelude.<*> (x Core..?> "FindingAggregationRegion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFindingAggregator

instance Prelude.NFData UpdateFindingAggregator

instance Core.ToHeaders UpdateFindingAggregator where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFindingAggregator where
  toJSON UpdateFindingAggregator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Regions" Core..=) Prelude.<$> regions,
            Prelude.Just
              ( "FindingAggregatorArn"
                  Core..= findingAggregatorArn
              ),
            Prelude.Just
              ("RegionLinkingMode" Core..= regionLinkingMode)
          ]
      )

instance Core.ToPath UpdateFindingAggregator where
  toPath = Prelude.const "/findingAggregator/update"

instance Core.ToQuery UpdateFindingAggregator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFindingAggregatorResponse' smart constructor.
data UpdateFindingAggregatorResponse = UpdateFindingAggregatorResponse'
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
-- Create a value of 'UpdateFindingAggregatorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regions', 'updateFindingAggregatorResponse_regions' - The list of excluded Regions or included Regions.
--
-- 'findingAggregatorArn', 'updateFindingAggregatorResponse_findingAggregatorArn' - The ARN of the finding aggregator.
--
-- 'regionLinkingMode', 'updateFindingAggregatorResponse_regionLinkingMode' - Indicates whether to link all Regions, all Regions except for a list of
-- excluded Regions, or a list of included Regions.
--
-- 'findingAggregationRegion', 'updateFindingAggregatorResponse_findingAggregationRegion' - The aggregation Region.
--
-- 'httpStatus', 'updateFindingAggregatorResponse_httpStatus' - The response's http status code.
newUpdateFindingAggregatorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFindingAggregatorResponse
newUpdateFindingAggregatorResponse pHttpStatus_ =
  UpdateFindingAggregatorResponse'
    { regions =
        Prelude.Nothing,
      findingAggregatorArn = Prelude.Nothing,
      regionLinkingMode = Prelude.Nothing,
      findingAggregationRegion = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of excluded Regions or included Regions.
updateFindingAggregatorResponse_regions :: Lens.Lens' UpdateFindingAggregatorResponse (Prelude.Maybe [Prelude.Text])
updateFindingAggregatorResponse_regions = Lens.lens (\UpdateFindingAggregatorResponse' {regions} -> regions) (\s@UpdateFindingAggregatorResponse' {} a -> s {regions = a} :: UpdateFindingAggregatorResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the finding aggregator.
updateFindingAggregatorResponse_findingAggregatorArn :: Lens.Lens' UpdateFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
updateFindingAggregatorResponse_findingAggregatorArn = Lens.lens (\UpdateFindingAggregatorResponse' {findingAggregatorArn} -> findingAggregatorArn) (\s@UpdateFindingAggregatorResponse' {} a -> s {findingAggregatorArn = a} :: UpdateFindingAggregatorResponse)

-- | Indicates whether to link all Regions, all Regions except for a list of
-- excluded Regions, or a list of included Regions.
updateFindingAggregatorResponse_regionLinkingMode :: Lens.Lens' UpdateFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
updateFindingAggregatorResponse_regionLinkingMode = Lens.lens (\UpdateFindingAggregatorResponse' {regionLinkingMode} -> regionLinkingMode) (\s@UpdateFindingAggregatorResponse' {} a -> s {regionLinkingMode = a} :: UpdateFindingAggregatorResponse)

-- | The aggregation Region.
updateFindingAggregatorResponse_findingAggregationRegion :: Lens.Lens' UpdateFindingAggregatorResponse (Prelude.Maybe Prelude.Text)
updateFindingAggregatorResponse_findingAggregationRegion = Lens.lens (\UpdateFindingAggregatorResponse' {findingAggregationRegion} -> findingAggregationRegion) (\s@UpdateFindingAggregatorResponse' {} a -> s {findingAggregationRegion = a} :: UpdateFindingAggregatorResponse)

-- | The response's http status code.
updateFindingAggregatorResponse_httpStatus :: Lens.Lens' UpdateFindingAggregatorResponse Prelude.Int
updateFindingAggregatorResponse_httpStatus = Lens.lens (\UpdateFindingAggregatorResponse' {httpStatus} -> httpStatus) (\s@UpdateFindingAggregatorResponse' {} a -> s {httpStatus = a} :: UpdateFindingAggregatorResponse)

instance
  Prelude.NFData
    UpdateFindingAggregatorResponse
