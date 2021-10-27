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
-- Module      : Network.AWS.AppConfig.GetEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve information about an environment. An environment is a logical
-- deployment group of AppConfig applications, such as applications in a
-- @Production@ environment or in an @EU_Region@ environment. Each
-- configuration deployment targets an environment. You can enable one or
-- more Amazon CloudWatch alarms for an environment. If an alarm is
-- triggered during a deployment, AppConfig roles back the configuration.
module Network.AWS.AppConfig.GetEnvironment
  ( -- * Creating a Request
    GetEnvironment (..),
    newGetEnvironment,

    -- * Request Lenses
    getEnvironment_applicationId,
    getEnvironment_environmentId,

    -- * Destructuring the Response
    Environment (..),
    newEnvironment,

    -- * Response Lenses
    environment_state,
    environment_monitors,
    environment_applicationId,
    environment_name,
    environment_id,
    environment_description,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEnvironment' smart constructor.
data GetEnvironment = GetEnvironment'
  { -- | The ID of the application that includes the environment you want to get.
    applicationId :: Prelude.Text,
    -- | The ID of the environment you wnat to get.
    environmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'getEnvironment_applicationId' - The ID of the application that includes the environment you want to get.
--
-- 'environmentId', 'getEnvironment_environmentId' - The ID of the environment you wnat to get.
newGetEnvironment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  GetEnvironment
newGetEnvironment pApplicationId_ pEnvironmentId_ =
  GetEnvironment'
    { applicationId = pApplicationId_,
      environmentId = pEnvironmentId_
    }

-- | The ID of the application that includes the environment you want to get.
getEnvironment_applicationId :: Lens.Lens' GetEnvironment Prelude.Text
getEnvironment_applicationId = Lens.lens (\GetEnvironment' {applicationId} -> applicationId) (\s@GetEnvironment' {} a -> s {applicationId = a} :: GetEnvironment)

-- | The ID of the environment you wnat to get.
getEnvironment_environmentId :: Lens.Lens' GetEnvironment Prelude.Text
getEnvironment_environmentId = Lens.lens (\GetEnvironment' {environmentId} -> environmentId) (\s@GetEnvironment' {} a -> s {environmentId = a} :: GetEnvironment)

instance Core.AWSRequest GetEnvironment where
  type AWSResponse GetEnvironment = Environment
  request = Request.get defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable GetEnvironment

instance Prelude.NFData GetEnvironment

instance Core.ToHeaders GetEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetEnvironment where
  toPath GetEnvironment' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId
      ]

instance Core.ToQuery GetEnvironment where
  toQuery = Prelude.const Prelude.mempty
