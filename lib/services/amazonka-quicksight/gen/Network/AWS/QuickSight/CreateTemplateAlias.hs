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
-- Module      : Network.AWS.QuickSight.CreateTemplateAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a template alias for a template.
module Network.AWS.QuickSight.CreateTemplateAlias
  ( -- * Creating a Request
    CreateTemplateAlias (..),
    newCreateTemplateAlias,

    -- * Request Lenses
    createTemplateAlias_awsAccountId,
    createTemplateAlias_templateId,
    createTemplateAlias_aliasName,
    createTemplateAlias_templateVersionNumber,

    -- * Destructuring the Response
    CreateTemplateAliasResponse (..),
    newCreateTemplateAliasResponse,

    -- * Response Lenses
    createTemplateAliasResponse_requestId,
    createTemplateAliasResponse_templateAlias,
    createTemplateAliasResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateTemplateAlias' smart constructor.
data CreateTemplateAlias = CreateTemplateAlias'
  { -- | The ID of the Amazon Web Services account that contains the template
    -- that you creating an alias for.
    awsAccountId :: Prelude.Text,
    -- | An ID for the template.
    templateId :: Prelude.Text,
    -- | The name that you want to give to the template alias that you\'re
    -- creating. Don\'t start the alias name with the @$@ character. Alias
    -- names that start with @$@ are reserved by Amazon QuickSight.
    aliasName :: Prelude.Text,
    -- | The version number of the template.
    templateVersionNumber :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTemplateAlias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'createTemplateAlias_awsAccountId' - The ID of the Amazon Web Services account that contains the template
-- that you creating an alias for.
--
-- 'templateId', 'createTemplateAlias_templateId' - An ID for the template.
--
-- 'aliasName', 'createTemplateAlias_aliasName' - The name that you want to give to the template alias that you\'re
-- creating. Don\'t start the alias name with the @$@ character. Alias
-- names that start with @$@ are reserved by Amazon QuickSight.
--
-- 'templateVersionNumber', 'createTemplateAlias_templateVersionNumber' - The version number of the template.
newCreateTemplateAlias ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'templateId'
  Prelude.Text ->
  -- | 'aliasName'
  Prelude.Text ->
  -- | 'templateVersionNumber'
  Prelude.Natural ->
  CreateTemplateAlias
newCreateTemplateAlias
  pAwsAccountId_
  pTemplateId_
  pAliasName_
  pTemplateVersionNumber_ =
    CreateTemplateAlias'
      { awsAccountId = pAwsAccountId_,
        templateId = pTemplateId_,
        aliasName = pAliasName_,
        templateVersionNumber = pTemplateVersionNumber_
      }

-- | The ID of the Amazon Web Services account that contains the template
-- that you creating an alias for.
createTemplateAlias_awsAccountId :: Lens.Lens' CreateTemplateAlias Prelude.Text
createTemplateAlias_awsAccountId = Lens.lens (\CreateTemplateAlias' {awsAccountId} -> awsAccountId) (\s@CreateTemplateAlias' {} a -> s {awsAccountId = a} :: CreateTemplateAlias)

-- | An ID for the template.
createTemplateAlias_templateId :: Lens.Lens' CreateTemplateAlias Prelude.Text
createTemplateAlias_templateId = Lens.lens (\CreateTemplateAlias' {templateId} -> templateId) (\s@CreateTemplateAlias' {} a -> s {templateId = a} :: CreateTemplateAlias)

-- | The name that you want to give to the template alias that you\'re
-- creating. Don\'t start the alias name with the @$@ character. Alias
-- names that start with @$@ are reserved by Amazon QuickSight.
createTemplateAlias_aliasName :: Lens.Lens' CreateTemplateAlias Prelude.Text
createTemplateAlias_aliasName = Lens.lens (\CreateTemplateAlias' {aliasName} -> aliasName) (\s@CreateTemplateAlias' {} a -> s {aliasName = a} :: CreateTemplateAlias)

-- | The version number of the template.
createTemplateAlias_templateVersionNumber :: Lens.Lens' CreateTemplateAlias Prelude.Natural
createTemplateAlias_templateVersionNumber = Lens.lens (\CreateTemplateAlias' {templateVersionNumber} -> templateVersionNumber) (\s@CreateTemplateAlias' {} a -> s {templateVersionNumber = a} :: CreateTemplateAlias)

instance Core.AWSRequest CreateTemplateAlias where
  type
    AWSResponse CreateTemplateAlias =
      CreateTemplateAliasResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTemplateAliasResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "TemplateAlias")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateTemplateAlias

instance Prelude.NFData CreateTemplateAlias

instance Core.ToHeaders CreateTemplateAlias where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateTemplateAlias where
  toJSON CreateTemplateAlias' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "TemplateVersionNumber"
                  Core..= templateVersionNumber
              )
          ]
      )

instance Core.ToPath CreateTemplateAlias where
  toPath CreateTemplateAlias' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/templates/",
        Core.toBS templateId,
        "/aliases/",
        Core.toBS aliasName
      ]

instance Core.ToQuery CreateTemplateAlias where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTemplateAliasResponse' smart constructor.
data CreateTemplateAliasResponse = CreateTemplateAliasResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Information about the template alias.
    templateAlias :: Prelude.Maybe TemplateAlias,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTemplateAliasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'createTemplateAliasResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'templateAlias', 'createTemplateAliasResponse_templateAlias' - Information about the template alias.
--
-- 'status', 'createTemplateAliasResponse_status' - The HTTP status of the request.
newCreateTemplateAliasResponse ::
  -- | 'status'
  Prelude.Int ->
  CreateTemplateAliasResponse
newCreateTemplateAliasResponse pStatus_ =
  CreateTemplateAliasResponse'
    { requestId =
        Prelude.Nothing,
      templateAlias = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
createTemplateAliasResponse_requestId :: Lens.Lens' CreateTemplateAliasResponse (Prelude.Maybe Prelude.Text)
createTemplateAliasResponse_requestId = Lens.lens (\CreateTemplateAliasResponse' {requestId} -> requestId) (\s@CreateTemplateAliasResponse' {} a -> s {requestId = a} :: CreateTemplateAliasResponse)

-- | Information about the template alias.
createTemplateAliasResponse_templateAlias :: Lens.Lens' CreateTemplateAliasResponse (Prelude.Maybe TemplateAlias)
createTemplateAliasResponse_templateAlias = Lens.lens (\CreateTemplateAliasResponse' {templateAlias} -> templateAlias) (\s@CreateTemplateAliasResponse' {} a -> s {templateAlias = a} :: CreateTemplateAliasResponse)

-- | The HTTP status of the request.
createTemplateAliasResponse_status :: Lens.Lens' CreateTemplateAliasResponse Prelude.Int
createTemplateAliasResponse_status = Lens.lens (\CreateTemplateAliasResponse' {status} -> status) (\s@CreateTemplateAliasResponse' {} a -> s {status = a} :: CreateTemplateAliasResponse)

instance Prelude.NFData CreateTemplateAliasResponse
