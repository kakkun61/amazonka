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
-- Module      : Network.AWS.FraudDetector.BatchCreateVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch of variables.
module Network.AWS.FraudDetector.BatchCreateVariable
  ( -- * Creating a Request
    BatchCreateVariable (..),
    newBatchCreateVariable,

    -- * Request Lenses
    batchCreateVariable_tags,
    batchCreateVariable_variableEntries,

    -- * Destructuring the Response
    BatchCreateVariableResponse (..),
    newBatchCreateVariableResponse,

    -- * Response Lenses
    batchCreateVariableResponse_errors,
    batchCreateVariableResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchCreateVariable' smart constructor.
data BatchCreateVariable = BatchCreateVariable'
  { -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The list of variables for the batch create variable request.
    variableEntries :: Prelude.NonEmpty VariableEntry
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateVariable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'batchCreateVariable_tags' - A collection of key and value pairs.
--
-- 'variableEntries', 'batchCreateVariable_variableEntries' - The list of variables for the batch create variable request.
newBatchCreateVariable ::
  -- | 'variableEntries'
  Prelude.NonEmpty VariableEntry ->
  BatchCreateVariable
newBatchCreateVariable pVariableEntries_ =
  BatchCreateVariable'
    { tags = Prelude.Nothing,
      variableEntries =
        Lens.coerced Lens.# pVariableEntries_
    }

-- | A collection of key and value pairs.
batchCreateVariable_tags :: Lens.Lens' BatchCreateVariable (Prelude.Maybe [Tag])
batchCreateVariable_tags = Lens.lens (\BatchCreateVariable' {tags} -> tags) (\s@BatchCreateVariable' {} a -> s {tags = a} :: BatchCreateVariable) Prelude.. Lens.mapping Lens.coerced

-- | The list of variables for the batch create variable request.
batchCreateVariable_variableEntries :: Lens.Lens' BatchCreateVariable (Prelude.NonEmpty VariableEntry)
batchCreateVariable_variableEntries = Lens.lens (\BatchCreateVariable' {variableEntries} -> variableEntries) (\s@BatchCreateVariable' {} a -> s {variableEntries = a} :: BatchCreateVariable) Prelude.. Lens.coerced

instance Core.AWSRequest BatchCreateVariable where
  type
    AWSResponse BatchCreateVariable =
      BatchCreateVariableResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchCreateVariableResponse'
            Prelude.<$> (x Core..?> "errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchCreateVariable

instance Prelude.NFData BatchCreateVariable

instance Core.ToHeaders BatchCreateVariable where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.BatchCreateVariable" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchCreateVariable where
  toJSON BatchCreateVariable' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("variableEntries" Core..= variableEntries)
          ]
      )

instance Core.ToPath BatchCreateVariable where
  toPath = Prelude.const "/"

instance Core.ToQuery BatchCreateVariable where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchCreateVariableResponse' smart constructor.
data BatchCreateVariableResponse = BatchCreateVariableResponse'
  { -- | Provides the errors for the @BatchCreateVariable@ request.
    errors :: Prelude.Maybe [BatchCreateVariableError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateVariableResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchCreateVariableResponse_errors' - Provides the errors for the @BatchCreateVariable@ request.
--
-- 'httpStatus', 'batchCreateVariableResponse_httpStatus' - The response's http status code.
newBatchCreateVariableResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchCreateVariableResponse
newBatchCreateVariableResponse pHttpStatus_ =
  BatchCreateVariableResponse'
    { errors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides the errors for the @BatchCreateVariable@ request.
batchCreateVariableResponse_errors :: Lens.Lens' BatchCreateVariableResponse (Prelude.Maybe [BatchCreateVariableError])
batchCreateVariableResponse_errors = Lens.lens (\BatchCreateVariableResponse' {errors} -> errors) (\s@BatchCreateVariableResponse' {} a -> s {errors = a} :: BatchCreateVariableResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchCreateVariableResponse_httpStatus :: Lens.Lens' BatchCreateVariableResponse Prelude.Int
batchCreateVariableResponse_httpStatus = Lens.lens (\BatchCreateVariableResponse' {httpStatus} -> httpStatus) (\s@BatchCreateVariableResponse' {} a -> s {httpStatus = a} :: BatchCreateVariableResponse)

instance Prelude.NFData BatchCreateVariableResponse
