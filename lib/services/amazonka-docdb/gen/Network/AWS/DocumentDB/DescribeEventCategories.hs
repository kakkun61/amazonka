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
-- Module      : Network.AWS.DocumentDB.DescribeEventCategories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays a list of categories for all event source types, or, if
-- specified, for a specified source type.
module Network.AWS.DocumentDB.DescribeEventCategories
  ( -- * Creating a Request
    DescribeEventCategories (..),
    newDescribeEventCategories,

    -- * Request Lenses
    describeEventCategories_sourceType,
    describeEventCategories_filters,

    -- * Destructuring the Response
    DescribeEventCategoriesResponse (..),
    newDescribeEventCategoriesResponse,

    -- * Response Lenses
    describeEventCategoriesResponse_eventCategoriesMapList,
    describeEventCategoriesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to DescribeEventCategories.
--
-- /See:/ 'newDescribeEventCategories' smart constructor.
data DescribeEventCategories = DescribeEventCategories'
  { -- | The type of source that is generating the events.
    --
    -- Valid values: @db-instance@, @db-parameter-group@, @db-security-group@
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | This parameter is not currently supported.
    filters :: Prelude.Maybe [Filter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventCategories' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceType', 'describeEventCategories_sourceType' - The type of source that is generating the events.
--
-- Valid values: @db-instance@, @db-parameter-group@, @db-security-group@
--
-- 'filters', 'describeEventCategories_filters' - This parameter is not currently supported.
newDescribeEventCategories ::
  DescribeEventCategories
newDescribeEventCategories =
  DescribeEventCategories'
    { sourceType =
        Prelude.Nothing,
      filters = Prelude.Nothing
    }

-- | The type of source that is generating the events.
--
-- Valid values: @db-instance@, @db-parameter-group@, @db-security-group@
describeEventCategories_sourceType :: Lens.Lens' DescribeEventCategories (Prelude.Maybe Prelude.Text)
describeEventCategories_sourceType = Lens.lens (\DescribeEventCategories' {sourceType} -> sourceType) (\s@DescribeEventCategories' {} a -> s {sourceType = a} :: DescribeEventCategories)

-- | This parameter is not currently supported.
describeEventCategories_filters :: Lens.Lens' DescribeEventCategories (Prelude.Maybe [Filter])
describeEventCategories_filters = Lens.lens (\DescribeEventCategories' {filters} -> filters) (\s@DescribeEventCategories' {} a -> s {filters = a} :: DescribeEventCategories) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest DescribeEventCategories where
  type
    AWSResponse DescribeEventCategories =
      DescribeEventCategoriesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeEventCategoriesResult"
      ( \s h x ->
          DescribeEventCategoriesResponse'
            Prelude.<$> ( x Core..@? "EventCategoriesMapList"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "EventCategoriesMap")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEventCategories

instance Prelude.NFData DescribeEventCategories

instance Core.ToHeaders DescribeEventCategories where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeEventCategories where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEventCategories where
  toQuery DescribeEventCategories' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeEventCategories" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "SourceType" Core.=: sourceType,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters)
      ]

-- | Represents the output of DescribeEventCategories.
--
-- /See:/ 'newDescribeEventCategoriesResponse' smart constructor.
data DescribeEventCategoriesResponse = DescribeEventCategoriesResponse'
  { -- | A list of event category maps.
    eventCategoriesMapList :: Prelude.Maybe [EventCategoriesMap],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventCategoriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventCategoriesMapList', 'describeEventCategoriesResponse_eventCategoriesMapList' - A list of event category maps.
--
-- 'httpStatus', 'describeEventCategoriesResponse_httpStatus' - The response's http status code.
newDescribeEventCategoriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventCategoriesResponse
newDescribeEventCategoriesResponse pHttpStatus_ =
  DescribeEventCategoriesResponse'
    { eventCategoriesMapList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of event category maps.
describeEventCategoriesResponse_eventCategoriesMapList :: Lens.Lens' DescribeEventCategoriesResponse (Prelude.Maybe [EventCategoriesMap])
describeEventCategoriesResponse_eventCategoriesMapList = Lens.lens (\DescribeEventCategoriesResponse' {eventCategoriesMapList} -> eventCategoriesMapList) (\s@DescribeEventCategoriesResponse' {} a -> s {eventCategoriesMapList = a} :: DescribeEventCategoriesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEventCategoriesResponse_httpStatus :: Lens.Lens' DescribeEventCategoriesResponse Prelude.Int
describeEventCategoriesResponse_httpStatus = Lens.lens (\DescribeEventCategoriesResponse' {httpStatus} -> httpStatus) (\s@DescribeEventCategoriesResponse' {} a -> s {httpStatus = a} :: DescribeEventCategoriesResponse)

instance
  Prelude.NFData
    DescribeEventCategoriesResponse
