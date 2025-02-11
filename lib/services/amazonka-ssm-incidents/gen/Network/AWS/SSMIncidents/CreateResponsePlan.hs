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
-- Module      : Network.AWS.SSMIncidents.CreateResponsePlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a response plan that automates the initial response to
-- incidents. A response plan engages contacts, starts chat channel
-- collaboration, and initiates runbooks at the beginning of an incident.
module Network.AWS.SSMIncidents.CreateResponsePlan
  ( -- * Creating a Request
    CreateResponsePlan (..),
    newCreateResponsePlan,

    -- * Request Lenses
    createResponsePlan_clientToken,
    createResponsePlan_actions,
    createResponsePlan_displayName,
    createResponsePlan_chatChannel,
    createResponsePlan_engagements,
    createResponsePlan_tags,
    createResponsePlan_incidentTemplate,
    createResponsePlan_name,

    -- * Destructuring the Response
    CreateResponsePlanResponse (..),
    newCreateResponsePlanResponse,

    -- * Response Lenses
    createResponsePlanResponse_httpStatus,
    createResponsePlanResponse_arn,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMIncidents.Types

-- | /See:/ 'newCreateResponsePlan' smart constructor.
data CreateResponsePlan = CreateResponsePlan'
  { -- | A token ensuring that the action is called only once with the specified
    -- details.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The actions that the response plan starts at the beginning of an
    -- incident.
    actions :: Prelude.Maybe [Action],
    -- | The long format of the response plan name. This field can contain
    -- spaces.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The AWS Chatbot chat channel used for collaboration during an incident.
    chatChannel :: Prelude.Maybe ChatChannel,
    -- | The contacts and escalation plans that the response plan engages during
    -- an incident.
    engagements :: Prelude.Maybe [Prelude.Text],
    -- | A list of tags that you are adding to the response plan.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Details used to create an incident when using this response plan.
    incidentTemplate :: IncidentTemplate,
    -- | The short format name of the response plan. Can\'t include spaces.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResponsePlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createResponsePlan_clientToken' - A token ensuring that the action is called only once with the specified
-- details.
--
-- 'actions', 'createResponsePlan_actions' - The actions that the response plan starts at the beginning of an
-- incident.
--
-- 'displayName', 'createResponsePlan_displayName' - The long format of the response plan name. This field can contain
-- spaces.
--
-- 'chatChannel', 'createResponsePlan_chatChannel' - The AWS Chatbot chat channel used for collaboration during an incident.
--
-- 'engagements', 'createResponsePlan_engagements' - The contacts and escalation plans that the response plan engages during
-- an incident.
--
-- 'tags', 'createResponsePlan_tags' - A list of tags that you are adding to the response plan.
--
-- 'incidentTemplate', 'createResponsePlan_incidentTemplate' - Details used to create an incident when using this response plan.
--
-- 'name', 'createResponsePlan_name' - The short format name of the response plan. Can\'t include spaces.
newCreateResponsePlan ::
  -- | 'incidentTemplate'
  IncidentTemplate ->
  -- | 'name'
  Prelude.Text ->
  CreateResponsePlan
newCreateResponsePlan pIncidentTemplate_ pName_ =
  CreateResponsePlan'
    { clientToken = Prelude.Nothing,
      actions = Prelude.Nothing,
      displayName = Prelude.Nothing,
      chatChannel = Prelude.Nothing,
      engagements = Prelude.Nothing,
      tags = Prelude.Nothing,
      incidentTemplate = pIncidentTemplate_,
      name = pName_
    }

-- | A token ensuring that the action is called only once with the specified
-- details.
createResponsePlan_clientToken :: Lens.Lens' CreateResponsePlan (Prelude.Maybe Prelude.Text)
createResponsePlan_clientToken = Lens.lens (\CreateResponsePlan' {clientToken} -> clientToken) (\s@CreateResponsePlan' {} a -> s {clientToken = a} :: CreateResponsePlan)

-- | The actions that the response plan starts at the beginning of an
-- incident.
createResponsePlan_actions :: Lens.Lens' CreateResponsePlan (Prelude.Maybe [Action])
createResponsePlan_actions = Lens.lens (\CreateResponsePlan' {actions} -> actions) (\s@CreateResponsePlan' {} a -> s {actions = a} :: CreateResponsePlan) Prelude.. Lens.mapping Lens.coerced

-- | The long format of the response plan name. This field can contain
-- spaces.
createResponsePlan_displayName :: Lens.Lens' CreateResponsePlan (Prelude.Maybe Prelude.Text)
createResponsePlan_displayName = Lens.lens (\CreateResponsePlan' {displayName} -> displayName) (\s@CreateResponsePlan' {} a -> s {displayName = a} :: CreateResponsePlan)

-- | The AWS Chatbot chat channel used for collaboration during an incident.
createResponsePlan_chatChannel :: Lens.Lens' CreateResponsePlan (Prelude.Maybe ChatChannel)
createResponsePlan_chatChannel = Lens.lens (\CreateResponsePlan' {chatChannel} -> chatChannel) (\s@CreateResponsePlan' {} a -> s {chatChannel = a} :: CreateResponsePlan)

-- | The contacts and escalation plans that the response plan engages during
-- an incident.
createResponsePlan_engagements :: Lens.Lens' CreateResponsePlan (Prelude.Maybe [Prelude.Text])
createResponsePlan_engagements = Lens.lens (\CreateResponsePlan' {engagements} -> engagements) (\s@CreateResponsePlan' {} a -> s {engagements = a} :: CreateResponsePlan) Prelude.. Lens.mapping Lens.coerced

-- | A list of tags that you are adding to the response plan.
createResponsePlan_tags :: Lens.Lens' CreateResponsePlan (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createResponsePlan_tags = Lens.lens (\CreateResponsePlan' {tags} -> tags) (\s@CreateResponsePlan' {} a -> s {tags = a} :: CreateResponsePlan) Prelude.. Lens.mapping Lens.coerced

-- | Details used to create an incident when using this response plan.
createResponsePlan_incidentTemplate :: Lens.Lens' CreateResponsePlan IncidentTemplate
createResponsePlan_incidentTemplate = Lens.lens (\CreateResponsePlan' {incidentTemplate} -> incidentTemplate) (\s@CreateResponsePlan' {} a -> s {incidentTemplate = a} :: CreateResponsePlan)

-- | The short format name of the response plan. Can\'t include spaces.
createResponsePlan_name :: Lens.Lens' CreateResponsePlan Prelude.Text
createResponsePlan_name = Lens.lens (\CreateResponsePlan' {name} -> name) (\s@CreateResponsePlan' {} a -> s {name = a} :: CreateResponsePlan)

instance Core.AWSRequest CreateResponsePlan where
  type
    AWSResponse CreateResponsePlan =
      CreateResponsePlanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateResponsePlanResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "arn")
      )

