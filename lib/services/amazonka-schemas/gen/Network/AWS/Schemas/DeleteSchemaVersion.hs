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
-- Module      : Network.AWS.Schemas.DeleteSchemaVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the schema version definition
module Network.AWS.Schemas.DeleteSchemaVersion
  ( -- * Creating a Request
    DeleteSchemaVersion (..),
    newDeleteSchemaVersion,

    -- * Request Lenses
    deleteSchemaVersion_schemaVersion,
    deleteSchemaVersion_registryName,
    deleteSchemaVersion_schemaName,

    -- * Destructuring the Response
    DeleteSchemaVersionResponse (..),
    newDeleteSchemaVersionResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newDeleteSchemaVersion' smart constructor.
data DeleteSchemaVersion = DeleteSchemaVersion'
  { -- | The version number of the schema
    schemaVersion :: Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSchemaVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'deleteSchemaVersion_schemaVersion' - The version number of the schema
--
-- 'registryName', 'deleteSchemaVersion_registryName' - The name of the registry.
--
-- 'schemaName', 'deleteSchemaVersion_schemaName' - The name of the schema.
newDeleteSchemaVersion ::
  -- | 'schemaVersion'
  Prelude.Text ->
  -- | 'registryName'
  Prelude.Text ->
  -- | 'schemaName'
  Prelude.Text ->
  DeleteSchemaVersion
newDeleteSchemaVersion
  pSchemaVersion_
  pRegistryName_
  pSchemaName_ =
    DeleteSchemaVersion'
      { schemaVersion =
          pSchemaVersion_,
        registryName = pRegistryName_,
        schemaName = pSchemaName_
      }

-- | The version number of the schema
deleteSchemaVersion_schemaVersion :: Lens.Lens' DeleteSchemaVersion Prelude.Text
deleteSchemaVersion_schemaVersion = Lens.lens (\DeleteSchemaVersion' {schemaVersion} -> schemaVersion) (\s@DeleteSchemaVersion' {} a -> s {schemaVersion = a} :: DeleteSchemaVersion)

-- | The name of the registry.
deleteSchemaVersion_registryName :: Lens.Lens' DeleteSchemaVersion Prelude.Text
deleteSchemaVersion_registryName = Lens.lens (\DeleteSchemaVersion' {registryName} -> registryName) (\s@DeleteSchemaVersion' {} a -> s {registryName = a} :: DeleteSchemaVersion)

-- | The name of the schema.
deleteSchemaVersion_schemaName :: Lens.Lens' DeleteSchemaVersion Prelude.Text
deleteSchemaVersion_schemaName = Lens.lens (\DeleteSchemaVersion' {schemaName} -> schemaName) (\s@DeleteSchemaVersion' {} a -> s {schemaName = a} :: DeleteSchemaVersion)

instance Core.AWSRequest DeleteSchemaVersion where
  type
    AWSResponse DeleteSchemaVersion =
      DeleteSchemaVersionResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteSchemaVersionResponse'

instance Prelude.Hashable DeleteSchemaVersion

instance Prelude.NFData DeleteSchemaVersion

instance Core.ToHeaders DeleteSchemaVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteSchemaVersion where
  toPath DeleteSchemaVersion' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas/name/",
        Core.toBS schemaName,
        "/version/",
        Core.toBS schemaVersion
      ]

instance Core.ToQuery DeleteSchemaVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSchemaVersionResponse' smart constructor.
data DeleteSchemaVersionResponse = DeleteSchemaVersionResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSchemaVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteSchemaVersionResponse ::
  DeleteSchemaVersionResponse
newDeleteSchemaVersionResponse =
  DeleteSchemaVersionResponse'

instance Prelude.NFData DeleteSchemaVersionResponse
