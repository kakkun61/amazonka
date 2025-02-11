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
-- Module      : Network.AWS.IVS.GetRecordingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the recording configuration for the specified ARN.
module Network.AWS.IVS.GetRecordingConfiguration
  ( -- * Creating a Request
    GetRecordingConfiguration (..),
    newGetRecordingConfiguration,

    -- * Request Lenses
    getRecordingConfiguration_arn,

    -- * Destructuring the Response
    GetRecordingConfigurationResponse (..),
    newGetRecordingConfigurationResponse,

    -- * Response Lenses
    getRecordingConfigurationResponse_recordingConfiguration,
    getRecordingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRecordingConfiguration' smart constructor.
data GetRecordingConfiguration = GetRecordingConfiguration'
  { -- | ARN of the recording configuration to be retrieved.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecordingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getRecordingConfiguration_arn' - ARN of the recording configuration to be retrieved.
newGetRecordingConfiguration ::
  -- | 'arn'
  Prelude.Text ->
  GetRecordingConfiguration
newGetRecordingConfiguration pArn_ =
  GetRecordingConfiguration' {arn = pArn_}

-- | ARN of the recording configuration to be retrieved.
getRecordingConfiguration_arn :: Lens.Lens' GetRecordingConfiguration Prelude.Text
getRecordingConfiguration_arn = Lens.lens (\GetRecordingConfiguration' {arn} -> arn) (\s@GetRecordingConfiguration' {} a -> s {arn = a} :: GetRecordingConfiguration)

instance Core.AWSRequest GetRecordingConfiguration where
  type
    AWSResponse GetRecordingConfiguration =
      GetRecordingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecordingConfigurationResponse'
            Prelude.<$> (x Core..?> "recordingConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRecordingConfiguration

instance Prelude.NFData GetRecordingConfiguration

instance Core.ToHeaders GetRecordingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRecordingConfiguration where
  toJSON GetRecordingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath GetRecordingConfiguration where
  toPath = Prelude.const "/GetRecordingConfiguration"

instance Core.ToQuery GetRecordingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRecordingConfigurationResponse' smart constructor.
data GetRecordingConfigurationResponse = GetRecordingConfigurationResponse'
  { recordingConfiguration :: Prelude.Maybe RecordingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecordingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordingConfiguration', 'getRecordingConfigurationResponse_recordingConfiguration' -
--
-- 'httpStatus', 'getRecordingConfigurationResponse_httpStatus' - The response's http status code.
newGetRecordingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRecordingConfigurationResponse
newGetRecordingConfigurationResponse pHttpStatus_ =
  GetRecordingConfigurationResponse'
    { recordingConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
getRecordingConfigurationResponse_recordingConfiguration :: Lens.Lens' GetRecordingConfigurationResponse (Prelude.Maybe RecordingConfiguration)
getRecordingConfigurationResponse_recordingConfiguration = Lens.lens (\GetRecordingConfigurationResponse' {recordingConfiguration} -> recordingConfiguration) (\s@GetRecordingConfigurationResponse' {} a -> s {recordingConfiguration = a} :: GetRecordingConfigurationResponse)

-- | The response's http status code.
getRecordingConfigurationResponse_httpStatus :: Lens.Lens' GetRecordingConfigurationResponse Prelude.Int
getRecordingConfigurationResponse_httpStatus = Lens.lens (\GetRecordingConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetRecordingConfigurationResponse' {} a -> s {httpStatus = a} :: GetRecordingConfigurationResponse)

instance
  Prelude.NFData
    GetRecordingConfigurationResponse
