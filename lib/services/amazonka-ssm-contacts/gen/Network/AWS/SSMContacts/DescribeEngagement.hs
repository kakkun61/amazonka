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
-- Module      : Network.AWS.SSMContacts.DescribeEngagement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Incident Manager uses engagements to engage contacts and escalation
-- plans during an incident. Use this command to describe the engagement
-- that occurred during an incident.
module Network.AWS.SSMContacts.DescribeEngagement
  ( -- * Creating a Request
    DescribeEngagement (..),
    newDescribeEngagement,

    -- * Request Lenses
    describeEngagement_engagementId,

    -- * Destructuring the Response
    DescribeEngagementResponse (..),
    newDescribeEngagementResponse,

    -- * Response Lenses
    describeEngagementResponse_publicSubject,
    describeEngagementResponse_startTime,
    describeEngagementResponse_publicContent,
    describeEngagementResponse_stopTime,
    describeEngagementResponse_incidentId,
    describeEngagementResponse_httpStatus,
    describeEngagementResponse_contactArn,
    describeEngagementResponse_engagementArn,
    describeEngagementResponse_sender,
    describeEngagementResponse_subject,
    describeEngagementResponse_content,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMContacts.Types

-- | /See:/ 'newDescribeEngagement' smart constructor.
data DescribeEngagement = DescribeEngagement'
  { -- | The Amazon Resource Name (ARN) of the engagement you want the details
    -- of.
    engagementId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEngagement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engagementId', 'describeEngagement_engagementId' - The Amazon Resource Name (ARN) of the engagement you want the details
-- of.
newDescribeEngagement ::
  -- | 'engagementId'
  Prelude.Text ->
  DescribeEngagement
newDescribeEngagement pEngagementId_ =
  DescribeEngagement' {engagementId = pEngagementId_}

-- | The Amazon Resource Name (ARN) of the engagement you want the details
-- of.
describeEngagement_engagementId :: Lens.Lens' DescribeEngagement Prelude.Text
describeEngagement_engagementId = Lens.lens (\DescribeEngagement' {engagementId} -> engagementId) (\s@DescribeEngagement' {} a -> s {engagementId = a} :: DescribeEngagement)

instance Core.AWSRequest DescribeEngagement where
  type
    AWSResponse DescribeEngagement =
      DescribeEngagementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEngagementResponse'
            Prelude.<$> (x Core..?> "PublicSubject")
            Prelude.<*> (x Core..?> "StartTime")
            Prelude.<*> (x Core..?> "PublicContent")
            Prelude.<*> (x Core..?> "StopTime")
            Prelude.<*> (x Core..?> "IncidentId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ContactArn")
            Prelude.<*> (x Core..:> "EngagementArn")
            Prelude.<*> (x Core..:> "Sender")
            Prelude.<*> (x Core..:> "Subject")
            Prelude.<*> (x Core..:> "Content")
      )

instance Prelude.Hashable DescribeEngagement

instance Prelude.NFData DescribeEngagement

instance Core.ToHeaders DescribeEngagement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SSMContacts.DescribeEngagement" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEngagement where
  toJSON DescribeEngagement' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("EngagementId" Core..= engagementId)]
      )

