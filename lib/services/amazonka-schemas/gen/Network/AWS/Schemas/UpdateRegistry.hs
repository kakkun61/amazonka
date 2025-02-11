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
-- Module      : Network.AWS.Schemas.UpdateRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a registry.
module Network.AWS.Schemas.UpdateRegistry
  ( -- * Creating a Request
    UpdateRegistry (..),
    newUpdateRegistry,

    -- * Request Lenses
    updateRegistry_description,
    updateRegistry_registryName,

    -- * Destructuring the Response
    UpdateRegistryResponse (..),
    newUpdateRegistryResponse,

    -- * Response Lenses
    updateRegistryResponse_registryName,
    updateRegistryResponse_registryArn,
    updateRegistryResponse_description,
    updateRegistryResponse_tags,
    updateRegistryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | Updates the registry.
--
-- /See:/ 'newUpdateRegistry' smart constructor.
data UpdateRegistry = UpdateRegistry'
  { -- | The description of the registry to update.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRegistry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateRegistry_description' - The description of the registry to update.
--
-- 'registryName', 'updateRegistry_registryName' - The name of the registry.
newUpdateRegistry ::
  -- | 'registryName'
  Prelude.Text ->
  UpdateRegistry
newUpdateRegistry pRegistryName_ =
  UpdateRegistry'
    { description = Prelude.Nothing,
      registryName = pRegistryName_
    }

-- | The description of the registry to update.
updateRegistry_description :: Lens.Lens' UpdateRegistry (Prelude.Maybe Prelude.Text)
updateRegistry_description = Lens.lens (\UpdateRegistry' {description} -> description) (\s@UpdateRegistry' {} a -> s {description = a} :: UpdateRegistry)

-- | The name of the registry.
updateRegistry_registryName :: Lens.Lens' UpdateRegistry Prelude.Text
updateRegistry_registryName = Lens.lens (\UpdateRegistry' {registryName} -> registryName) (\s@UpdateRegistry' {} a -> s {registryName = a} :: UpdateRegistry)

instance Core.AWSRequest UpdateRegistry where
  type
    AWSResponse UpdateRegistry =
      UpdateRegistryResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRegistryResponse'
            Prelude.<$> (x Core..?> "RegistryName")
            Prelude.<*> (x Core..?> "RegistryArn")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateRegistry

instance Prelude.NFData UpdateRegistry

instance Core.ToHeaders UpdateRegistry where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateRegistry where
  toJSON UpdateRegistry' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Description" Core..=) Prelude.<$> description]
      )

instance Core.ToPath UpdateRegistry where
  toPath UpdateRegistry' {..} =
    Prelude.mconcat
      ["/v1/registries/name/", Core.toBS registryName]

instance Core.ToQuery UpdateRegistry where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRegistryResponse' smart constructor.
data UpdateRegistryResponse = UpdateRegistryResponse'
  { -- | The name of the registry.
    registryName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the registry.
    registryArn :: Prelude.Maybe Prelude.Text,
    -- | The description of the registry.
    description :: Prelude.Maybe Prelude.Text,
    -- | Tags associated with the registry.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRegistryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryName', 'updateRegistryResponse_registryName' - The name of the registry.
--
-- 'registryArn', 'updateRegistryResponse_registryArn' - The ARN of the registry.
--
-- 'description', 'updateRegistryResponse_description' - The description of the registry.
--
-- 'tags', 'updateRegistryResponse_tags' - Tags associated with the registry.
--
-- 'httpStatus', 'updateRegistryResponse_httpStatus' - The response's http status code.
newUpdateRegistryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRegistryResponse
newUpdateRegistryResponse pHttpStatus_ =
  UpdateRegistryResponse'
    { registryName =
        Prelude.Nothing,
      registryArn = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the registry.
updateRegistryResponse_registryName :: Lens.Lens' UpdateRegistryResponse (Prelude.Maybe Prelude.Text)
updateRegistryResponse_registryName = Lens.lens (\UpdateRegistryResponse' {registryName} -> registryName) (\s@UpdateRegistryResponse' {} a -> s {registryName = a} :: UpdateRegistryResponse)

-- | The ARN of the registry.
updateRegistryResponse_registryArn :: Lens.Lens' UpdateRegistryResponse (Prelude.Maybe Prelude.Text)
updateRegistryResponse_registryArn = Lens.lens (\UpdateRegistryResponse' {registryArn} -> registryArn) (\s@UpdateRegistryResponse' {} a -> s {registryArn = a} :: UpdateRegistryResponse)

-- | The description of the registry.
updateRegistryResponse_description :: Lens.Lens' UpdateRegistryResponse (Prelude.Maybe Prelude.Text)
updateRegistryResponse_description = Lens.lens (\UpdateRegistryResponse' {description} -> description) (\s@UpdateRegistryResponse' {} a -> s {description = a} :: UpdateRegistryResponse)

-- | Tags associated with the registry.
updateRegistryResponse_tags :: Lens.Lens' UpdateRegistryResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateRegistryResponse_tags = Lens.lens (\UpdateRegistryResponse' {tags} -> tags) (\s@UpdateRegistryResponse' {} a -> s {tags = a} :: UpdateRegistryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
updateRegistryResponse_httpStatus :: Lens.Lens' UpdateRegistryResponse Prelude.Int
updateRegistryResponse_httpStatus = Lens.lens (\UpdateRegistryResponse' {httpStatus} -> httpStatus) (\s@UpdateRegistryResponse' {} a -> s {httpStatus = a} :: UpdateRegistryResponse)

instance Prelude.NFData UpdateRegistryResponse
