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
-- Module      : Network.AWS.AppIntegrationS.UpdateDataIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description of a DataIntegration.
--
-- You cannot create a DataIntegration association for a DataIntegration
-- that has been previously associated. Use a different DataIntegration, or
-- recreate the DataIntegration using the
-- <https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html CreateDataIntegration>
-- API.
module Network.AWS.AppIntegrationS.UpdateDataIntegration
  ( -- * Creating a Request
    UpdateDataIntegration (..),
    newUpdateDataIntegration,

    -- * Request Lenses
    updateDataIntegration_name,
    updateDataIntegration_description,
    updateDataIntegration_identifier,

    -- * Destructuring the Response
    UpdateDataIntegrationResponse (..),
    newUpdateDataIntegrationResponse,

    -- * Response Lenses
    updateDataIntegrationResponse_httpStatus,
  )
where

import Network.AWS.AppIntegrationS.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDataIntegration' smart constructor.
data UpdateDataIntegration = UpdateDataIntegration'
  { -- | The name of the DataIntegration.
    name :: Prelude.Maybe Prelude.Text,
    -- | A description of the DataIntegration.
    description :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the DataIntegration.
    identifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataIntegration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateDataIntegration_name' - The name of the DataIntegration.
--
-- 'description', 'updateDataIntegration_description' - A description of the DataIntegration.
--
-- 'identifier', 'updateDataIntegration_identifier' - A unique identifier for the DataIntegration.
newUpdateDataIntegration ::
  -- | 'identifier'
  Prelude.Text ->
  UpdateDataIntegration
newUpdateDataIntegration pIdentifier_ =
  UpdateDataIntegration'
    { name = Prelude.Nothing,
      description = Prelude.Nothing,
      identifier = pIdentifier_
    }

-- | The name of the DataIntegration.
updateDataIntegration_name :: Lens.Lens' UpdateDataIntegration (Prelude.Maybe Prelude.Text)
updateDataIntegration_name = Lens.lens (\UpdateDataIntegration' {name} -> name) (\s@UpdateDataIntegration' {} a -> s {name = a} :: UpdateDataIntegration)

-- | A description of the DataIntegration.
updateDataIntegration_description :: Lens.Lens' UpdateDataIntegration (Prelude.Maybe Prelude.Text)
updateDataIntegration_description = Lens.lens (\UpdateDataIntegration' {description} -> description) (\s@UpdateDataIntegration' {} a -> s {description = a} :: UpdateDataIntegration)

-- | A unique identifier for the DataIntegration.
updateDataIntegration_identifier :: Lens.Lens' UpdateDataIntegration Prelude.Text
updateDataIntegration_identifier = Lens.lens (\UpdateDataIntegration' {identifier} -> identifier) (\s@UpdateDataIntegration' {} a -> s {identifier = a} :: UpdateDataIntegration)

instance Core.AWSRequest UpdateDataIntegration where
  type
    AWSResponse UpdateDataIntegration =
      UpdateDataIntegrationResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateDataIntegrationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDataIntegration

instance Prelude.NFData UpdateDataIntegration

instance Core.ToHeaders UpdateDataIntegration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDataIntegration where
  toJSON UpdateDataIntegration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateDataIntegration where
  toPath UpdateDataIntegration' {..} =
    Prelude.mconcat
      ["/dataIntegrations/", Core.toBS identifier]

instance Core.ToQuery UpdateDataIntegration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDataIntegrationResponse' smart constructor.
data UpdateDataIntegrationResponse = UpdateDataIntegrationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataIntegrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDataIntegrationResponse_httpStatus' - The response's http status code.
newUpdateDataIntegrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDataIntegrationResponse
newUpdateDataIntegrationResponse pHttpStatus_ =
  UpdateDataIntegrationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateDataIntegrationResponse_httpStatus :: Lens.Lens' UpdateDataIntegrationResponse Prelude.Int
updateDataIntegrationResponse_httpStatus = Lens.lens (\UpdateDataIntegrationResponse' {httpStatus} -> httpStatus) (\s@UpdateDataIntegrationResponse' {} a -> s {httpStatus = a} :: UpdateDataIntegrationResponse)

instance Prelude.NFData UpdateDataIntegrationResponse
