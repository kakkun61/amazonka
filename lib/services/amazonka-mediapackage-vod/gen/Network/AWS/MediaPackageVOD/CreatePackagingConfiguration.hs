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
-- Module      : Network.AWS.MediaPackageVOD.CreatePackagingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new MediaPackage VOD PackagingConfiguration resource.
module Network.AWS.MediaPackageVOD.CreatePackagingConfiguration
  ( -- * Creating a Request
    CreatePackagingConfiguration (..),
    newCreatePackagingConfiguration,

    -- * Request Lenses
    createPackagingConfiguration_hlsPackage,
    createPackagingConfiguration_dashPackage,
    createPackagingConfiguration_mssPackage,
    createPackagingConfiguration_cmafPackage,
    createPackagingConfiguration_tags,
    createPackagingConfiguration_id,
    createPackagingConfiguration_packagingGroupId,

    -- * Destructuring the Response
    CreatePackagingConfigurationResponse (..),
    newCreatePackagingConfigurationResponse,

    -- * Response Lenses
    createPackagingConfigurationResponse_hlsPackage,
    createPackagingConfigurationResponse_arn,
    createPackagingConfigurationResponse_packagingGroupId,
    createPackagingConfigurationResponse_dashPackage,
    createPackagingConfigurationResponse_mssPackage,
    createPackagingConfigurationResponse_id,
    createPackagingConfigurationResponse_cmafPackage,
    createPackagingConfigurationResponse_tags,
    createPackagingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackageVOD.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A new MediaPackage VOD PackagingConfiguration resource configuration.
--
-- /See:/ 'newCreatePackagingConfiguration' smart constructor.
data CreatePackagingConfiguration = CreatePackagingConfiguration'
  { hlsPackage :: Prelude.Maybe HlsPackage,
    dashPackage :: Prelude.Maybe DashPackage,
    mssPackage :: Prelude.Maybe MssPackage,
    cmafPackage :: Prelude.Maybe CmafPackage,
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ID of the PackagingConfiguration.
    id :: Prelude.Text,
    -- | The ID of a PackagingGroup.
    packagingGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePackagingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hlsPackage', 'createPackagingConfiguration_hlsPackage' - Undocumented member.
--
-- 'dashPackage', 'createPackagingConfiguration_dashPackage' - Undocumented member.
--
-- 'mssPackage', 'createPackagingConfiguration_mssPackage' - Undocumented member.
--
-- 'cmafPackage', 'createPackagingConfiguration_cmafPackage' - Undocumented member.
--
-- 'tags', 'createPackagingConfiguration_tags' - Undocumented member.
--
-- 'id', 'createPackagingConfiguration_id' - The ID of the PackagingConfiguration.
--
-- 'packagingGroupId', 'createPackagingConfiguration_packagingGroupId' - The ID of a PackagingGroup.
newCreatePackagingConfiguration ::
  -- | 'id'
  Prelude.Text ->
  -- | 'packagingGroupId'
  Prelude.Text ->
  CreatePackagingConfiguration
newCreatePackagingConfiguration
  pId_
  pPackagingGroupId_ =
    CreatePackagingConfiguration'
      { hlsPackage =
          Prelude.Nothing,
        dashPackage = Prelude.Nothing,
        mssPackage = Prelude.Nothing,
        cmafPackage = Prelude.Nothing,
        tags = Prelude.Nothing,
        id = pId_,
        packagingGroupId = pPackagingGroupId_
      }

-- | Undocumented member.
createPackagingConfiguration_hlsPackage :: Lens.Lens' CreatePackagingConfiguration (Prelude.Maybe HlsPackage)
createPackagingConfiguration_hlsPackage = Lens.lens (\CreatePackagingConfiguration' {hlsPackage} -> hlsPackage) (\s@CreatePackagingConfiguration' {} a -> s {hlsPackage = a} :: CreatePackagingConfiguration)

-- | Undocumented member.
createPackagingConfiguration_dashPackage :: Lens.Lens' CreatePackagingConfiguration (Prelude.Maybe DashPackage)
createPackagingConfiguration_dashPackage = Lens.lens (\CreatePackagingConfiguration' {dashPackage} -> dashPackage) (\s@CreatePackagingConfiguration' {} a -> s {dashPackage = a} :: CreatePackagingConfiguration)

-- | Undocumented member.
createPackagingConfiguration_mssPackage :: Lens.Lens' CreatePackagingConfiguration (Prelude.Maybe MssPackage)
createPackagingConfiguration_mssPackage = Lens.lens (\CreatePackagingConfiguration' {mssPackage} -> mssPackage) (\s@CreatePackagingConfiguration' {} a -> s {mssPackage = a} :: CreatePackagingConfiguration)

-- | Undocumented member.
createPackagingConfiguration_cmafPackage :: Lens.Lens' CreatePackagingConfiguration (Prelude.Maybe CmafPackage)
createPackagingConfiguration_cmafPackage = Lens.lens (\CreatePackagingConfiguration' {cmafPackage} -> cmafPackage) (\s@CreatePackagingConfiguration' {} a -> s {cmafPackage = a} :: CreatePackagingConfiguration)

-- | Undocumented member.
createPackagingConfiguration_tags :: Lens.Lens' CreatePackagingConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createPackagingConfiguration_tags = Lens.lens (\CreatePackagingConfiguration' {tags} -> tags) (\s@CreatePackagingConfiguration' {} a -> s {tags = a} :: CreatePackagingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the PackagingConfiguration.
createPackagingConfiguration_id :: Lens.Lens' CreatePackagingConfiguration Prelude.Text
createPackagingConfiguration_id = Lens.lens (\CreatePackagingConfiguration' {id} -> id) (\s@CreatePackagingConfiguration' {} a -> s {id = a} :: CreatePackagingConfiguration)

-- | The ID of a PackagingGroup.
createPackagingConfiguration_packagingGroupId :: Lens.Lens' CreatePackagingConfiguration Prelude.Text
createPackagingConfiguration_packagingGroupId = Lens.lens (\CreatePackagingConfiguration' {packagingGroupId} -> packagingGroupId) (\s@CreatePackagingConfiguration' {} a -> s {packagingGroupId = a} :: CreatePackagingConfiguration)

instance Core.AWSRequest CreatePackagingConfiguration where
  type
    AWSResponse CreatePackagingConfiguration =
      CreatePackagingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePackagingConfigurationResponse'
            Prelude.<$> (x Core..?> "hlsPackage")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "packagingGroupId")
            Prelude.<*> (x Core..?> "dashPackage")
            Prelude.<*> (x Core..?> "mssPackage")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "cmafPackage")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreatePackagingConfiguration

