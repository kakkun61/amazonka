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
-- Module      : Network.AWS.MediaPackageVOD.DeletePackagingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a MediaPackage VOD PackagingConfiguration resource.
module Network.AWS.MediaPackageVOD.DeletePackagingConfiguration
  ( -- * Creating a Request
    DeletePackagingConfiguration (..),
    newDeletePackagingConfiguration,

    -- * Request Lenses
    deletePackagingConfiguration_id,

    -- * Destructuring the Response
    DeletePackagingConfigurationResponse (..),
    newDeletePackagingConfigurationResponse,

    -- * Response Lenses
    deletePackagingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackageVOD.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePackagingConfiguration' smart constructor.
data DeletePackagingConfiguration = DeletePackagingConfiguration'
  { -- | The ID of the MediaPackage VOD PackagingConfiguration resource to
    -- delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePackagingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deletePackagingConfiguration_id' - The ID of the MediaPackage VOD PackagingConfiguration resource to
-- delete.
newDeletePackagingConfiguration ::
  -- | 'id'
  Prelude.Text ->
  DeletePackagingConfiguration
newDeletePackagingConfiguration pId_ =
  DeletePackagingConfiguration' {id = pId_}

-- | The ID of the MediaPackage VOD PackagingConfiguration resource to
-- delete.
deletePackagingConfiguration_id :: Lens.Lens' DeletePackagingConfiguration Prelude.Text
deletePackagingConfiguration_id = Lens.lens (\DeletePackagingConfiguration' {id} -> id) (\s@DeletePackagingConfiguration' {} a -> s {id = a} :: DeletePackagingConfiguration)

instance Core.AWSRequest DeletePackagingConfiguration where
  type
    AWSResponse DeletePackagingConfiguration =
      DeletePackagingConfigurationResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePackagingConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeletePackagingConfiguration

instance Prelude.NFData DeletePackagingConfiguration

instance Core.ToHeaders DeletePackagingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeletePackagingConfiguration where
  toPath DeletePackagingConfiguration' {..} =
    Prelude.mconcat
      ["/packaging_configurations/", Core.toBS id]

instance Core.ToQuery DeletePackagingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePackagingConfigurationResponse' smart constructor.
data DeletePackagingConfigurationResponse = DeletePackagingConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePackagingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePackagingConfigurationResponse_httpStatus' - The response's http status code.
newDeletePackagingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePackagingConfigurationResponse
newDeletePackagingConfigurationResponse pHttpStatus_ =
  DeletePackagingConfigurationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deletePackagingConfigurationResponse_httpStatus :: Lens.Lens' DeletePackagingConfigurationResponse Prelude.Int
deletePackagingConfigurationResponse_httpStatus = Lens.lens (\DeletePackagingConfigurationResponse' {httpStatus} -> httpStatus) (\s@DeletePackagingConfigurationResponse' {} a -> s {httpStatus = a} :: DeletePackagingConfigurationResponse)

instance
  Prelude.NFData
    DeletePackagingConfigurationResponse