instance Core.ToPath DescribeEngagement where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEngagement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEngagementResponse' smart constructor.
data DescribeEngagementResponse = DescribeEngagementResponse'
  { -- | The insecure subject of the message that was sent to the contact. Use
    -- this field for engagements to @SMS@.
    publicSubject :: Prelude.Maybe Prelude.Text,
    -- | The time that the engagement started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The insecure content of the message that was sent to the contact. Use
    -- this field for engagements to @SMS@.
    publicContent :: Prelude.Maybe Prelude.Text,
    -- | The time that the engagement ended.
    stopTime :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the incident in which the engagement occurred.
    incidentId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the escalation plan or contacts involved in the engagement.
    contactArn :: Prelude.Text,
    -- | The ARN of the engagement.
    engagementArn :: Prelude.Text,
    -- | The user that started the engagement.
    sender :: Prelude.Text,
    -- | The secure subject of the message that was sent to the contact. Use this
    -- field for engagements to @VOICE@ and @EMAIL@.
    subject :: Prelude.Text,
    -- | The secure content of the message that was sent to the contact. Use this
    -- field for engagements to @VOICE@ and @EMAIL@.
    content :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEngagementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicSubject', 'describeEngagementResponse_publicSubject' - The insecure subject of the message that was sent to the contact. Use
-- this field for engagements to @SMS@.
--
-- 'startTime', 'describeEngagementResponse_startTime' - The time that the engagement started.
--
-- 'publicContent', 'describeEngagementResponse_publicContent' - The insecure content of the message that was sent to the contact. Use
-- this field for engagements to @SMS@.
--
-- 'stopTime', 'describeEngagementResponse_stopTime' - The time that the engagement ended.
--
-- 'incidentId', 'describeEngagementResponse_incidentId' - The ARN of the incident in which the engagement occurred.
--
-- 'httpStatus', 'describeEngagementResponse_httpStatus' - The response's http status code.
--
-- 'contactArn', 'describeEngagementResponse_contactArn' - The ARN of the escalation plan or contacts involved in the engagement.
--
-- 'engagementArn', 'describeEngagementResponse_engagementArn' - The ARN of the engagement.
--
-- 'sender', 'describeEngagementResponse_sender' - The user that started the engagement.
--
-- 'subject', 'describeEngagementResponse_subject' - The secure subject of the message that was sent to the contact. Use this
-- field for engagements to @VOICE@ and @EMAIL@.
--
-- 'content', 'describeEngagementResponse_content' - The secure content of the message that was sent to the contact. Use this
-- field for engagements to @VOICE@ and @EMAIL@.
newDescribeEngagementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'contactArn'
  Prelude.Text ->
  -- | 'engagementArn'
  Prelude.Text ->
  -- | 'sender'
  Prelude.Text ->
  -- | 'subject'
  Prelude.Text ->
  -- | 'content'
  Prelude.Text ->
  DescribeEngagementResponse
newDescribeEngagementResponse
  pHttpStatus_
  pContactArn_
  pEngagementArn_
  pSender_
  pSubject_
  pContent_ =
    DescribeEngagementResponse'
      { publicSubject =
          Prelude.Nothing,
        startTime = Prelude.Nothing,
        publicContent = Prelude.Nothing,
        stopTime = Prelude.Nothing,
        incidentId = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        contactArn = pContactArn_,
        engagementArn = pEngagementArn_,
        sender = pSender_,
        subject = pSubject_,
        content = pContent_
      }

-- | The insecure subject of the message that was sent to the contact. Use
-- this field for engagements to @SMS@.
describeEngagementResponse_publicSubject :: Lens.Lens' DescribeEngagementResponse (Prelude.Maybe Prelude.Text)
describeEngagementResponse_publicSubject = Lens.lens (\DescribeEngagementResponse' {publicSubject} -> publicSubject) (\s@DescribeEngagementResponse' {} a -> s {publicSubject = a} :: DescribeEngagementResponse)

-- | The time that the engagement started.
describeEngagementResponse_startTime :: Lens.Lens' DescribeEngagementResponse (Prelude.Maybe Prelude.UTCTime)
describeEngagementResponse_startTime = Lens.lens (\DescribeEngagementResponse' {startTime} -> startTime) (\s@DescribeEngagementResponse' {} a -> s {startTime = a} :: DescribeEngagementResponse) Prelude.. Lens.mapping Core._Time

-- | The insecure content of the message that was sent to the contact. Use
-- this field for engagements to @SMS@.
describeEngagementResponse_publicContent :: Lens.Lens' DescribeEngagementResponse (Prelude.Maybe Prelude.Text)
describeEngagementResponse_publicContent = Lens.lens (\DescribeEngagementResponse' {publicContent} -> publicContent) (\s@DescribeEngagementResponse' {} a -> s {publicContent = a} :: DescribeEngagementResponse)

-- | The time that the engagement ended.
describeEngagementResponse_stopTime :: Lens.Lens' DescribeEngagementResponse (Prelude.Maybe Prelude.UTCTime)
describeEngagementResponse_stopTime = Lens.lens (\DescribeEngagementResponse' {stopTime} -> stopTime) (\s@DescribeEngagementResponse' {} a -> s {stopTime = a} :: DescribeEngagementResponse) Prelude.. Lens.mapping Core._Time

-- | The ARN of the incident in which the engagement occurred.
describeEngagementResponse_incidentId :: Lens.Lens' DescribeEngagementResponse (Prelude.Maybe Prelude.Text)
describeEngagementResponse_incidentId = Lens.lens (\DescribeEngagementResponse' {incidentId} -> incidentId) (\s@DescribeEngagementResponse' {} a -> s {incidentId = a} :: DescribeEngagementResponse)

-- | The response's http status code.
describeEngagementResponse_httpStatus :: Lens.Lens' DescribeEngagementResponse Prelude.Int
describeEngagementResponse_httpStatus = Lens.lens (\DescribeEngagementResponse' {httpStatus} -> httpStatus) (\s@DescribeEngagementResponse' {} a -> s {httpStatus = a} :: DescribeEngagementResponse)

-- | The ARN of the escalation plan or contacts involved in the engagement.
describeEngagementResponse_contactArn :: Lens.Lens' DescribeEngagementResponse Prelude.Text
describeEngagementResponse_contactArn = Lens.lens (\DescribeEngagementResponse' {contactArn} -> contactArn) (\s@DescribeEngagementResponse' {} a -> s {contactArn = a} :: DescribeEngagementResponse)

-- | The ARN of the engagement.
describeEngagementResponse_engagementArn :: Lens.Lens' DescribeEngagementResponse Prelude.Text
describeEngagementResponse_engagementArn = Lens.lens (\DescribeEngagementResponse' {engagementArn} -> engagementArn) (\s@DescribeEngagementResponse' {} a -> s {engagementArn = a} :: DescribeEngagementResponse)

-- | The user that started the engagement.
describeEngagementResponse_sender :: Lens.Lens' DescribeEngagementResponse Prelude.Text
describeEngagementResponse_sender = Lens.lens (\DescribeEngagementResponse' {sender} -> sender) (\s@DescribeEngagementResponse' {} a -> s {sender = a} :: DescribeEngagementResponse)

-- | The secure subject of the message that was sent to the contact. Use this
-- field for engagements to @VOICE@ and @EMAIL@.
describeEngagementResponse_subject :: Lens.Lens' DescribeEngagementResponse Prelude.Text
describeEngagementResponse_subject = Lens.lens (\DescribeEngagementResponse' {subject} -> subject) (\s@DescribeEngagementResponse' {} a -> s {subject = a} :: DescribeEngagementResponse)

-- | The secure content of the message that was sent to the contact. Use this
-- field for engagements to @VOICE@ and @EMAIL@.
describeEngagementResponse_content :: Lens.Lens' DescribeEngagementResponse Prelude.Text
describeEngagementResponse_content = Lens.lens (\DescribeEngagementResponse' {content} -> content) (\s@DescribeEngagementResponse' {} a -> s {content = a} :: DescribeEngagementResponse)

instance Prelude.NFData DescribeEngagementResponse
