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
-- Module      : Network.AWS.IoTSiteWise.PutLoggingOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets logging options for IoT SiteWise.
module Network.AWS.IoTSiteWise.PutLoggingOptions
  ( -- * Creating a Request
    PutLoggingOptions (..),
    newPutLoggingOptions,

    -- * Request Lenses
    putLoggingOptions_loggingOptions,

    -- * Destructuring the Response
    PutLoggingOptionsResponse (..),
    newPutLoggingOptionsResponse,

    -- * Response Lenses
    putLoggingOptionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutLoggingOptions' smart constructor.
data PutLoggingOptions = PutLoggingOptions'
  { -- | The logging options to set.
    loggingOptions :: LoggingOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutLoggingOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loggingOptions', 'putLoggingOptions_loggingOptions' - The logging options to set.
newPutLoggingOptions ::
  -- | 'loggingOptions'
  LoggingOptions ->
  PutLoggingOptions
newPutLoggingOptions pLoggingOptions_ =
  PutLoggingOptions'
    { loggingOptions =
        pLoggingOptions_
    }

-- | The logging options to set.
putLoggingOptions_loggingOptions :: Lens.Lens' PutLoggingOptions LoggingOptions
putLoggingOptions_loggingOptions = Lens.lens (\PutLoggingOptions' {loggingOptions} -> loggingOptions) (\s@PutLoggingOptions' {} a -> s {loggingOptions = a} :: PutLoggingOptions)

instance Core.AWSRequest PutLoggingOptions where
  type
    AWSResponse PutLoggingOptions =
      PutLoggingOptionsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutLoggingOptionsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutLoggingOptions

instance Prelude.NFData PutLoggingOptions

instance Core.ToHeaders PutLoggingOptions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutLoggingOptions where
  toJSON PutLoggingOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("loggingOptions" Core..= loggingOptions)
          ]
      )

instance Core.ToPath PutLoggingOptions where
  toPath = Prelude.const "/logging"

instance Core.ToQuery PutLoggingOptions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutLoggingOptionsResponse' smart constructor.
data PutLoggingOptionsResponse = PutLoggingOptionsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutLoggingOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putLoggingOptionsResponse_httpStatus' - The response's http status code.
newPutLoggingOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutLoggingOptionsResponse
newPutLoggingOptionsResponse pHttpStatus_ =
  PutLoggingOptionsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putLoggingOptionsResponse_httpStatus :: Lens.Lens' PutLoggingOptionsResponse Prelude.Int
putLoggingOptionsResponse_httpStatus = Lens.lens (\PutLoggingOptionsResponse' {httpStatus} -> httpStatus) (\s@PutLoggingOptionsResponse' {} a -> s {httpStatus = a} :: PutLoggingOptionsResponse)

instance Prelude.NFData PutLoggingOptionsResponse
