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
-- Module      : Network.AWS.CodeGuruProfiler.PostAgentProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits profiling data to an aggregated profile of a profiling group. To
-- get an aggregated profile that is created with this profiling data, use
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html GetProfile>
-- .
module Network.AWS.CodeGuruProfiler.PostAgentProfile
  ( -- * Creating a Request
    PostAgentProfile (..),
    newPostAgentProfile,

    -- * Request Lenses
    postAgentProfile_profileToken,
    postAgentProfile_agentProfile,
    postAgentProfile_contentType,
    postAgentProfile_profilingGroupName,

    -- * Destructuring the Response
    PostAgentProfileResponse (..),
    newPostAgentProfileResponse,

    -- * Response Lenses
    postAgentProfileResponse_httpStatus,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the postAgentProfileRequest.
--
-- /See:/ 'newPostAgentProfile' smart constructor.
data PostAgentProfile = PostAgentProfile'
  { -- | Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
    -- to prevent the accidental submission of duplicate profiling data if
    -- there are failures and retries.
    profileToken :: Prelude.Maybe Prelude.Text,
    -- | The submitted profiling data.
    agentProfile :: Prelude.ByteString,
    -- | The format of the submitted profiling data. The format maps to the
    -- @Accept@ and @Content-Type@ headers of the HTTP request. You can specify
    -- one of the following: or the default .
    --
    -- >  <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
    contentType :: Prelude.Text,
    -- | The name of the profiling group with the aggregated profile that
    -- receives the submitted profiling data.
    profilingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PostAgentProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileToken', 'postAgentProfile_profileToken' - Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
-- to prevent the accidental submission of duplicate profiling data if
-- there are failures and retries.
--
-- 'agentProfile', 'postAgentProfile_agentProfile' - The submitted profiling data.
--
-- 'contentType', 'postAgentProfile_contentType' - The format of the submitted profiling data. The format maps to the
-- @Accept@ and @Content-Type@ headers of the HTTP request. You can specify
-- one of the following: or the default .
--
-- >  <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
--
-- 'profilingGroupName', 'postAgentProfile_profilingGroupName' - The name of the profiling group with the aggregated profile that
-- receives the submitted profiling data.
newPostAgentProfile ::
  -- | 'agentProfile'
  Prelude.ByteString ->
  -- | 'contentType'
  Prelude.Text ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  PostAgentProfile
newPostAgentProfile
  pAgentProfile_
  pContentType_
  pProfilingGroupName_ =
    PostAgentProfile'
      { profileToken = Prelude.Nothing,
        agentProfile = pAgentProfile_,
        contentType = pContentType_,
        profilingGroupName = pProfilingGroupName_
      }

-- | Amazon CodeGuru Profiler uses this universally unique identifier (UUID)
-- to prevent the accidental submission of duplicate profiling data if
-- there are failures and retries.
postAgentProfile_profileToken :: Lens.Lens' PostAgentProfile (Prelude.Maybe Prelude.Text)
postAgentProfile_profileToken = Lens.lens (\PostAgentProfile' {profileToken} -> profileToken) (\s@PostAgentProfile' {} a -> s {profileToken = a} :: PostAgentProfile)

-- | The submitted profiling data.
postAgentProfile_agentProfile :: Lens.Lens' PostAgentProfile Prelude.ByteString
postAgentProfile_agentProfile = Lens.lens (\PostAgentProfile' {agentProfile} -> agentProfile) (\s@PostAgentProfile' {} a -> s {agentProfile = a} :: PostAgentProfile)

-- | The format of the submitted profiling data. The format maps to the
-- @Accept@ and @Content-Type@ headers of the HTTP request. You can specify
-- one of the following: or the default .
--
-- >  <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>
postAgentProfile_contentType :: Lens.Lens' PostAgentProfile Prelude.Text
postAgentProfile_contentType = Lens.lens (\PostAgentProfile' {contentType} -> contentType) (\s@PostAgentProfile' {} a -> s {contentType = a} :: PostAgentProfile)

-- | The name of the profiling group with the aggregated profile that
-- receives the submitted profiling data.
postAgentProfile_profilingGroupName :: Lens.Lens' PostAgentProfile Prelude.Text
postAgentProfile_profilingGroupName = Lens.lens (\PostAgentProfile' {profilingGroupName} -> profilingGroupName) (\s@PostAgentProfile' {} a -> s {profilingGroupName = a} :: PostAgentProfile)

instance Core.AWSRequest PostAgentProfile where
  type
    AWSResponse PostAgentProfile =
      PostAgentProfileResponse
  request = Request.postBody defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PostAgentProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PostAgentProfile

instance Prelude.NFData PostAgentProfile

instance Core.ToBody PostAgentProfile where
  toBody PostAgentProfile' {..} =
    Core.toBody agentProfile

instance Core.ToHeaders PostAgentProfile where
  toHeaders PostAgentProfile' {..} =
    Prelude.mconcat
      ["Content-Type" Core.=# contentType]

instance Core.ToPath PostAgentProfile where
  toPath PostAgentProfile' {..} =
    Prelude.mconcat
      [ "/profilingGroups/",
        Core.toBS profilingGroupName,
        "/agentProfile"
      ]

instance Core.ToQuery PostAgentProfile where
  toQuery PostAgentProfile' {..} =
    Prelude.mconcat
      ["profileToken" Core.=: profileToken]

-- | The structure representing the postAgentProfileResponse.
--
-- /See:/ 'newPostAgentProfileResponse' smart constructor.
data PostAgentProfileResponse = PostAgentProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PostAgentProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'postAgentProfileResponse_httpStatus' - The response's http status code.
newPostAgentProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PostAgentProfileResponse
newPostAgentProfileResponse pHttpStatus_ =
  PostAgentProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
postAgentProfileResponse_httpStatus :: Lens.Lens' PostAgentProfileResponse Prelude.Int
postAgentProfileResponse_httpStatus = Lens.lens (\PostAgentProfileResponse' {httpStatus} -> httpStatus) (\s@PostAgentProfileResponse' {} a -> s {httpStatus = a} :: PostAgentProfileResponse)

instance Prelude.NFData PostAgentProfileResponse
