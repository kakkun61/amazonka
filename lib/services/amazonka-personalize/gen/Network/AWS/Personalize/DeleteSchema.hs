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
-- Module      : Network.AWS.Personalize.DeleteSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a schema. Before deleting a schema, you must delete all datasets
-- referencing the schema. For more information on schemas, see
-- CreateSchema.
module Network.AWS.Personalize.DeleteSchema
  ( -- * Creating a Request
    DeleteSchema (..),
    newDeleteSchema,

    -- * Request Lenses
    deleteSchema_schemaArn,

    -- * Destructuring the Response
    DeleteSchemaResponse (..),
    newDeleteSchemaResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteSchema' smart constructor.
data DeleteSchema = DeleteSchema'
  { -- | The Amazon Resource Name (ARN) of the schema to delete.
    schemaArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaArn', 'deleteSchema_schemaArn' - The Amazon Resource Name (ARN) of the schema to delete.
newDeleteSchema ::
  -- | 'schemaArn'
  Prelude.Text ->
  DeleteSchema
newDeleteSchema pSchemaArn_ =
  DeleteSchema' {schemaArn = pSchemaArn_}

-- | The Amazon Resource Name (ARN) of the schema to delete.
deleteSchema_schemaArn :: Lens.Lens' DeleteSchema Prelude.Text
deleteSchema_schemaArn = Lens.lens (\DeleteSchema' {schemaArn} -> schemaArn) (\s@DeleteSchema' {} a -> s {schemaArn = a} :: DeleteSchema)

instance Core.AWSRequest DeleteSchema where
  type AWSResponse DeleteSchema = DeleteSchemaResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull DeleteSchemaResponse'

instance Prelude.Hashable DeleteSchema

instance Prelude.NFData DeleteSchema

instance Core.ToHeaders DeleteSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.DeleteSchema" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteSchema where
  toJSON DeleteSchema' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("schemaArn" Core..= schemaArn)]
      )

instance Core.ToPath DeleteSchema where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSchema where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSchemaResponse' smart constructor.
data DeleteSchemaResponse = DeleteSchemaResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteSchemaResponse ::
  DeleteSchemaResponse
newDeleteSchemaResponse = DeleteSchemaResponse'

instance Prelude.NFData DeleteSchemaResponse
