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
-- Module      : Network.AWS.LookoutVision.DescribeModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a version of an Amazon Lookout for Vision model.
--
-- This operation requires permissions to perform the
-- @lookoutvision:DescribeModel@ operation.
module Network.AWS.LookoutVision.DescribeModel
  ( -- * Creating a Request
    DescribeModel (..),
    newDescribeModel,

    -- * Request Lenses
    describeModel_projectName,
    describeModel_modelVersion,

    -- * Destructuring the Response
    DescribeModelResponse (..),
    newDescribeModelResponse,

    -- * Response Lenses
    describeModelResponse_modelDescription,
    describeModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutVision.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeModel' smart constructor.
data DescribeModel = DescribeModel'
  { -- | The project that contains the version of a model that you want to
    -- describe.
    projectName :: Prelude.Text,
    -- | The version of the model that you want to describe.
    modelVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectName', 'describeModel_projectName' - The project that contains the version of a model that you want to
-- describe.
--
-- 'modelVersion', 'describeModel_modelVersion' - The version of the model that you want to describe.
newDescribeModel ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'modelVersion'
  Prelude.Text ->
  DescribeModel
newDescribeModel pProjectName_ pModelVersion_ =
  DescribeModel'
    { projectName = pProjectName_,
      modelVersion = pModelVersion_
    }

-- | The project that contains the version of a model that you want to
-- describe.
describeModel_projectName :: Lens.Lens' DescribeModel Prelude.Text
describeModel_projectName = Lens.lens (\DescribeModel' {projectName} -> projectName) (\s@DescribeModel' {} a -> s {projectName = a} :: DescribeModel)

-- | The version of the model that you want to describe.
describeModel_modelVersion :: Lens.Lens' DescribeModel Prelude.Text
describeModel_modelVersion = Lens.lens (\DescribeModel' {modelVersion} -> modelVersion) (\s@DescribeModel' {} a -> s {modelVersion = a} :: DescribeModel)

instance Core.AWSRequest DescribeModel where
  type
    AWSResponse DescribeModel =
      DescribeModelResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeModelResponse'
            Prelude.<$> (x Core..?> "ModelDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeModel

instance Prelude.NFData DescribeModel

instance Core.ToHeaders DescribeModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeModel where
  toPath DescribeModel' {..} =
    Prelude.mconcat
      [ "/2020-11-20/projects/",
        Core.toBS projectName,
        "/models/",
        Core.toBS modelVersion
      ]

instance Core.ToQuery DescribeModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeModelResponse' smart constructor.
data DescribeModelResponse = DescribeModelResponse'
  { -- | Contains the description of the model.
    modelDescription :: Prelude.Maybe ModelDescription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelDescription', 'describeModelResponse_modelDescription' - Contains the description of the model.
--
-- 'httpStatus', 'describeModelResponse_httpStatus' - The response's http status code.
newDescribeModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeModelResponse
newDescribeModelResponse pHttpStatus_ =
  DescribeModelResponse'
    { modelDescription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the description of the model.
describeModelResponse_modelDescription :: Lens.Lens' DescribeModelResponse (Prelude.Maybe ModelDescription)
describeModelResponse_modelDescription = Lens.lens (\DescribeModelResponse' {modelDescription} -> modelDescription) (\s@DescribeModelResponse' {} a -> s {modelDescription = a} :: DescribeModelResponse)

-- | The response's http status code.
describeModelResponse_httpStatus :: Lens.Lens' DescribeModelResponse Prelude.Int
describeModelResponse_httpStatus = Lens.lens (\DescribeModelResponse' {httpStatus} -> httpStatus) (\s@DescribeModelResponse' {} a -> s {httpStatus = a} :: DescribeModelResponse)

instance Prelude.NFData DescribeModelResponse
