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
-- Module      : Network.AWS.CodeGuruReviewer.CreateCodeReview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use to create a code review with a
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html CodeReviewType>
-- of @RepositoryAnalysis@. This type of code review analyzes all code
-- under a specified branch in an associated repository. @PullRequest@ code
-- reviews are automatically triggered by a pull request.
module Network.AWS.CodeGuruReviewer.CreateCodeReview
  ( -- * Creating a Request
    CreateCodeReview (..),
    newCreateCodeReview,

    -- * Request Lenses
    createCodeReview_clientRequestToken,
    createCodeReview_name,
    createCodeReview_repositoryAssociationArn,
    createCodeReview_type,

    -- * Destructuring the Response
    CreateCodeReviewResponse (..),
    newCreateCodeReviewResponse,

    -- * Response Lenses
    createCodeReviewResponse_codeReview,
    createCodeReviewResponse_httpStatus,
  )
where

import Network.AWS.CodeGuruReviewer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateCodeReview' smart constructor.
data CreateCodeReview = CreateCodeReview'
  { -- | Amazon CodeGuru Reviewer uses this value to prevent the accidental
    -- creation of duplicate code reviews if there are failures and retries.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the code review. The name of each code review in your Amazon
    -- Web Services account must be unique.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the
    -- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html RepositoryAssociation>
    -- object. You can retrieve this ARN by calling
    -- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html ListRepositoryAssociations>
    -- .
    --
    -- A code review can only be created on an associated repository. This is
    -- the ARN of the associated repository.
    repositoryAssociationArn :: Prelude.Text,
    -- | The type of code review to create. This is specified using a
    -- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html CodeReviewType>
    -- object. You can create a code review only of type @RepositoryAnalysis@.
    type' :: CodeReviewType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCodeReview' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'createCodeReview_clientRequestToken' - Amazon CodeGuru Reviewer uses this value to prevent the accidental
-- creation of duplicate code reviews if there are failures and retries.
--
-- 'name', 'createCodeReview_name' - The name of the code review. The name of each code review in your Amazon
-- Web Services account must be unique.
--
-- 'repositoryAssociationArn', 'createCodeReview_repositoryAssociationArn' - The Amazon Resource Name (ARN) of the
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html RepositoryAssociation>
-- object. You can retrieve this ARN by calling
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html ListRepositoryAssociations>
-- .
--
-- A code review can only be created on an associated repository. This is
-- the ARN of the associated repository.
--
-- 'type'', 'createCodeReview_type' - The type of code review to create. This is specified using a
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html CodeReviewType>
-- object. You can create a code review only of type @RepositoryAnalysis@.
newCreateCodeReview ::
  -- | 'name'
  Prelude.Text ->
  -- | 'repositoryAssociationArn'
  Prelude.Text ->
  -- | 'type''
  CodeReviewType ->
  CreateCodeReview
newCreateCodeReview
  pName_
  pRepositoryAssociationArn_
  pType_ =
    CreateCodeReview'
      { clientRequestToken =
          Prelude.Nothing,
        name = pName_,
        repositoryAssociationArn =
          pRepositoryAssociationArn_,
        type' = pType_
      }

-- | Amazon CodeGuru Reviewer uses this value to prevent the accidental
-- creation of duplicate code reviews if there are failures and retries.
createCodeReview_clientRequestToken :: Lens.Lens' CreateCodeReview (Prelude.Maybe Prelude.Text)
createCodeReview_clientRequestToken = Lens.lens (\CreateCodeReview' {clientRequestToken} -> clientRequestToken) (\s@CreateCodeReview' {} a -> s {clientRequestToken = a} :: CreateCodeReview)

-- | The name of the code review. The name of each code review in your Amazon
-- Web Services account must be unique.
createCodeReview_name :: Lens.Lens' CreateCodeReview Prelude.Text
createCodeReview_name = Lens.lens (\CreateCodeReview' {name} -> name) (\s@CreateCodeReview' {} a -> s {name = a} :: CreateCodeReview)

-- | The Amazon Resource Name (ARN) of the
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html RepositoryAssociation>
-- object. You can retrieve this ARN by calling
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html ListRepositoryAssociations>
-- .
--
-- A code review can only be created on an associated repository. This is
-- the ARN of the associated repository.
createCodeReview_repositoryAssociationArn :: Lens.Lens' CreateCodeReview Prelude.Text
createCodeReview_repositoryAssociationArn = Lens.lens (\CreateCodeReview' {repositoryAssociationArn} -> repositoryAssociationArn) (\s@CreateCodeReview' {} a -> s {repositoryAssociationArn = a} :: CreateCodeReview)

-- | The type of code review to create. This is specified using a
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html CodeReviewType>
-- object. You can create a code review only of type @RepositoryAnalysis@.
createCodeReview_type :: Lens.Lens' CreateCodeReview CodeReviewType
createCodeReview_type = Lens.lens (\CreateCodeReview' {type'} -> type') (\s@CreateCodeReview' {} a -> s {type' = a} :: CreateCodeReview)

instance Core.AWSRequest CreateCodeReview where
  type
    AWSResponse CreateCodeReview =
      CreateCodeReviewResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCodeReviewResponse'
            Prelude.<$> (x Core..?> "CodeReview")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCodeReview

instance Prelude.NFData CreateCodeReview

instance Core.ToHeaders CreateCodeReview where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCodeReview where
  toJSON CreateCodeReview' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ( "RepositoryAssociationArn"
                  Core..= repositoryAssociationArn
              ),
            Prelude.Just ("Type" Core..= type')
          ]
      )

instance Core.ToPath CreateCodeReview where
  toPath = Prelude.const "/codereviews"

instance Core.ToQuery CreateCodeReview where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCodeReviewResponse' smart constructor.
data CreateCodeReviewResponse = CreateCodeReviewResponse'
  { codeReview :: Prelude.Maybe CodeReview,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCodeReviewResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codeReview', 'createCodeReviewResponse_codeReview' - Undocumented member.
--
-- 'httpStatus', 'createCodeReviewResponse_httpStatus' - The response's http status code.
newCreateCodeReviewResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCodeReviewResponse
newCreateCodeReviewResponse pHttpStatus_ =
  CreateCodeReviewResponse'
    { codeReview =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createCodeReviewResponse_codeReview :: Lens.Lens' CreateCodeReviewResponse (Prelude.Maybe CodeReview)
createCodeReviewResponse_codeReview = Lens.lens (\CreateCodeReviewResponse' {codeReview} -> codeReview) (\s@CreateCodeReviewResponse' {} a -> s {codeReview = a} :: CreateCodeReviewResponse)

-- | The response's http status code.
createCodeReviewResponse_httpStatus :: Lens.Lens' CreateCodeReviewResponse Prelude.Int
createCodeReviewResponse_httpStatus = Lens.lens (\CreateCodeReviewResponse' {httpStatus} -> httpStatus) (\s@CreateCodeReviewResponse' {} a -> s {httpStatus = a} :: CreateCodeReviewResponse)

instance Prelude.NFData CreateCodeReviewResponse
