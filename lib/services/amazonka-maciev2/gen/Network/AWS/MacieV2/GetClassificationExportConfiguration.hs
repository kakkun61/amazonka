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
-- Module      : Network.AWS.MacieV2.GetClassificationExportConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the configuration settings for storing data classification
-- results.
module Network.AWS.MacieV2.GetClassificationExportConfiguration
  ( -- * Creating a Request
    GetClassificationExportConfiguration (..),
    newGetClassificationExportConfiguration,

    -- * Destructuring the Response
    GetClassificationExportConfigurationResponse (..),
    newGetClassificationExportConfigurationResponse,

    -- * Response Lenses
    getClassificationExportConfigurationResponse_configuration,
    getClassificationExportConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetClassificationExportConfiguration' smart constructor.
data GetClassificationExportConfiguration = GetClassificationExportConfiguration'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetClassificationExportConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetClassificationExportConfiguration ::
  GetClassificationExportConfiguration
newGetClassificationExportConfiguration =
  GetClassificationExportConfiguration'

instance
  Core.AWSRequest
    GetClassificationExportConfiguration
  where
  type
    AWSResponse GetClassificationExportConfiguration =
      GetClassificationExportConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetClassificationExportConfigurationResponse'
            Prelude.<$> (x Core..?> "configuration")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetClassificationExportConfiguration

instance
  Prelude.NFData
    GetClassificationExportConfiguration

instance
  Core.ToHeaders
    GetClassificationExportConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToPath
    GetClassificationExportConfiguration
  where
  toPath =
    Prelude.const
      "/classification-export-configuration"

instance
  Core.ToQuery
    GetClassificationExportConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetClassificationExportConfigurationResponse' smart constructor.
data GetClassificationExportConfigurationResponse = GetClassificationExportConfigurationResponse'
  { -- | The location where data classification results are stored, and the
    -- encryption settings that are used when storing results in that location.
    configuration :: Prelude.Maybe ClassificationExportConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetClassificationExportConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configuration', 'getClassificationExportConfigurationResponse_configuration' - The location where data classification results are stored, and the
-- encryption settings that are used when storing results in that location.
--
-- 'httpStatus', 'getClassificationExportConfigurationResponse_httpStatus' - The response's http status code.
newGetClassificationExportConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetClassificationExportConfigurationResponse
newGetClassificationExportConfigurationResponse
  pHttpStatus_ =
    GetClassificationExportConfigurationResponse'
      { configuration =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The location where data classification results are stored, and the
-- encryption settings that are used when storing results in that location.
getClassificationExportConfigurationResponse_configuration :: Lens.Lens' GetClassificationExportConfigurationResponse (Prelude.Maybe ClassificationExportConfiguration)
getClassificationExportConfigurationResponse_configuration = Lens.lens (\GetClassificationExportConfigurationResponse' {configuration} -> configuration) (\s@GetClassificationExportConfigurationResponse' {} a -> s {configuration = a} :: GetClassificationExportConfigurationResponse)

-- | The response's http status code.
getClassificationExportConfigurationResponse_httpStatus :: Lens.Lens' GetClassificationExportConfigurationResponse Prelude.Int
getClassificationExportConfigurationResponse_httpStatus = Lens.lens (\GetClassificationExportConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetClassificationExportConfigurationResponse' {} a -> s {httpStatus = a} :: GetClassificationExportConfigurationResponse)

instance
  Prelude.NFData
    GetClassificationExportConfigurationResponse
