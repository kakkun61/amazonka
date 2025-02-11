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
-- Module      : Network.AWS.AMP.DescribeAlertManagerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an alert manager definition.
module Network.AWS.AMP.DescribeAlertManagerDefinition
  ( -- * Creating a Request
    DescribeAlertManagerDefinition (..),
    newDescribeAlertManagerDefinition,

    -- * Request Lenses
    describeAlertManagerDefinition_workspaceId,

    -- * Destructuring the Response
    DescribeAlertManagerDefinitionResponse (..),
    newDescribeAlertManagerDefinitionResponse,

    -- * Response Lenses
    describeAlertManagerDefinitionResponse_httpStatus,
    describeAlertManagerDefinitionResponse_alertManagerDefinition,
  )
where

import Network.AWS.AMP.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a DescribeAlertManagerDefinition operation.
--
-- /See:/ 'newDescribeAlertManagerDefinition' smart constructor.
data DescribeAlertManagerDefinition = DescribeAlertManagerDefinition'
  { -- | The ID of the workspace to describe.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlertManagerDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workspaceId', 'describeAlertManagerDefinition_workspaceId' - The ID of the workspace to describe.
newDescribeAlertManagerDefinition ::
  -- | 'workspaceId'
  Prelude.Text ->
  DescribeAlertManagerDefinition
newDescribeAlertManagerDefinition pWorkspaceId_ =
  DescribeAlertManagerDefinition'
    { workspaceId =
        pWorkspaceId_
    }

-- | The ID of the workspace to describe.
describeAlertManagerDefinition_workspaceId :: Lens.Lens' DescribeAlertManagerDefinition Prelude.Text
describeAlertManagerDefinition_workspaceId = Lens.lens (\DescribeAlertManagerDefinition' {workspaceId} -> workspaceId) (\s@DescribeAlertManagerDefinition' {} a -> s {workspaceId = a} :: DescribeAlertManagerDefinition)

instance
  Core.AWSRequest
    DescribeAlertManagerDefinition
  where
  type
    AWSResponse DescribeAlertManagerDefinition =
      DescribeAlertManagerDefinitionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAlertManagerDefinitionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "alertManagerDefinition")
      )

instance
  Prelude.Hashable
    DescribeAlertManagerDefinition

instance
  Prelude.NFData
    DescribeAlertManagerDefinition

instance
  Core.ToHeaders
    DescribeAlertManagerDefinition
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

instance Core.ToPath DescribeAlertManagerDefinition where
  toPath DescribeAlertManagerDefinition' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/alertmanager/definition"
      ]

instance Core.ToQuery DescribeAlertManagerDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a DescribeAlertManagerDefinition operation.
--
-- /See:/ 'newDescribeAlertManagerDefinitionResponse' smart constructor.
data DescribeAlertManagerDefinitionResponse = DescribeAlertManagerDefinitionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The properties of the selected workspace\'s alert manager definition.
    alertManagerDefinition :: AlertManagerDefinitionDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlertManagerDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeAlertManagerDefinitionResponse_httpStatus' - The response's http status code.
--
-- 'alertManagerDefinition', 'describeAlertManagerDefinitionResponse_alertManagerDefinition' - The properties of the selected workspace\'s alert manager definition.
newDescribeAlertManagerDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'alertManagerDefinition'
  AlertManagerDefinitionDescription ->
  DescribeAlertManagerDefinitionResponse
newDescribeAlertManagerDefinitionResponse
  pHttpStatus_
  pAlertManagerDefinition_ =
    DescribeAlertManagerDefinitionResponse'
      { httpStatus =
          pHttpStatus_,
        alertManagerDefinition =
          pAlertManagerDefinition_
      }

-- | The response's http status code.
describeAlertManagerDefinitionResponse_httpStatus :: Lens.Lens' DescribeAlertManagerDefinitionResponse Prelude.Int
describeAlertManagerDefinitionResponse_httpStatus = Lens.lens (\DescribeAlertManagerDefinitionResponse' {httpStatus} -> httpStatus) (\s@DescribeAlertManagerDefinitionResponse' {} a -> s {httpStatus = a} :: DescribeAlertManagerDefinitionResponse)

-- | The properties of the selected workspace\'s alert manager definition.
describeAlertManagerDefinitionResponse_alertManagerDefinition :: Lens.Lens' DescribeAlertManagerDefinitionResponse AlertManagerDefinitionDescription
describeAlertManagerDefinitionResponse_alertManagerDefinition = Lens.lens (\DescribeAlertManagerDefinitionResponse' {alertManagerDefinition} -> alertManagerDefinition) (\s@DescribeAlertManagerDefinitionResponse' {} a -> s {alertManagerDefinition = a} :: DescribeAlertManagerDefinitionResponse)

instance
  Prelude.NFData
    DescribeAlertManagerDefinitionResponse