instance Prelude.Hashable CreateResponsePlan

instance Prelude.NFData CreateResponsePlan

instance Core.ToHeaders CreateResponsePlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateResponsePlan where
  toJSON CreateResponsePlan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("actions" Core..=) Prelude.<$> actions,
            ("displayName" Core..=) Prelude.<$> displayName,
            ("chatChannel" Core..=) Prelude.<$> chatChannel,
            ("engagements" Core..=) Prelude.<$> engagements,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("incidentTemplate" Core..= incidentTemplate),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateResponsePlan where
  toPath = Prelude.const "/createResponsePlan"

instance Core.ToQuery CreateResponsePlan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateResponsePlanResponse' smart constructor.
data CreateResponsePlanResponse = CreateResponsePlanResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the response plan.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateResponsePlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createResponsePlanResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'createResponsePlanResponse_arn' - The Amazon Resource Name (ARN) of the response plan.
newCreateResponsePlanResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  CreateResponsePlanResponse
newCreateResponsePlanResponse pHttpStatus_ pArn_ =
  CreateResponsePlanResponse'
    { httpStatus =
        pHttpStatus_,
      arn = pArn_
    }

-- | The response's http status code.
createResponsePlanResponse_httpStatus :: Lens.Lens' CreateResponsePlanResponse Prelude.Int
createResponsePlanResponse_httpStatus = Lens.lens (\CreateResponsePlanResponse' {httpStatus} -> httpStatus) (\s@CreateResponsePlanResponse' {} a -> s {httpStatus = a} :: CreateResponsePlanResponse)

-- | The Amazon Resource Name (ARN) of the response plan.
createResponsePlanResponse_arn :: Lens.Lens' CreateResponsePlanResponse Prelude.Text
createResponsePlanResponse_arn = Lens.lens (\CreateResponsePlanResponse' {arn} -> arn) (\s@CreateResponsePlanResponse' {} a -> s {arn = a} :: CreateResponsePlanResponse)

instance Prelude.NFData CreateResponsePlanResponse
