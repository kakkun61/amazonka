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
-- Module      : Network.AWS.Schemas.DescribeSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the schema definition.
module Network.AWS.Schemas.DescribeSchema
  ( -- * Creating a Request
    DescribeSchema (..),
    newDescribeSchema,

    -- * Request Lenses
    describeSchema_schemaVersion,
    describeSchema_registryName,
    describeSchema_schemaName,

    -- * Destructuring the Response
    DescribeSchemaResponse (..),
    newDescribeSchemaResponse,

    -- * Response Lenses
    describeSchemaResponse_schemaVersion,
    describeSchemaResponse_schemaName,
    describeSchemaResponse_content,
    describeSchemaResponse_schemaArn,
    describeSchemaResponse_type,
    describeSchemaResponse_lastModified,
    describeSchemaResponse_description,
    describeSchemaResponse_versionCreatedDate,
    describeSchemaResponse_tags,
    describeSchemaResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newDescribeSchema' smart constructor.
data DescribeSchema = DescribeSchema'
  { -- | Specifying this limits the results to only this schema version.
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the registry.
    registryName :: Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'describeSchema_schemaVersion' - Specifying this limits the results to only this schema version.
--
-- 'registryName', 'describeSchema_registryName' - The name of the registry.
--
-- 'schemaName', 'describeSchema_schemaName' - The name of the schema.
newDescribeSchema ::
  -- | 'registryName'
  Prelude.Text ->
  -- | 'schemaName'
  Prelude.Text ->
  DescribeSchema
newDescribeSchema pRegistryName_ pSchemaName_ =
  DescribeSchema'
    { schemaVersion = Prelude.Nothing,
      registryName = pRegistryName_,
      schemaName = pSchemaName_
    }

-- | Specifying this limits the results to only this schema version.
describeSchema_schemaVersion :: Lens.Lens' DescribeSchema (Prelude.Maybe Prelude.Text)
describeSchema_schemaVersion = Lens.lens (\DescribeSchema' {schemaVersion} -> schemaVersion) (\s@DescribeSchema' {} a -> s {schemaVersion = a} :: DescribeSchema)

-- | The name of the registry.
describeSchema_registryName :: Lens.Lens' DescribeSchema Prelude.Text
describeSchema_registryName = Lens.lens (\DescribeSchema' {registryName} -> registryName) (\s@DescribeSchema' {} a -> s {registryName = a} :: DescribeSchema)

-- | The name of the schema.
describeSchema_schemaName :: Lens.Lens' DescribeSchema Prelude.Text
describeSchema_schemaName = Lens.lens (\DescribeSchema' {schemaName} -> schemaName) (\s@DescribeSchema' {} a -> s {schemaName = a} :: DescribeSchema)

instance Core.AWSRequest DescribeSchema where
  type
    AWSResponse DescribeSchema =
      DescribeSchemaResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSchemaResponse'
            Prelude.<$> (x Core..?> "SchemaVersion")
            Prelude.<*> (x Core..?> "SchemaName")
            Prelude.<*> (x Core..?> "Content")
            Prelude.<*> (x Core..?> "SchemaArn")
            Prelude.<*> (x Core..?> "Type")
            Prelude.<*> (x Core..?> "LastModified")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "VersionCreatedDate")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSchema

instance Prelude.NFData DescribeSchema

instance Core.ToHeaders DescribeSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeSchema where
  toPath DescribeSchema' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas/name/",
        Core.toBS schemaName
      ]

instance Core.ToQuery DescribeSchema where
  toQuery DescribeSchema' {..} =
    Prelude.mconcat
      ["schemaVersion" Core.=: schemaVersion]

