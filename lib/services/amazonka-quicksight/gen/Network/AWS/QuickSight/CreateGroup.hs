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
-- Module      : Network.AWS.QuickSight.CreateGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon QuickSight group.
--
-- The permissions resource is
-- @arn:aws:quicksight:us-east-1:\<relevant-aws-account-id>:group\/default\/\<group-name> @.
--
-- The response is a group object.
module Network.AWS.QuickSight.CreateGroup
  ( -- * Creating a Request
    CreateGroup (..),
    newCreateGroup,

    -- * Request Lenses
    createGroup_description,
    createGroup_groupName,
    createGroup_awsAccountId,
    createGroup_namespace,

    -- * Destructuring the Response
    CreateGroupResponse (..),
    newCreateGroupResponse,

    -- * Response Lenses
    createGroupResponse_requestId,
    createGroupResponse_group,
    createGroupResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request object for this operation.
--
-- /See:/ 'newCreateGroup' smart constructor.
data CreateGroup = CreateGroup'
  { -- | A description for the group that you want to create.
    description :: Prelude.Maybe Prelude.Text,
    -- | A name for the group that you want to create.
    groupName :: Prelude.Text,
    -- | The ID for the Amazon Web Services account that the group is in.
    -- Currently, you use the ID for the Amazon Web Services account that
    -- contains your Amazon QuickSight account.
    awsAccountId :: Prelude.Text,
    -- | The namespace. Currently, you should set this to @default@.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createGroup_description' - A description for the group that you want to create.
--
-- 'groupName', 'createGroup_groupName' - A name for the group that you want to create.
--
-- 'awsAccountId', 'createGroup_awsAccountId' - The ID for the Amazon Web Services account that the group is in.
-- Currently, you use the ID for the Amazon Web Services account that
-- contains your Amazon QuickSight account.
--
-- 'namespace', 'createGroup_namespace' - The namespace. Currently, you should set this to @default@.
newCreateGroup ::
  -- | 'groupName'
  Prelude.Text ->
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  CreateGroup
newCreateGroup pGroupName_ pAwsAccountId_ pNamespace_ =
  CreateGroup'
    { description = Prelude.Nothing,
      groupName = pGroupName_,
      awsAccountId = pAwsAccountId_,
      namespace = pNamespace_
    }

-- | A description for the group that you want to create.
createGroup_description :: Lens.Lens' CreateGroup (Prelude.Maybe Prelude.Text)
createGroup_description = Lens.lens (\CreateGroup' {description} -> description) (\s@CreateGroup' {} a -> s {description = a} :: CreateGroup)

-- | A name for the group that you want to create.
createGroup_groupName :: Lens.Lens' CreateGroup Prelude.Text
createGroup_groupName = Lens.lens (\CreateGroup' {groupName} -> groupName) (\s@CreateGroup' {} a -> s {groupName = a} :: CreateGroup)

-- | The ID for the Amazon Web Services account that the group is in.
-- Currently, you use the ID for the Amazon Web Services account that
-- contains your Amazon QuickSight account.
createGroup_awsAccountId :: Lens.Lens' CreateGroup Prelude.Text
createGroup_awsAccountId = Lens.lens (\CreateGroup' {awsAccountId} -> awsAccountId) (\s@CreateGroup' {} a -> s {awsAccountId = a} :: CreateGroup)

-- | The namespace. Currently, you should set this to @default@.
createGroup_namespace :: Lens.Lens' CreateGroup Prelude.Text
createGroup_namespace = Lens.lens (\CreateGroup' {namespace} -> namespace) (\s@CreateGroup' {} a -> s {namespace = a} :: CreateGroup)

instance Core.AWSRequest CreateGroup where
  type AWSResponse CreateGroup = CreateGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGroupResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Group")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGroup

instance Prelude.NFData CreateGroup

instance Core.ToHeaders CreateGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateGroup where
  toJSON CreateGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("GroupName" Core..= groupName)
          ]
      )

instance Core.ToPath CreateGroup where
  toPath CreateGroup' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespaces/",
        Core.toBS namespace,
        "/groups"
      ]

instance Core.ToQuery CreateGroup where
  toQuery = Prelude.const Prelude.mempty

-- | The response object for this operation.
--
-- /See:/ 'newCreateGroupResponse' smart constructor.
data CreateGroupResponse = CreateGroupResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The name of the group.
    group' :: Prelude.Maybe Group,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'createGroupResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'group'', 'createGroupResponse_group' - The name of the group.
--
-- 'status', 'createGroupResponse_status' - The HTTP status of the request.
newCreateGroupResponse ::
  -- | 'status'
  Prelude.Int ->
  CreateGroupResponse
newCreateGroupResponse pStatus_ =
  CreateGroupResponse'
    { requestId = Prelude.Nothing,
      group' = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
createGroupResponse_requestId :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Prelude.Text)
createGroupResponse_requestId = Lens.lens (\CreateGroupResponse' {requestId} -> requestId) (\s@CreateGroupResponse' {} a -> s {requestId = a} :: CreateGroupResponse)

-- | The name of the group.
createGroupResponse_group :: Lens.Lens' CreateGroupResponse (Prelude.Maybe Group)
createGroupResponse_group = Lens.lens (\CreateGroupResponse' {group'} -> group') (\s@CreateGroupResponse' {} a -> s {group' = a} :: CreateGroupResponse)

-- | The HTTP status of the request.
createGroupResponse_status :: Lens.Lens' CreateGroupResponse Prelude.Int
createGroupResponse_status = Lens.lens (\CreateGroupResponse' {status} -> status) (\s@CreateGroupResponse' {} a -> s {status = a} :: CreateGroupResponse)

instance Prelude.NFData CreateGroupResponse
