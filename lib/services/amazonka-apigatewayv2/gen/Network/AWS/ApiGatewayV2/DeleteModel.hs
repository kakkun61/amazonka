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
-- Module      : Network.AWS.ApiGatewayV2.DeleteModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Model.
module Network.AWS.ApiGatewayV2.DeleteModel
  ( -- * Creating a Request
    DeleteModel (..),
    newDeleteModel,

    -- * Request Lenses
    deleteModel_modelId,
    deleteModel_apiId,

    -- * Destructuring the Response
    DeleteModelResponse (..),
    newDeleteModelResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteModel' smart constructor.
data DeleteModel = DeleteModel'
  { -- | The model ID.
    modelId :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'deleteModel_modelId' - The model ID.
--
-- 'apiId', 'deleteModel_apiId' - The API identifier.
newDeleteModel ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  DeleteModel
newDeleteModel pModelId_ pApiId_ =
  DeleteModel' {modelId = pModelId_, apiId = pApiId_}

-- | The model ID.
deleteModel_modelId :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_modelId = Lens.lens (\DeleteModel' {modelId} -> modelId) (\s@DeleteModel' {} a -> s {modelId = a} :: DeleteModel)

-- | The API identifier.
deleteModel_apiId :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_apiId = Lens.lens (\DeleteModel' {apiId} -> apiId) (\s@DeleteModel' {} a -> s {apiId = a} :: DeleteModel)

instance Core.AWSRequest DeleteModel where
  type AWSResponse DeleteModel = DeleteModelResponse
  request = Request.delete defaultService
  response = Response.receiveNull DeleteModelResponse'

instance Prelude.Hashable DeleteModel

instance Prelude.NFData DeleteModel

instance Core.ToHeaders DeleteModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteModel where
  toPath DeleteModel' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/models/",
        Core.toBS modelId
      ]

instance Core.ToQuery DeleteModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteModelResponse' smart constructor.
data DeleteModelResponse = DeleteModelResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteModelResponse ::
  DeleteModelResponse
newDeleteModelResponse = DeleteModelResponse'

instance Prelude.NFData DeleteModelResponse