instance Prelude.NFData CreatePackagingConfiguration

instance Core.ToHeaders CreatePackagingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePackagingConfiguration where
  toJSON CreatePackagingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("hlsPackage" Core..=) Prelude.<$> hlsPackage,
            ("dashPackage" Core..=) Prelude.<$> dashPackage,
            ("mssPackage" Core..=) Prelude.<$> mssPackage,
            ("cmafPackage" Core..=) Prelude.<$> cmafPackage,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("id" Core..= id),
            Prelude.Just
              ("packagingGroupId" Core..= packagingGroupId)
          ]
      )

instance Core.ToPath CreatePackagingConfiguration where
  toPath = Prelude.const "/packaging_configurations"

instance Core.ToQuery CreatePackagingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreatePackagingConfigurationResponse' smart constructor.
data CreatePackagingConfigurationResponse = CreatePackagingConfigurationResponse'
  { hlsPackage :: Prelude.Maybe HlsPackage,
    -- | The ARN of the PackagingConfiguration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of a PackagingGroup.
    packagingGroupId :: Prelude.Maybe Prelude.Text,
    dashPackage :: Prelude.Maybe DashPackage,
    mssPackage :: Prelude.Maybe MssPackage,
    -- | The ID of the PackagingConfiguration.
    id :: Prelude.Maybe Prelude.Text,
    cmafPackage :: Prelude.Maybe CmafPackage,
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePackagingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hlsPackage', 'createPackagingConfigurationResponse_hlsPackage' - Undocumented member.
--
-- 'arn', 'createPackagingConfigurationResponse_arn' - The ARN of the PackagingConfiguration.
--
-- 'packagingGroupId', 'createPackagingConfigurationResponse_packagingGroupId' - The ID of a PackagingGroup.
--
-- 'dashPackage', 'createPackagingConfigurationResponse_dashPackage' - Undocumented member.
--
-- 'mssPackage', 'createPackagingConfigurationResponse_mssPackage' - Undocumented member.
--
-- 'id', 'createPackagingConfigurationResponse_id' - The ID of the PackagingConfiguration.
--
-- 'cmafPackage', 'createPackagingConfigurationResponse_cmafPackage' - Undocumented member.
--
-- 'tags', 'createPackagingConfigurationResponse_tags' - Undocumented member.
--
-- 'httpStatus', 'createPackagingConfigurationResponse_httpStatus' - The response's http status code.
newCreatePackagingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreatePackagingConfigurationResponse
newCreatePackagingConfigurationResponse pHttpStatus_ =
  CreatePackagingConfigurationResponse'
    { hlsPackage =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      packagingGroupId = Prelude.Nothing,
      dashPackage = Prelude.Nothing,
      mssPackage = Prelude.Nothing,
      id = Prelude.Nothing,
      cmafPackage = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createPackagingConfigurationResponse_hlsPackage :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe HlsPackage)
createPackagingConfigurationResponse_hlsPackage = Lens.lens (\CreatePackagingConfigurationResponse' {hlsPackage} -> hlsPackage) (\s@CreatePackagingConfigurationResponse' {} a -> s {hlsPackage = a} :: CreatePackagingConfigurationResponse)

-- | The ARN of the PackagingConfiguration.
createPackagingConfigurationResponse_arn :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe Prelude.Text)
createPackagingConfigurationResponse_arn = Lens.lens (\CreatePackagingConfigurationResponse' {arn} -> arn) (\s@CreatePackagingConfigurationResponse' {} a -> s {arn = a} :: CreatePackagingConfigurationResponse)

