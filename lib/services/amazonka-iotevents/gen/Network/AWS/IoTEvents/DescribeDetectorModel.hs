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
-- Module      : Network.AWS.IoTEvents.DescribeDetectorModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a detector model. If the @version@ parameter is not specified,
-- information about the latest version is returned.
module Network.AWS.IoTEvents.DescribeDetectorModel
  ( -- * Creating a Request
    DescribeDetectorModel (..),
    newDescribeDetectorModel,

    -- * Request Lenses
    describeDetectorModel_detectorModelVersion,
    describeDetectorModel_detectorModelName,

    -- * Destructuring the Response
    DescribeDetectorModelResponse (..),
    newDescribeDetectorModelResponse,

    -- * Response Lenses
    describeDetectorModelResponse_detectorModel,
    describeDetectorModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDetectorModel' smart constructor.
data DescribeDetectorModel = DescribeDetectorModel'
  { -- | The version of the detector model.
    detectorModelVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the detector model.
    detectorModelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDetectorModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelVersion', 'describeDetectorModel_detectorModelVersion' - The version of the detector model.
--
-- 'detectorModelName', 'describeDetectorModel_detectorModelName' - The name of the detector model.
newDescribeDetectorModel ::
  -- | 'detectorModelName'
  Prelude.Text ->
  DescribeDetectorModel
newDescribeDetectorModel pDetectorModelName_ =
  DescribeDetectorModel'
    { detectorModelVersion =
        Prelude.Nothing,
      detectorModelName = pDetectorModelName_
    }

-- | The version of the detector model.
describeDetectorModel_detectorModelVersion :: Lens.Lens' DescribeDetectorModel (Prelude.Maybe Prelude.Text)
describeDetectorModel_detectorModelVersion = Lens.lens (\DescribeDetectorModel' {detectorModelVersion} -> detectorModelVersion) (\s@DescribeDetectorModel' {} a -> s {detectorModelVersion = a} :: DescribeDetectorModel)

-- | The name of the detector model.
describeDetectorModel_detectorModelName :: Lens.Lens' DescribeDetectorModel Prelude.Text
describeDetectorModel_detectorModelName = Lens.lens (\DescribeDetectorModel' {detectorModelName} -> detectorModelName) (\s@DescribeDetectorModel' {} a -> s {detectorModelName = a} :: DescribeDetectorModel)

instance Core.AWSRequest DescribeDetectorModel where
  type
    AWSResponse DescribeDetectorModel =
      DescribeDetectorModelResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDetectorModelResponse'
            Prelude.<$> (x Core..?> "detectorModel")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDetectorModel

instance Prelude.NFData DescribeDetectorModel

instance Core.ToHeaders DescribeDetectorModel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDetectorModel where
  toPath DescribeDetectorModel' {..} =
    Prelude.mconcat
      ["/detector-models/", Core.toBS detectorModelName]

instance Core.ToQuery DescribeDetectorModel where
  toQuery DescribeDetectorModel' {..} =
    Prelude.mconcat
      ["version" Core.=: detectorModelVersion]

-- | /See:/ 'newDescribeDetectorModelResponse' smart constructor.
data DescribeDetectorModelResponse = DescribeDetectorModelResponse'
  { -- | Information about the detector model.
    detectorModel :: Prelude.Maybe DetectorModel,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDetectorModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModel', 'describeDetectorModelResponse_detectorModel' - Information about the detector model.
--
-- 'httpStatus', 'describeDetectorModelResponse_httpStatus' - The response's http status code.
newDescribeDetectorModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDetectorModelResponse
newDescribeDetectorModelResponse pHttpStatus_ =
  DescribeDetectorModelResponse'
    { detectorModel =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the detector model.
describeDetectorModelResponse_detectorModel :: Lens.Lens' DescribeDetectorModelResponse (Prelude.Maybe DetectorModel)
describeDetectorModelResponse_detectorModel = Lens.lens (\DescribeDetectorModelResponse' {detectorModel} -> detectorModel) (\s@DescribeDetectorModelResponse' {} a -> s {detectorModel = a} :: DescribeDetectorModelResponse)

-- | The response's http status code.
describeDetectorModelResponse_httpStatus :: Lens.Lens' DescribeDetectorModelResponse Prelude.Int
describeDetectorModelResponse_httpStatus = Lens.lens (\DescribeDetectorModelResponse' {httpStatus} -> httpStatus) (\s@DescribeDetectorModelResponse' {} a -> s {httpStatus = a} :: DescribeDetectorModelResponse)

instance Prelude.NFData DescribeDetectorModelResponse