-- | /See:/ 'newDescribeSchemaResponse' smart constructor.
data DescribeSchemaResponse = DescribeSchemaResponse'
  { -- | The version number of the schema
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Maybe Prelude.Text,
    -- | The source of the schema definition.
    content :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the schema.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The type of the schema.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The date and time that schema was modified.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | The description of the schema.
    description :: Prelude.Maybe Prelude.Text,
    -- | The date the schema version was created.
    versionCreatedDate :: Prelude.Maybe Core.POSIX,
    -- | Tags associated with the resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'describeSchemaResponse_schemaVersion' - The version number of the schema
--
-- 'schemaName', 'describeSchemaResponse_schemaName' - The name of the schema.
--
-- 'content', 'describeSchemaResponse_content' - The source of the schema definition.
--
-- 'schemaArn', 'describeSchemaResponse_schemaArn' - The ARN of the schema.
--
-- 'type'', 'describeSchemaResponse_type' - The type of the schema.
--
-- 'lastModified', 'describeSchemaResponse_lastModified' - The date and time that schema was modified.
--
-- 'description', 'describeSchemaResponse_description' - The description of the schema.
--
-- 'versionCreatedDate', 'describeSchemaResponse_versionCreatedDate' - The date the schema version was created.
--
-- 'tags', 'describeSchemaResponse_tags' - Tags associated with the resource.
--
-- 'httpStatus', 'describeSchemaResponse_httpStatus' - The response's http status code.
newDescribeSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSchemaResponse
newDescribeSchemaResponse pHttpStatus_ =
  DescribeSchemaResponse'
    { schemaVersion =
        Prelude.Nothing,
      schemaName = Prelude.Nothing,
      content = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      type' = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      description = Prelude.Nothing,
      versionCreatedDate = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The version number of the schema
describeSchemaResponse_schemaVersion :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_schemaVersion = Lens.lens (\DescribeSchemaResponse' {schemaVersion} -> schemaVersion) (\s@DescribeSchemaResponse' {} a -> s {schemaVersion = a} :: DescribeSchemaResponse)

-- | The name of the schema.
describeSchemaResponse_schemaName :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_schemaName = Lens.lens (\DescribeSchemaResponse' {schemaName} -> schemaName) (\s@DescribeSchemaResponse' {} a -> s {schemaName = a} :: DescribeSchemaResponse)

-- | The source of the schema definition.
describeSchemaResponse_content :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_content = Lens.lens (\DescribeSchemaResponse' {content} -> content) (\s@DescribeSchemaResponse' {} a -> s {content = a} :: DescribeSchemaResponse)

-- | The ARN of the schema.
describeSchemaResponse_schemaArn :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_schemaArn = Lens.lens (\DescribeSchemaResponse' {schemaArn} -> schemaArn) (\s@DescribeSchemaResponse' {} a -> s {schemaArn = a} :: DescribeSchemaResponse)

-- | The type of the schema.
describeSchemaResponse_type :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_type = Lens.lens (\DescribeSchemaResponse' {type'} -> type') (\s@DescribeSchemaResponse' {} a -> s {type' = a} :: DescribeSchemaResponse)

-- | The date and time that schema was modified.
describeSchemaResponse_lastModified :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.UTCTime)
describeSchemaResponse_lastModified = Lens.lens (\DescribeSchemaResponse' {lastModified} -> lastModified) (\s@DescribeSchemaResponse' {} a -> s {lastModified = a} :: DescribeSchemaResponse) Prelude.. Lens.mapping Core._Time

-- | The description of the schema.
describeSchemaResponse_description :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.Text)
describeSchemaResponse_description = Lens.lens (\DescribeSchemaResponse' {description} -> description) (\s@DescribeSchemaResponse' {} a -> s {description = a} :: DescribeSchemaResponse)

-- | The date the schema version was created.
describeSchemaResponse_versionCreatedDate :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe Prelude.UTCTime)
describeSchemaResponse_versionCreatedDate = Lens.lens (\DescribeSchemaResponse' {versionCreatedDate} -> versionCreatedDate) (\s@DescribeSchemaResponse' {} a -> s {versionCreatedDate = a} :: DescribeSchemaResponse) Prelude.. Lens.mapping Core._Time

-- | Tags associated with the resource.
describeSchemaResponse_tags :: Lens.Lens' DescribeSchemaResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeSchemaResponse_tags = Lens.lens (\DescribeSchemaResponse' {tags} -> tags) (\s@DescribeSchemaResponse' {} a -> s {tags = a} :: DescribeSchemaResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeSchemaResponse_httpStatus :: Lens.Lens' DescribeSchemaResponse Prelude.Int
describeSchemaResponse_httpStatus = Lens.lens (\DescribeSchemaResponse' {httpStatus} -> httpStatus) (\s@DescribeSchemaResponse' {} a -> s {httpStatus = a} :: DescribeSchemaResponse)

instance Prelude.NFData DescribeSchemaResponse
