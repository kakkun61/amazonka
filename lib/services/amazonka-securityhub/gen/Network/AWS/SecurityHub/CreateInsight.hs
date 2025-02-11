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
-- Module      : Network.AWS.SecurityHub.CreateInsight
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom insight in Security Hub. An insight is a consolidation
-- of findings that relate to a security issue that requires attention or
-- remediation.
--
-- To group the related findings in the insight, use the
-- @GroupByAttribute@.
module Network.AWS.SecurityHub.CreateInsight
  ( -- * Creating a Request
    CreateInsight (..),
    newCreateInsight,

    -- * Request Lenses
    createInsight_name,
    createInsight_filters,
    createInsight_groupByAttribute,

    -- * Destructuring the Response
    CreateInsightResponse (..),
    newCreateInsightResponse,

    -- * Response Lenses
    createInsightResponse_httpStatus,
    createInsightResponse_insightArn,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newCreateInsight' smart constructor.
data CreateInsight = CreateInsight'
  { -- | The name of the custom insight to create.
    name :: Prelude.Text,
    -- | One or more attributes used to filter the findings included in the
    -- insight. The insight only includes findings that match the criteria
    -- defined in the filters.
    filters :: AwsSecurityFindingFilters,
    -- | The attribute used to group the findings for the insight. The grouping
    -- attribute identifies the type of item that the insight applies to. For
    -- example, if an insight is grouped by resource identifier, then the
    -- insight produces a list of resource identifiers.
    groupByAttribute :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInsight' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createInsight_name' - The name of the custom insight to create.
--
-- 'filters', 'createInsight_filters' - One or more attributes used to filter the findings included in the
-- insight. The insight only includes findings that match the criteria
-- defined in the filters.
--
-- 'groupByAttribute', 'createInsight_groupByAttribute' - The attribute used to group the findings for the insight. The grouping
-- attribute identifies the type of item that the insight applies to. For
-- example, if an insight is grouped by resource identifier, then the
-- insight produces a list of resource identifiers.
newCreateInsight ::
  -- | 'name'
  Prelude.Text ->
  -- | 'filters'
  AwsSecurityFindingFilters ->
  -- | 'groupByAttribute'
  Prelude.Text ->
  CreateInsight
newCreateInsight pName_ pFilters_ pGroupByAttribute_ =
  CreateInsight'
    { name = pName_,
      filters = pFilters_,
      groupByAttribute = pGroupByAttribute_
    }

-- | The name of the custom insight to create.
createInsight_name :: Lens.Lens' CreateInsight Prelude.Text
createInsight_name = Lens.lens (\CreateInsight' {name} -> name) (\s@CreateInsight' {} a -> s {name = a} :: CreateInsight)

-- | One or more attributes used to filter the findings included in the
-- insight. The insight only includes findings that match the criteria
-- defined in the filters.
createInsight_filters :: Lens.Lens' CreateInsight AwsSecurityFindingFilters
createInsight_filters = Lens.lens (\CreateInsight' {filters} -> filters) (\s@CreateInsight' {} a -> s {filters = a} :: CreateInsight)

-- | The attribute used to group the findings for the insight. The grouping
-- attribute identifies the type of item that the insight applies to. For
-- example, if an insight is grouped by resource identifier, then the
-- insight produces a list of resource identifiers.
createInsight_groupByAttribute :: Lens.Lens' CreateInsight Prelude.Text
createInsight_groupByAttribute = Lens.lens (\CreateInsight' {groupByAttribute} -> groupByAttribute) (\s@CreateInsight' {} a -> s {groupByAttribute = a} :: CreateInsight)

instance Core.AWSRequest CreateInsight where
  type
    AWSResponse CreateInsight =
      CreateInsightResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInsightResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "InsightArn")
      )

instance Prelude.Hashable CreateInsight

instance Prelude.NFData CreateInsight

instance Core.ToHeaders CreateInsight where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateInsight where
  toJSON CreateInsight' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Filters" Core..= filters),
            Prelude.Just
              ("GroupByAttribute" Core..= groupByAttribute)
          ]
      )

instance Core.ToPath CreateInsight where
  toPath = Prelude.const "/insights"

instance Core.ToQuery CreateInsight where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateInsightResponse' smart constructor.
data CreateInsightResponse = CreateInsightResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the insight created.
    insightArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInsightResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createInsightResponse_httpStatus' - The response's http status code.
--
-- 'insightArn', 'createInsightResponse_insightArn' - The ARN of the insight created.
newCreateInsightResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'insightArn'
  Prelude.Text ->
  CreateInsightResponse
newCreateInsightResponse pHttpStatus_ pInsightArn_ =
  CreateInsightResponse'
    { httpStatus = pHttpStatus_,
      insightArn = pInsightArn_
    }

-- | The response's http status code.
createInsightResponse_httpStatus :: Lens.Lens' CreateInsightResponse Prelude.Int
createInsightResponse_httpStatus = Lens.lens (\CreateInsightResponse' {httpStatus} -> httpStatus) (\s@CreateInsightResponse' {} a -> s {httpStatus = a} :: CreateInsightResponse)

-- | The ARN of the insight created.
createInsightResponse_insightArn :: Lens.Lens' CreateInsightResponse Prelude.Text
createInsightResponse_insightArn = Lens.lens (\CreateInsightResponse' {insightArn} -> insightArn) (\s@CreateInsightResponse' {} a -> s {insightArn = a} :: CreateInsightResponse)

instance Prelude.NFData CreateInsightResponse
