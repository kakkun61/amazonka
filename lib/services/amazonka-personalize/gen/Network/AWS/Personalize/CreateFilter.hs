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
-- Module      : Network.AWS.Personalize.CreateFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a recommendation filter. For more information, see filter.
module Network.AWS.Personalize.CreateFilter
  ( -- * Creating a Request
    CreateFilter (..),
    newCreateFilter,

    -- * Request Lenses
    createFilter_name,
    createFilter_datasetGroupArn,
    createFilter_filterExpression,

    -- * Destructuring the Response
    CreateFilterResponse (..),
    newCreateFilterResponse,

    -- * Response Lenses
    createFilterResponse_filterArn,
    createFilterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateFilter' smart constructor.
data CreateFilter = CreateFilter'
  { -- | The name of the filter to create.
    name :: Prelude.Text,
    -- | The ARN of the dataset group that the filter will belong to.
    datasetGroupArn :: Prelude.Text,
    -- | The filter expression defines which items are included or excluded from
    -- recommendations. Filter expression must follow specific format rules.
    -- For information about filter expression structure and syntax, see
    -- filter-expressions.
    filterExpression :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createFilter_name' - The name of the filter to create.
--
-- 'datasetGroupArn', 'createFilter_datasetGroupArn' - The ARN of the dataset group that the filter will belong to.
--
-- 'filterExpression', 'createFilter_filterExpression' - The filter expression defines which items are included or excluded from
-- recommendations. Filter expression must follow specific format rules.
-- For information about filter expression structure and syntax, see
-- filter-expressions.
newCreateFilter ::
  -- | 'name'
  Prelude.Text ->
  -- | 'datasetGroupArn'
  Prelude.Text ->
  -- | 'filterExpression'
  Prelude.Text ->
  CreateFilter
newCreateFilter
  pName_
  pDatasetGroupArn_
  pFilterExpression_ =
    CreateFilter'
      { name = pName_,
        datasetGroupArn = pDatasetGroupArn_,
        filterExpression =
          Core._Sensitive Lens.# pFilterExpression_
      }

-- | The name of the filter to create.
createFilter_name :: Lens.Lens' CreateFilter Prelude.Text
createFilter_name = Lens.lens (\CreateFilter' {name} -> name) (\s@CreateFilter' {} a -> s {name = a} :: CreateFilter)

-- | The ARN of the dataset group that the filter will belong to.
createFilter_datasetGroupArn :: Lens.Lens' CreateFilter Prelude.Text
createFilter_datasetGroupArn = Lens.lens (\CreateFilter' {datasetGroupArn} -> datasetGroupArn) (\s@CreateFilter' {} a -> s {datasetGroupArn = a} :: CreateFilter)

-- | The filter expression defines which items are included or excluded from
-- recommendations. Filter expression must follow specific format rules.
-- For information about filter expression structure and syntax, see
-- filter-expressions.
createFilter_filterExpression :: Lens.Lens' CreateFilter Prelude.Text
createFilter_filterExpression = Lens.lens (\CreateFilter' {filterExpression} -> filterExpression) (\s@CreateFilter' {} a -> s {filterExpression = a} :: CreateFilter) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateFilter where
  type AWSResponse CreateFilter = CreateFilterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateFilterResponse'
            Prelude.<$> (x Core..?> "filterArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFilter

instance Prelude.NFData CreateFilter

instance Core.ToHeaders CreateFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.CreateFilter" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateFilter where
  toJSON CreateFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("datasetGroupArn" Core..= datasetGroupArn),
            Prelude.Just
              ("filterExpression" Core..= filterExpression)
          ]
      )

instance Core.ToPath CreateFilter where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateFilterResponse' smart constructor.
data CreateFilterResponse = CreateFilterResponse'
  { -- | The ARN of the new filter.
    filterArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterArn', 'createFilterResponse_filterArn' - The ARN of the new filter.
--
-- 'httpStatus', 'createFilterResponse_httpStatus' - The response's http status code.
newCreateFilterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFilterResponse
newCreateFilterResponse pHttpStatus_ =
  CreateFilterResponse'
    { filterArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the new filter.
createFilterResponse_filterArn :: Lens.Lens' CreateFilterResponse (Prelude.Maybe Prelude.Text)
createFilterResponse_filterArn = Lens.lens (\CreateFilterResponse' {filterArn} -> filterArn) (\s@CreateFilterResponse' {} a -> s {filterArn = a} :: CreateFilterResponse)

-- | The response's http status code.
createFilterResponse_httpStatus :: Lens.Lens' CreateFilterResponse Prelude.Int
createFilterResponse_httpStatus = Lens.lens (\CreateFilterResponse' {httpStatus} -> httpStatus) (\s@CreateFilterResponse' {} a -> s {httpStatus = a} :: CreateFilterResponse)

instance Prelude.NFData CreateFilterResponse
