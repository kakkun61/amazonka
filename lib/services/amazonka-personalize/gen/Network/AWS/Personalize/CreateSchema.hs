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
-- Module      : Network.AWS.Personalize.CreateSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Personalize schema from the specified schema string.
-- The schema you create must be in Avro JSON format.
--
-- Amazon Personalize recognizes three schema variants. Each schema is
-- associated with a dataset type and has a set of required field and
-- keywords. You specify a schema when you call CreateDataset.
--
-- __Related APIs__
--
-- -   ListSchemas
--
-- -   DescribeSchema
--
-- -   DeleteSchema
module Network.AWS.Personalize.CreateSchema
  ( -- * Creating a Request
    CreateSchema (..),
    newCreateSchema,

    -- * Request Lenses
    createSchema_name,
    createSchema_schema,

    -- * Destructuring the Response
    CreateSchemaResponse (..),
    newCreateSchemaResponse,

    -- * Response Lenses
    createSchemaResponse_schemaArn,
    createSchemaResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateSchema' smart constructor.
data CreateSchema = CreateSchema'
  { -- | The name for the schema.
    name :: Prelude.Text,
    -- | A schema in Avro JSON format.
    schema :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createSchema_name' - The name for the schema.
--
-- 'schema', 'createSchema_schema' - A schema in Avro JSON format.
newCreateSchema ::
  -- | 'name'
  Prelude.Text ->
  -- | 'schema'
  Prelude.Text ->
  CreateSchema
newCreateSchema pName_ pSchema_ =
  CreateSchema' {name = pName_, schema = pSchema_}

-- | The name for the schema.
createSchema_name :: Lens.Lens' CreateSchema Prelude.Text
createSchema_name = Lens.lens (\CreateSchema' {name} -> name) (\s@CreateSchema' {} a -> s {name = a} :: CreateSchema)

-- | A schema in Avro JSON format.
createSchema_schema :: Lens.Lens' CreateSchema Prelude.Text
createSchema_schema = Lens.lens (\CreateSchema' {schema} -> schema) (\s@CreateSchema' {} a -> s {schema = a} :: CreateSchema)

instance Core.AWSRequest CreateSchema where
  type AWSResponse CreateSchema = CreateSchemaResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSchemaResponse'
            Prelude.<$> (x Core..?> "schemaArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSchema

instance Prelude.NFData CreateSchema

instance Core.ToHeaders CreateSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.CreateSchema" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSchema where
  toJSON CreateSchema' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just ("schema" Core..= schema)
          ]
      )

instance Core.ToPath CreateSchema where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateSchema where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSchemaResponse' smart constructor.
data CreateSchemaResponse = CreateSchemaResponse'
  { -- | The Amazon Resource Name (ARN) of the created schema.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaArn', 'createSchemaResponse_schemaArn' - The Amazon Resource Name (ARN) of the created schema.
--
-- 'httpStatus', 'createSchemaResponse_httpStatus' - The response's http status code.
newCreateSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSchemaResponse
newCreateSchemaResponse pHttpStatus_ =
  CreateSchemaResponse'
    { schemaArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the created schema.
createSchemaResponse_schemaArn :: Lens.Lens' CreateSchemaResponse (Prelude.Maybe Prelude.Text)
createSchemaResponse_schemaArn = Lens.lens (\CreateSchemaResponse' {schemaArn} -> schemaArn) (\s@CreateSchemaResponse' {} a -> s {schemaArn = a} :: CreateSchemaResponse)

-- | The response's http status code.
createSchemaResponse_httpStatus :: Lens.Lens' CreateSchemaResponse Prelude.Int
createSchemaResponse_httpStatus = Lens.lens (\CreateSchemaResponse' {httpStatus} -> httpStatus) (\s@CreateSchemaResponse' {} a -> s {httpStatus = a} :: CreateSchemaResponse)

instance Prelude.NFData CreateSchemaResponse
