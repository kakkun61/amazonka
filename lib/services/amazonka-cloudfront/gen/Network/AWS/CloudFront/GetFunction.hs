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
-- Module      : Network.AWS.CloudFront.GetFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the code of a CloudFront function. To get configuration information
-- and metadata about a function, use @DescribeFunction@.
--
-- To get a function’s code, you must provide the function’s name and
-- stage. To get these values, you can use @ListFunctions@.
module Network.AWS.CloudFront.GetFunction
  ( -- * Creating a Request
    GetFunction (..),
    newGetFunction,

    -- * Request Lenses
    getFunction_stage,
    getFunction_name,

    -- * Destructuring the Response
    GetFunctionResponse (..),
    newGetFunctionResponse,

    -- * Response Lenses
    getFunctionResponse_eTag,
    getFunctionResponse_functionCode,
    getFunctionResponse_contentType,
    getFunctionResponse_httpStatus,
  )
where

import Network.AWS.CloudFront.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetFunction' smart constructor.
data GetFunction = GetFunction'
  { -- | The function’s stage, either @DEVELOPMENT@ or @LIVE@.
    stage :: Prelude.Maybe FunctionStage,
    -- | The name of the function whose code you are getting.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFunction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stage', 'getFunction_stage' - The function’s stage, either @DEVELOPMENT@ or @LIVE@.
--
-- 'name', 'getFunction_name' - The name of the function whose code you are getting.
newGetFunction ::
  -- | 'name'
  Prelude.Text ->
  GetFunction
newGetFunction pName_ =
  GetFunction'
    { stage = Prelude.Nothing,
      name = pName_
    }

-- | The function’s stage, either @DEVELOPMENT@ or @LIVE@.
getFunction_stage :: Lens.Lens' GetFunction (Prelude.Maybe FunctionStage)
getFunction_stage = Lens.lens (\GetFunction' {stage} -> stage) (\s@GetFunction' {} a -> s {stage = a} :: GetFunction)

-- | The name of the function whose code you are getting.
getFunction_name :: Lens.Lens' GetFunction Prelude.Text
getFunction_name = Lens.lens (\GetFunction' {name} -> name) (\s@GetFunction' {} a -> s {name = a} :: GetFunction)

instance Core.AWSRequest GetFunction where
  type AWSResponse GetFunction = GetFunctionResponse
  request = Request.get defaultService
  response =
    Response.receiveBytes
      ( \s h x ->
          GetFunctionResponse'
            Prelude.<$> (h Core..#? "ETag")
            Prelude.<*> (Prelude.pure (Prelude.Just (Prelude.coerce x)))
            Prelude.<*> (h Core..#? "Content-Type")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetFunction

instance Prelude.NFData GetFunction

instance Core.ToHeaders GetFunction where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetFunction where
  toPath GetFunction' {..} =
    Prelude.mconcat
      ["/2020-05-31/function/", Core.toBS name]

instance Core.ToQuery GetFunction where
  toQuery GetFunction' {..} =
    Prelude.mconcat ["Stage" Core.=: stage]

-- | /See:/ 'newGetFunctionResponse' smart constructor.
data GetFunctionResponse = GetFunctionResponse'
  { -- | The version identifier for the current version of the CloudFront
    -- function.
    eTag :: Prelude.Maybe Prelude.Text,
    -- | The function code of a CloudFront function.
    functionCode :: Prelude.Maybe (Core.Sensitive Prelude.ByteString),
    -- | The content type (media type) of the response.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFunctionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eTag', 'getFunctionResponse_eTag' - The version identifier for the current version of the CloudFront
-- function.
--
-- 'functionCode', 'getFunctionResponse_functionCode' - The function code of a CloudFront function.
--
-- 'contentType', 'getFunctionResponse_contentType' - The content type (media type) of the response.
--
-- 'httpStatus', 'getFunctionResponse_httpStatus' - The response's http status code.
newGetFunctionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFunctionResponse
newGetFunctionResponse pHttpStatus_ =
  GetFunctionResponse'
    { eTag = Prelude.Nothing,
      functionCode = Prelude.Nothing,
      contentType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The version identifier for the current version of the CloudFront
-- function.
getFunctionResponse_eTag :: Lens.Lens' GetFunctionResponse (Prelude.Maybe Prelude.Text)
getFunctionResponse_eTag = Lens.lens (\GetFunctionResponse' {eTag} -> eTag) (\s@GetFunctionResponse' {} a -> s {eTag = a} :: GetFunctionResponse)

-- | The function code of a CloudFront function.
getFunctionResponse_functionCode :: Lens.Lens' GetFunctionResponse (Prelude.Maybe Prelude.ByteString)
getFunctionResponse_functionCode = Lens.lens (\GetFunctionResponse' {functionCode} -> functionCode) (\s@GetFunctionResponse' {} a -> s {functionCode = a} :: GetFunctionResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The content type (media type) of the response.
getFunctionResponse_contentType :: Lens.Lens' GetFunctionResponse (Prelude.Maybe Prelude.Text)
getFunctionResponse_contentType = Lens.lens (\GetFunctionResponse' {contentType} -> contentType) (\s@GetFunctionResponse' {} a -> s {contentType = a} :: GetFunctionResponse)

-- | The response's http status code.
getFunctionResponse_httpStatus :: Lens.Lens' GetFunctionResponse Prelude.Int
getFunctionResponse_httpStatus = Lens.lens (\GetFunctionResponse' {httpStatus} -> httpStatus) (\s@GetFunctionResponse' {} a -> s {httpStatus = a} :: GetFunctionResponse)

instance Prelude.NFData GetFunctionResponse
