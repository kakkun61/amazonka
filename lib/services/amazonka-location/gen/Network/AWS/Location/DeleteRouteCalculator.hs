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
-- Module      : Network.AWS.Location.DeleteRouteCalculator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a route calculator resource from your AWS account.
--
-- This operation deletes the resource permanently.
module Network.AWS.Location.DeleteRouteCalculator
  ( -- * Creating a Request
    DeleteRouteCalculator (..),
    newDeleteRouteCalculator,

    -- * Request Lenses
    deleteRouteCalculator_calculatorName,

    -- * Destructuring the Response
    DeleteRouteCalculatorResponse (..),
    newDeleteRouteCalculatorResponse,

    -- * Response Lenses
    deleteRouteCalculatorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteRouteCalculator' smart constructor.
data DeleteRouteCalculator = DeleteRouteCalculator'
  { -- | The name of the route calculator resource to be deleted.
    calculatorName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRouteCalculator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'calculatorName', 'deleteRouteCalculator_calculatorName' - The name of the route calculator resource to be deleted.
newDeleteRouteCalculator ::
  -- | 'calculatorName'
  Prelude.Text ->
  DeleteRouteCalculator
newDeleteRouteCalculator pCalculatorName_ =
  DeleteRouteCalculator'
    { calculatorName =
        pCalculatorName_
    }

-- | The name of the route calculator resource to be deleted.
deleteRouteCalculator_calculatorName :: Lens.Lens' DeleteRouteCalculator Prelude.Text
deleteRouteCalculator_calculatorName = Lens.lens (\DeleteRouteCalculator' {calculatorName} -> calculatorName) (\s@DeleteRouteCalculator' {} a -> s {calculatorName = a} :: DeleteRouteCalculator)

instance Core.AWSRequest DeleteRouteCalculator where
  type
    AWSResponse DeleteRouteCalculator =
      DeleteRouteCalculatorResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteRouteCalculatorResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteRouteCalculator

instance Prelude.NFData DeleteRouteCalculator

instance Core.ToHeaders DeleteRouteCalculator where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteRouteCalculator where
  toPath DeleteRouteCalculator' {..} =
    Prelude.mconcat
      ["/routes/v0/calculators/", Core.toBS calculatorName]

instance Core.ToQuery DeleteRouteCalculator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteRouteCalculatorResponse' smart constructor.
data DeleteRouteCalculatorResponse = DeleteRouteCalculatorResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRouteCalculatorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteRouteCalculatorResponse_httpStatus' - The response's http status code.
newDeleteRouteCalculatorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteRouteCalculatorResponse
newDeleteRouteCalculatorResponse pHttpStatus_ =
  DeleteRouteCalculatorResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteRouteCalculatorResponse_httpStatus :: Lens.Lens' DeleteRouteCalculatorResponse Prelude.Int
deleteRouteCalculatorResponse_httpStatus = Lens.lens (\DeleteRouteCalculatorResponse' {httpStatus} -> httpStatus) (\s@DeleteRouteCalculatorResponse' {} a -> s {httpStatus = a} :: DeleteRouteCalculatorResponse)

instance Prelude.NFData DeleteRouteCalculatorResponse
