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
-- Module      : Network.AWS.QuickSight.ListGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all user groups in Amazon QuickSight.
module Network.AWS.QuickSight.ListGroups
  ( -- * Creating a Request
    ListGroups (..),
    newListGroups,

    -- * Request Lenses
    listGroups_nextToken,
    listGroups_maxResults,
    listGroups_awsAccountId,
    listGroups_namespace,

    -- * Destructuring the Response
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- * Response Lenses
    listGroupsResponse_requestId,
    listGroupsResponse_groupList,
    listGroupsResponse_nextToken,
    listGroupsResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListGroups' smart constructor.
data ListGroups = ListGroups'
  { -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID for the Amazon Web Services account that the group is in.
    -- Currently, you use the ID for the Amazon Web Services account that
    -- contains your Amazon QuickSight account.
    awsAccountId :: Prelude.Text,
    -- | The namespace. Currently, you should set this to @default@.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroups_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'maxResults', 'listGroups_maxResults' - The maximum number of results to return.
--
-- 'awsAccountId', 'listGroups_awsAccountId' - The ID for the Amazon Web Services account that the group is in.
-- Currently, you use the ID for the Amazon Web Services account that
-- contains your Amazon QuickSight account.
--
-- 'namespace', 'listGroups_namespace' - The namespace. Currently, you should set this to @default@.
newListGroups ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  ListGroups
newListGroups pAwsAccountId_ pNamespace_ =
  ListGroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      namespace = pNamespace_
    }

-- | A pagination token that can be used in a subsequent request.
listGroups_nextToken :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Text)
listGroups_nextToken = Lens.lens (\ListGroups' {nextToken} -> nextToken) (\s@ListGroups' {} a -> s {nextToken = a} :: ListGroups)

-- | The maximum number of results to return.
listGroups_maxResults :: Lens.Lens' ListGroups (Prelude.Maybe Prelude.Natural)
listGroups_maxResults = Lens.lens (\ListGroups' {maxResults} -> maxResults) (\s@ListGroups' {} a -> s {maxResults = a} :: ListGroups)

-- | The ID for the Amazon Web Services account that the group is in.
-- Currently, you use the ID for the Amazon Web Services account that
-- contains your Amazon QuickSight account.
listGroups_awsAccountId :: Lens.Lens' ListGroups Prelude.Text
listGroups_awsAccountId = Lens.lens (\ListGroups' {awsAccountId} -> awsAccountId) (\s@ListGroups' {} a -> s {awsAccountId = a} :: ListGroups)

-- | The namespace. Currently, you should set this to @default@.
listGroups_namespace :: Lens.Lens' ListGroups Prelude.Text
listGroups_namespace = Lens.lens (\ListGroups' {namespace} -> namespace) (\s@ListGroups' {} a -> s {namespace = a} :: ListGroups)

instance Core.AWSRequest ListGroups where
  type AWSResponse ListGroups = ListGroupsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroupsResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "GroupList" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListGroups

instance Prelude.NFData ListGroups

instance Core.ToHeaders ListGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListGroups where
  toPath ListGroups' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespaces/",
        Core.toBS namespace,
        "/groups"
      ]

instance Core.ToQuery ListGroups where
  toQuery ListGroups' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The list of the groups.
    groupList :: Prelude.Maybe [Group],
    -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'listGroupsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'groupList', 'listGroupsResponse_groupList' - The list of the groups.
--
-- 'nextToken', 'listGroupsResponse_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'status', 'listGroupsResponse_status' - The HTTP status of the request.
newListGroupsResponse ::
  -- | 'status'
  Prelude.Int ->
  ListGroupsResponse
newListGroupsResponse pStatus_ =
  ListGroupsResponse'
    { requestId = Prelude.Nothing,
      groupList = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
listGroupsResponse_requestId :: Lens.Lens' ListGroupsResponse (Prelude.Maybe Prelude.Text)
listGroupsResponse_requestId = Lens.lens (\ListGroupsResponse' {requestId} -> requestId) (\s@ListGroupsResponse' {} a -> s {requestId = a} :: ListGroupsResponse)

-- | The list of the groups.
listGroupsResponse_groupList :: Lens.Lens' ListGroupsResponse (Prelude.Maybe [Group])
listGroupsResponse_groupList = Lens.lens (\ListGroupsResponse' {groupList} -> groupList) (\s@ListGroupsResponse' {} a -> s {groupList = a} :: ListGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A pagination token that can be used in a subsequent request.
listGroupsResponse_nextToken :: Lens.Lens' ListGroupsResponse (Prelude.Maybe Prelude.Text)
listGroupsResponse_nextToken = Lens.lens (\ListGroupsResponse' {nextToken} -> nextToken) (\s@ListGroupsResponse' {} a -> s {nextToken = a} :: ListGroupsResponse)

-- | The HTTP status of the request.
listGroupsResponse_status :: Lens.Lens' ListGroupsResponse Prelude.Int
listGroupsResponse_status = Lens.lens (\ListGroupsResponse' {status} -> status) (\s@ListGroupsResponse' {} a -> s {status = a} :: ListGroupsResponse)

instance Prelude.NFData ListGroupsResponse
