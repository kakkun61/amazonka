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
-- Module      : Network.AWS.Chime.PutAppInstanceStreamingConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The data streaming configurations of an @AppInstance@.
module Network.AWS.Chime.PutAppInstanceStreamingConfigurations
  ( -- * Creating a Request
    PutAppInstanceStreamingConfigurations (..),
    newPutAppInstanceStreamingConfigurations,

    -- * Request Lenses
    putAppInstanceStreamingConfigurations_appInstanceArn,
    putAppInstanceStreamingConfigurations_appInstanceStreamingConfigurations,

    -- * Destructuring the Response
    PutAppInstanceStreamingConfigurationsResponse (..),
    newPutAppInstanceStreamingConfigurationsResponse,

    -- * Response Lenses
    putAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations,
    putAppInstanceStreamingConfigurationsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutAppInstanceStreamingConfigurations' smart constructor.
data PutAppInstanceStreamingConfigurations = PutAppInstanceStreamingConfigurations'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text,
    -- | The streaming configurations set for an @AppInstance@.
    appInstanceStreamingConfigurations :: Prelude.NonEmpty AppInstanceStreamingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutAppInstanceStreamingConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'putAppInstanceStreamingConfigurations_appInstanceArn' - The ARN of the @AppInstance@.
--
-- 'appInstanceStreamingConfigurations', 'putAppInstanceStreamingConfigurations_appInstanceStreamingConfigurations' - The streaming configurations set for an @AppInstance@.
newPutAppInstanceStreamingConfigurations ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  -- | 'appInstanceStreamingConfigurations'
  Prelude.NonEmpty AppInstanceStreamingConfiguration ->
  PutAppInstanceStreamingConfigurations
newPutAppInstanceStreamingConfigurations
  pAppInstanceArn_
  pAppInstanceStreamingConfigurations_ =
    PutAppInstanceStreamingConfigurations'
      { appInstanceArn =
          pAppInstanceArn_,
        appInstanceStreamingConfigurations =
          Lens.coerced
            Lens.# pAppInstanceStreamingConfigurations_
      }

-- | The ARN of the @AppInstance@.
putAppInstanceStreamingConfigurations_appInstanceArn :: Lens.Lens' PutAppInstanceStreamingConfigurations Prelude.Text
putAppInstanceStreamingConfigurations_appInstanceArn = Lens.lens (\PutAppInstanceStreamingConfigurations' {appInstanceArn} -> appInstanceArn) (\s@PutAppInstanceStreamingConfigurations' {} a -> s {appInstanceArn = a} :: PutAppInstanceStreamingConfigurations)

-- | The streaming configurations set for an @AppInstance@.
putAppInstanceStreamingConfigurations_appInstanceStreamingConfigurations :: Lens.Lens' PutAppInstanceStreamingConfigurations (Prelude.NonEmpty AppInstanceStreamingConfiguration)
putAppInstanceStreamingConfigurations_appInstanceStreamingConfigurations = Lens.lens (\PutAppInstanceStreamingConfigurations' {appInstanceStreamingConfigurations} -> appInstanceStreamingConfigurations) (\s@PutAppInstanceStreamingConfigurations' {} a -> s {appInstanceStreamingConfigurations = a} :: PutAppInstanceStreamingConfigurations) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    PutAppInstanceStreamingConfigurations
  where
  type
    AWSResponse
      PutAppInstanceStreamingConfigurations =
      PutAppInstanceStreamingConfigurationsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutAppInstanceStreamingConfigurationsResponse'
            Prelude.<$> (x Core..?> "AppInstanceStreamingConfigurations")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutAppInstanceStreamingConfigurations

instance
  Prelude.NFData
    PutAppInstanceStreamingConfigurations

instance
  Core.ToHeaders
    PutAppInstanceStreamingConfigurations
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    PutAppInstanceStreamingConfigurations
  where
  toJSON PutAppInstanceStreamingConfigurations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "AppInstanceStreamingConfigurations"
                  Core..= appInstanceStreamingConfigurations
              )
          ]
      )

instance
  Core.ToPath
    PutAppInstanceStreamingConfigurations
  where
  toPath PutAppInstanceStreamingConfigurations' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/streaming-configurations"
      ]

instance
  Core.ToQuery
    PutAppInstanceStreamingConfigurations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutAppInstanceStreamingConfigurationsResponse' smart constructor.
data PutAppInstanceStreamingConfigurationsResponse = PutAppInstanceStreamingConfigurationsResponse'
  { -- | The streaming configurations of an @AppInstance@.
    appInstanceStreamingConfigurations :: Prelude.Maybe (Prelude.NonEmpty AppInstanceStreamingConfiguration),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutAppInstanceStreamingConfigurationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceStreamingConfigurations', 'putAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations' - The streaming configurations of an @AppInstance@.
--
-- 'httpStatus', 'putAppInstanceStreamingConfigurationsResponse_httpStatus' - The response's http status code.
newPutAppInstanceStreamingConfigurationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutAppInstanceStreamingConfigurationsResponse
newPutAppInstanceStreamingConfigurationsResponse
  pHttpStatus_ =
    PutAppInstanceStreamingConfigurationsResponse'
      { appInstanceStreamingConfigurations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The streaming configurations of an @AppInstance@.
putAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations :: Lens.Lens' PutAppInstanceStreamingConfigurationsResponse (Prelude.Maybe (Prelude.NonEmpty AppInstanceStreamingConfiguration))
putAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations = Lens.lens (\PutAppInstanceStreamingConfigurationsResponse' {appInstanceStreamingConfigurations} -> appInstanceStreamingConfigurations) (\s@PutAppInstanceStreamingConfigurationsResponse' {} a -> s {appInstanceStreamingConfigurations = a} :: PutAppInstanceStreamingConfigurationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
putAppInstanceStreamingConfigurationsResponse_httpStatus :: Lens.Lens' PutAppInstanceStreamingConfigurationsResponse Prelude.Int
putAppInstanceStreamingConfigurationsResponse_httpStatus = Lens.lens (\PutAppInstanceStreamingConfigurationsResponse' {httpStatus} -> httpStatus) (\s@PutAppInstanceStreamingConfigurationsResponse' {} a -> s {httpStatus = a} :: PutAppInstanceStreamingConfigurationsResponse)

instance
  Prelude.NFData
    PutAppInstanceStreamingConfigurationsResponse