-- | The ID of a PackagingGroup.
createPackagingConfigurationResponse_packagingGroupId :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe Prelude.Text)
createPackagingConfigurationResponse_packagingGroupId = Lens.lens (\CreatePackagingConfigurationResponse' {packagingGroupId} -> packagingGroupId) (\s@CreatePackagingConfigurationResponse' {} a -> s {packagingGroupId = a} :: CreatePackagingConfigurationResponse)

-- | Undocumented member.
createPackagingConfigurationResponse_dashPackage :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe DashPackage)
createPackagingConfigurationResponse_dashPackage = Lens.lens (\CreatePackagingConfigurationResponse' {dashPackage} -> dashPackage) (\s@CreatePackagingConfigurationResponse' {} a -> s {dashPackage = a} :: CreatePackagingConfigurationResponse)

-- | Undocumented member.
createPackagingConfigurationResponse_mssPackage :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe MssPackage)
createPackagingConfigurationResponse_mssPackage = Lens.lens (\CreatePackagingConfigurationResponse' {mssPackage} -> mssPackage) (\s@CreatePackagingConfigurationResponse' {} a -> s {mssPackage = a} :: CreatePackagingConfigurationResponse)

-- | The ID of the PackagingConfiguration.
createPackagingConfigurationResponse_id :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe Prelude.Text)
createPackagingConfigurationResponse_id = Lens.lens (\CreatePackagingConfigurationResponse' {id} -> id) (\s@CreatePackagingConfigurationResponse' {} a -> s {id = a} :: CreatePackagingConfigurationResponse)

-- | Undocumented member.
createPackagingConfigurationResponse_cmafPackage :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe CmafPackage)
createPackagingConfigurationResponse_cmafPackage = Lens.lens (\CreatePackagingConfigurationResponse' {cmafPackage} -> cmafPackage) (\s@CreatePackagingConfigurationResponse' {} a -> s {cmafPackage = a} :: CreatePackagingConfigurationResponse)

-- | Undocumented member.
createPackagingConfigurationResponse_tags :: Lens.Lens' CreatePackagingConfigurationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createPackagingConfigurationResponse_tags = Lens.lens (\CreatePackagingConfigurationResponse' {tags} -> tags) (\s@CreatePackagingConfigurationResponse' {} a -> s {tags = a} :: CreatePackagingConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createPackagingConfigurationResponse_httpStatus :: Lens.Lens' CreatePackagingConfigurationResponse Prelude.Int
createPackagingConfigurationResponse_httpStatus = Lens.lens (\CreatePackagingConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreatePackagingConfigurationResponse' {} a -> s {httpStatus = a} :: CreatePackagingConfigurationResponse)

instance
  Prelude.NFData
    CreatePackagingConfigurationResponse
