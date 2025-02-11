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
-- Module      : Network.AWS.CodeGuruProfiler.RemovePermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes permissions from a profiling group\'s resource-based policy that
-- are provided using an action group. The one supported action group that
-- can be removed is @agentPermission@ which grants @ConfigureAgent@ and
-- @PostAgent@ permissions. For more information, see
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html Resource-based policies in CodeGuru Profiler>
-- in the /Amazon CodeGuru Profiler User Guide/,
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html ConfigureAgent>
-- , and
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html PostAgentProfile>
-- .
module Network.AWS.CodeGuruProfiler.RemovePermission
  ( -- * Creating a Request
    RemovePermission (..),
    newRemovePermission,

    -- * Request Lenses
    removePermission_actionGroup,
    removePermission_profilingGroupName,
    removePermission_revisionId,

    -- * Destructuring the Response
    RemovePermissionResponse (..),
    newRemovePermissionResponse,

    -- * Response Lenses
    removePermissionResponse_httpStatus,
    removePermissionResponse_policy,
    removePermissionResponse_revisionId,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | >  The structure representing the <code>removePermissionRequest</code>.</p>
--
-- /See:/ 'newRemovePermission' smart constructor.
data RemovePermission = RemovePermission'
  { -- | Specifies an action group that contains the permissions to remove from a
    -- profiling group\'s resource-based policy. One action group is supported,
    -- @agentPermissions@, which grants @ConfigureAgent@ and @PostAgentProfile@
    -- permissions.
    actionGroup :: ActionGroup,
    -- | The name of the profiling group.
    profilingGroupName :: Prelude.Text,
    -- | A universally unique identifier (UUID) for the revision of the
    -- resource-based policy from which you want to remove permissions.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemovePermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionGroup', 'removePermission_actionGroup' - Specifies an action group that contains the permissions to remove from a
-- profiling group\'s resource-based policy. One action group is supported,
-- @agentPermissions@, which grants @ConfigureAgent@ and @PostAgentProfile@
-- permissions.
--
-- 'profilingGroupName', 'removePermission_profilingGroupName' - The name of the profiling group.
--
-- 'revisionId', 'removePermission_revisionId' - A universally unique identifier (UUID) for the revision of the
-- resource-based policy from which you want to remove permissions.
newRemovePermission ::
  -- | 'actionGroup'
  ActionGroup ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  RemovePermission
newRemovePermission
  pActionGroup_
  pProfilingGroupName_
  pRevisionId_ =
    RemovePermission'
      { actionGroup = pActionGroup_,
        profilingGroupName = pProfilingGroupName_,
        revisionId = pRevisionId_
      }

-- | Specifies an action group that contains the permissions to remove from a
-- profiling group\'s resource-based policy. One action group is supported,
-- @agentPermissions@, which grants @ConfigureAgent@ and @PostAgentProfile@
-- permissions.
removePermission_actionGroup :: Lens.Lens' RemovePermission ActionGroup
removePermission_actionGroup = Lens.lens (\RemovePermission' {actionGroup} -> actionGroup) (\s@RemovePermission' {} a -> s {actionGroup = a} :: RemovePermission)

-- | The name of the profiling group.
removePermission_profilingGroupName :: Lens.Lens' RemovePermission Prelude.Text
removePermission_profilingGroupName = Lens.lens (\RemovePermission' {profilingGroupName} -> profilingGroupName) (\s@RemovePermission' {} a -> s {profilingGroupName = a} :: RemovePermission)

-- | A universally unique identifier (UUID) for the revision of the
-- resource-based policy from which you want to remove permissions.
removePermission_revisionId :: Lens.Lens' RemovePermission Prelude.Text
removePermission_revisionId = Lens.lens (\RemovePermission' {revisionId} -> revisionId) (\s@RemovePermission' {} a -> s {revisionId = a} :: RemovePermission)

instance Core.AWSRequest RemovePermission where
  type
    AWSResponse RemovePermission =
      RemovePermissionResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemovePermissionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "policy")
            Prelude.<*> (x Core..:> "revisionId")
      )

instance Prelude.Hashable RemovePermission

instance Prelude.NFData RemovePermission

instance Core.ToHeaders RemovePermission where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath RemovePermission where
  toPath RemovePermission' {..} =
    Prelude.mconcat
      [ "/profilingGroups/",
        Core.toBS profilingGroupName,
        "/policy/",
        Core.toBS actionGroup
      ]

instance Core.ToQuery RemovePermission where
  toQuery RemovePermission' {..} =
    Prelude.mconcat ["revisionId" Core.=: revisionId]

-- | The structure representing the @removePermissionResponse@.
--
-- /See:/ 'newRemovePermissionResponse' smart constructor.
data RemovePermissionResponse = RemovePermissionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The JSON-formatted resource-based policy on the profiling group after
    -- the specified permissions were removed.
    policy :: Prelude.Text,
    -- | A universally unique identifier (UUID) for the revision of the
    -- resource-based policy after the specified permissions were removed. The
    -- updated JSON-formatted policy is in the @policy@ element of the
    -- response.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemovePermissionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'removePermissionResponse_httpStatus' - The response's http status code.
--
-- 'policy', 'removePermissionResponse_policy' - The JSON-formatted resource-based policy on the profiling group after
-- the specified permissions were removed.
--
-- 'revisionId', 'removePermissionResponse_revisionId' - A universally unique identifier (UUID) for the revision of the
-- resource-based policy after the specified permissions were removed. The
-- updated JSON-formatted policy is in the @policy@ element of the
-- response.
newRemovePermissionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'policy'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  RemovePermissionResponse
newRemovePermissionResponse
  pHttpStatus_
  pPolicy_
  pRevisionId_ =
    RemovePermissionResponse'
      { httpStatus =
          pHttpStatus_,
        policy = pPolicy_,
        revisionId = pRevisionId_
      }

-- | The response's http status code.
removePermissionResponse_httpStatus :: Lens.Lens' RemovePermissionResponse Prelude.Int
removePermissionResponse_httpStatus = Lens.lens (\RemovePermissionResponse' {httpStatus} -> httpStatus) (\s@RemovePermissionResponse' {} a -> s {httpStatus = a} :: RemovePermissionResponse)

-- | The JSON-formatted resource-based policy on the profiling group after
-- the specified permissions were removed.
removePermissionResponse_policy :: Lens.Lens' RemovePermissionResponse Prelude.Text
removePermissionResponse_policy = Lens.lens (\RemovePermissionResponse' {policy} -> policy) (\s@RemovePermissionResponse' {} a -> s {policy = a} :: RemovePermissionResponse)

-- | A universally unique identifier (UUID) for the revision of the
-- resource-based policy after the specified permissions were removed. The
-- updated JSON-formatted policy is in the @policy@ element of the
-- response.
removePermissionResponse_revisionId :: Lens.Lens' RemovePermissionResponse Prelude.Text
removePermissionResponse_revisionId = Lens.lens (\RemovePermissionResponse' {revisionId} -> revisionId) (\s@RemovePermissionResponse' {} a -> s {revisionId = a} :: RemovePermissionResponse)

instance Prelude.NFData RemovePermissionResponse
