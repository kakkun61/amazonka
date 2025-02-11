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
-- Module      : Network.AWS.IoTEvents.DeleteInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an input.
module Network.AWS.IoTEvents.DeleteInput
  ( -- * Creating a Request
    DeleteInput (..),
    newDeleteInput,

    -- * Request Lenses
    deleteInput_inputName,

    -- * Destructuring the Response
    DeleteInputResponse (..),
    newDeleteInputResponse,

    -- * Response Lenses
    deleteInputResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteInput' smart constructor.
data DeleteInput = DeleteInput'
  { -- | The name of the input to delete.
    inputName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputName', 'deleteInput_inputName' - The name of the input to delete.
newDeleteInput ::
  -- | 'inputName'
  Prelude.Text ->
  DeleteInput
newDeleteInput pInputName_ =
  DeleteInput' {inputName = pInputName_}

-- | The name of the input to delete.
deleteInput_inputName :: Lens.Lens' DeleteInput Prelude.Text
deleteInput_inputName = Lens.lens (\DeleteInput' {inputName} -> inputName) (\s@DeleteInput' {} a -> s {inputName = a} :: DeleteInput)

instance Core.AWSRequest DeleteInput where
  type AWSResponse DeleteInput = DeleteInputResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteInputResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteInput

instance Prelude.NFData DeleteInput

instance Core.ToHeaders DeleteInput where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteInput where
  toPath DeleteInput' {..} =
    Prelude.mconcat ["/inputs/", Core.toBS inputName]

instance Core.ToQuery DeleteInput where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteInputResponse' smart constructor.
data DeleteInputResponse = DeleteInputResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteInputResponse_httpStatus' - The response's http status code.
newDeleteInputResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInputResponse
newDeleteInputResponse pHttpStatus_ =
  DeleteInputResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteInputResponse_httpStatus :: Lens.Lens' DeleteInputResponse Prelude.Int
deleteInputResponse_httpStatus = Lens.lens (\DeleteInputResponse' {httpStatus} -> httpStatus) (\s@DeleteInputResponse' {} a -> s {httpStatus = a} :: DeleteInputResponse)

instance Prelude.NFData DeleteInputResponse
