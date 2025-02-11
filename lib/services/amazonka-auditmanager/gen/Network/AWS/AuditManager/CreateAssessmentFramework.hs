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
-- Module      : Network.AWS.AuditManager.CreateAssessmentFramework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom framework in Audit Manager.
module Network.AWS.AuditManager.CreateAssessmentFramework
  ( -- * Creating a Request
    CreateAssessmentFramework (..),
    newCreateAssessmentFramework,

    -- * Request Lenses
    createAssessmentFramework_complianceType,
    createAssessmentFramework_description,
    createAssessmentFramework_tags,
    createAssessmentFramework_name,
    createAssessmentFramework_controlSets,

    -- * Destructuring the Response
    CreateAssessmentFrameworkResponse (..),
    newCreateAssessmentFrameworkResponse,

    -- * Response Lenses
    createAssessmentFrameworkResponse_framework,
    createAssessmentFrameworkResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAssessmentFramework' smart constructor.
data CreateAssessmentFramework = CreateAssessmentFramework'
  { -- | The compliance type that the new custom framework supports, such as CIS
    -- or HIPAA.
    complianceType :: Prelude.Maybe Prelude.Text,
    -- | An optional description for the new custom framework.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags associated with the framework.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the new custom framework.
    name :: Prelude.Text,
    -- | The control sets to be associated with the framework.
    controlSets :: Prelude.NonEmpty CreateAssessmentFrameworkControlSet
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAssessmentFramework' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'complianceType', 'createAssessmentFramework_complianceType' - The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
--
-- 'description', 'createAssessmentFramework_description' - An optional description for the new custom framework.
--
-- 'tags', 'createAssessmentFramework_tags' - The tags associated with the framework.
--
-- 'name', 'createAssessmentFramework_name' - The name of the new custom framework.
--
-- 'controlSets', 'createAssessmentFramework_controlSets' - The control sets to be associated with the framework.
newCreateAssessmentFramework ::
  -- | 'name'
  Prelude.Text ->
  -- | 'controlSets'
  Prelude.NonEmpty CreateAssessmentFrameworkControlSet ->
  CreateAssessmentFramework
newCreateAssessmentFramework pName_ pControlSets_ =
  CreateAssessmentFramework'
    { complianceType =
        Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      name = pName_,
      controlSets = Lens.coerced Lens.# pControlSets_
    }

-- | The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
createAssessmentFramework_complianceType :: Lens.Lens' CreateAssessmentFramework (Prelude.Maybe Prelude.Text)
createAssessmentFramework_complianceType = Lens.lens (\CreateAssessmentFramework' {complianceType} -> complianceType) (\s@CreateAssessmentFramework' {} a -> s {complianceType = a} :: CreateAssessmentFramework)

-- | An optional description for the new custom framework.
createAssessmentFramework_description :: Lens.Lens' CreateAssessmentFramework (Prelude.Maybe Prelude.Text)
createAssessmentFramework_description = Lens.lens (\CreateAssessmentFramework' {description} -> description) (\s@CreateAssessmentFramework' {} a -> s {description = a} :: CreateAssessmentFramework)

-- | The tags associated with the framework.
createAssessmentFramework_tags :: Lens.Lens' CreateAssessmentFramework (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAssessmentFramework_tags = Lens.lens (\CreateAssessmentFramework' {tags} -> tags) (\s@CreateAssessmentFramework' {} a -> s {tags = a} :: CreateAssessmentFramework) Prelude.. Lens.mapping Lens.coerced

-- | The name of the new custom framework.
createAssessmentFramework_name :: Lens.Lens' CreateAssessmentFramework Prelude.Text
createAssessmentFramework_name = Lens.lens (\CreateAssessmentFramework' {name} -> name) (\s@CreateAssessmentFramework' {} a -> s {name = a} :: CreateAssessmentFramework)

-- | The control sets to be associated with the framework.
createAssessmentFramework_controlSets :: Lens.Lens' CreateAssessmentFramework (Prelude.NonEmpty CreateAssessmentFrameworkControlSet)
createAssessmentFramework_controlSets = Lens.lens (\CreateAssessmentFramework' {controlSets} -> controlSets) (\s@CreateAssessmentFramework' {} a -> s {controlSets = a} :: CreateAssessmentFramework) Prelude.. Lens.coerced

instance Core.AWSRequest CreateAssessmentFramework where
  type
    AWSResponse CreateAssessmentFramework =
      CreateAssessmentFrameworkResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAssessmentFrameworkResponse'
            Prelude.<$> (x Core..?> "framework")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAssessmentFramework

instance Prelude.NFData CreateAssessmentFramework

instance Core.ToHeaders CreateAssessmentFramework where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAssessmentFramework where
  toJSON CreateAssessmentFramework' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("complianceType" Core..=)
              Prelude.<$> complianceType,
            ("description" Core..=) Prelude.<$> description,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("controlSets" Core..= controlSets)
          ]
      )

instance Core.ToPath CreateAssessmentFramework where
  toPath = Prelude.const "/assessmentFrameworks"

instance Core.ToQuery CreateAssessmentFramework where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAssessmentFrameworkResponse' smart constructor.
data CreateAssessmentFrameworkResponse = CreateAssessmentFrameworkResponse'
  { -- | The name of the new framework returned by the
    -- @CreateAssessmentFramework@ API.
    framework :: Prelude.Maybe Framework,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAssessmentFrameworkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'framework', 'createAssessmentFrameworkResponse_framework' - The name of the new framework returned by the
-- @CreateAssessmentFramework@ API.
--
-- 'httpStatus', 'createAssessmentFrameworkResponse_httpStatus' - The response's http status code.
newCreateAssessmentFrameworkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAssessmentFrameworkResponse
newCreateAssessmentFrameworkResponse pHttpStatus_ =
  CreateAssessmentFrameworkResponse'
    { framework =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the new framework returned by the
-- @CreateAssessmentFramework@ API.
createAssessmentFrameworkResponse_framework :: Lens.Lens' CreateAssessmentFrameworkResponse (Prelude.Maybe Framework)
createAssessmentFrameworkResponse_framework = Lens.lens (\CreateAssessmentFrameworkResponse' {framework} -> framework) (\s@CreateAssessmentFrameworkResponse' {} a -> s {framework = a} :: CreateAssessmentFrameworkResponse)

-- | The response's http status code.
createAssessmentFrameworkResponse_httpStatus :: Lens.Lens' CreateAssessmentFrameworkResponse Prelude.Int
createAssessmentFrameworkResponse_httpStatus = Lens.lens (\CreateAssessmentFrameworkResponse' {httpStatus} -> httpStatus) (\s@CreateAssessmentFrameworkResponse' {} a -> s {httpStatus = a} :: CreateAssessmentFrameworkResponse)

instance
  Prelude.NFData
    CreateAssessmentFrameworkResponse
