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
-- Module      : Network.AWS.CustomerProfiles.CreateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain, which is a container for all customer data, such as
-- customer profile attributes, object types, profile keys, and encryption
-- keys. You can create multiple domains, and each domain can have multiple
-- third-party integrations.
--
-- Each Amazon Connect instance can be associated with only one domain.
-- Multiple Amazon Connect instances can be associated with one domain.
--
-- Use this API or
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html UpdateDomain>
-- to enable
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html identity resolution>:
-- set @Matching@ to true.
module Network.AWS.CustomerProfiles.CreateDomain
  ( -- * Creating a Request
    CreateDomain (..),
    newCreateDomain,

    -- * Request Lenses
    createDomain_defaultEncryptionKey,
    createDomain_matching,
    createDomain_deadLetterQueueUrl,
    createDomain_tags,
    createDomain_domainName,
    createDomain_defaultExpirationDays,

    -- * Destructuring the Response
    CreateDomainResponse (..),
    newCreateDomainResponse,

    -- * Response Lenses
    createDomainResponse_defaultEncryptionKey,
    createDomainResponse_matching,
    createDomainResponse_deadLetterQueueUrl,
    createDomainResponse_tags,
    createDomainResponse_httpStatus,
    createDomainResponse_domainName,
    createDomainResponse_defaultExpirationDays,
    createDomainResponse_createdAt,
    createDomainResponse_lastUpdatedAt,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDomain' smart constructor.
data CreateDomain = CreateDomain'
  { -- | The default encryption key, which is an AWS managed key, is used when no
    -- specific type of encryption key is specified. It is used to encrypt all
    -- data before it is placed in permanent or semi-permanent storage.
    defaultEncryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The process of matching duplicate profiles. If Matching = true, Amazon
    -- Connect Customer Profiles starts a weekly batch process every Saturday
    -- at 12AM UTC to detect duplicate profiles in your domains. After that
    -- batch process completes, use the
    -- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
    -- API to return and review the results.
    matching :: Prelude.Maybe MatchingRequest,
    -- | The URL of the SQS dead letter queue, which is used for reporting errors
    -- associated with ingesting data from third party applications. You must
    -- set up a policy on the DeadLetterQueue for the SendMessage operation to
    -- enable Amazon Connect Customer Profiles to send messages to the
    -- DeadLetterQueue.
    deadLetterQueueUrl :: Prelude.Maybe Prelude.Text,
    -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | The default number of days until the data within the domain expires.
    defaultExpirationDays :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultEncryptionKey', 'createDomain_defaultEncryptionKey' - The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
--
-- 'matching', 'createDomain_matching' - The process of matching duplicate profiles. If Matching = true, Amazon
-- Connect Customer Profiles starts a weekly batch process every Saturday
-- at 12AM UTC to detect duplicate profiles in your domains. After that
-- batch process completes, use the
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
-- API to return and review the results.
--
-- 'deadLetterQueueUrl', 'createDomain_deadLetterQueueUrl' - The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications. You must
-- set up a policy on the DeadLetterQueue for the SendMessage operation to
-- enable Amazon Connect Customer Profiles to send messages to the
-- DeadLetterQueue.
--
-- 'tags', 'createDomain_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'domainName', 'createDomain_domainName' - The unique name of the domain.
--
-- 'defaultExpirationDays', 'createDomain_defaultExpirationDays' - The default number of days until the data within the domain expires.
newCreateDomain ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'defaultExpirationDays'
  Prelude.Natural ->
  CreateDomain
newCreateDomain pDomainName_ pDefaultExpirationDays_ =
  CreateDomain'
    { defaultEncryptionKey =
        Prelude.Nothing,
      matching = Prelude.Nothing,
      deadLetterQueueUrl = Prelude.Nothing,
      tags = Prelude.Nothing,
      domainName = pDomainName_,
      defaultExpirationDays = pDefaultExpirationDays_
    }

-- | The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
createDomain_defaultEncryptionKey :: Lens.Lens' CreateDomain (Prelude.Maybe Prelude.Text)
createDomain_defaultEncryptionKey = Lens.lens (\CreateDomain' {defaultEncryptionKey} -> defaultEncryptionKey) (\s@CreateDomain' {} a -> s {defaultEncryptionKey = a} :: CreateDomain)

-- | The process of matching duplicate profiles. If Matching = true, Amazon
-- Connect Customer Profiles starts a weekly batch process every Saturday
-- at 12AM UTC to detect duplicate profiles in your domains. After that
-- batch process completes, use the
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
-- API to return and review the results.
createDomain_matching :: Lens.Lens' CreateDomain (Prelude.Maybe MatchingRequest)
createDomain_matching = Lens.lens (\CreateDomain' {matching} -> matching) (\s@CreateDomain' {} a -> s {matching = a} :: CreateDomain)

-- | The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications. You must
-- set up a policy on the DeadLetterQueue for the SendMessage operation to
-- enable Amazon Connect Customer Profiles to send messages to the
-- DeadLetterQueue.
createDomain_deadLetterQueueUrl :: Lens.Lens' CreateDomain (Prelude.Maybe Prelude.Text)
createDomain_deadLetterQueueUrl = Lens.lens (\CreateDomain' {deadLetterQueueUrl} -> deadLetterQueueUrl) (\s@CreateDomain' {} a -> s {deadLetterQueueUrl = a} :: CreateDomain)

-- | The tags used to organize, track, or control access for this resource.
createDomain_tags :: Lens.Lens' CreateDomain (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDomain_tags = Lens.lens (\CreateDomain' {tags} -> tags) (\s@CreateDomain' {} a -> s {tags = a} :: CreateDomain) Prelude.. Lens.mapping Lens.coerced

-- | The unique name of the domain.
createDomain_domainName :: Lens.Lens' CreateDomain Prelude.Text
createDomain_domainName = Lens.lens (\CreateDomain' {domainName} -> domainName) (\s@CreateDomain' {} a -> s {domainName = a} :: CreateDomain)

-- | The default number of days until the data within the domain expires.
createDomain_defaultExpirationDays :: Lens.Lens' CreateDomain Prelude.Natural
createDomain_defaultExpirationDays = Lens.lens (\CreateDomain' {defaultExpirationDays} -> defaultExpirationDays) (\s@CreateDomain' {} a -> s {defaultExpirationDays = a} :: CreateDomain)

instance Core.AWSRequest CreateDomain where
  type AWSResponse CreateDomain = CreateDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDomainResponse'
            Prelude.<$> (x Core..?> "DefaultEncryptionKey")
            Prelude.<*> (x Core..?> "Matching")
            Prelude.<*> (x Core..?> "DeadLetterQueueUrl")
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DomainName")
            Prelude.<*> (x Core..:> "DefaultExpirationDays")
            Prelude.<*> (x Core..:> "CreatedAt")
            Prelude.<*> (x Core..:> "LastUpdatedAt")
      )

instance Prelude.Hashable CreateDomain

instance Prelude.NFData CreateDomain

instance Core.ToHeaders CreateDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDomain where
  toJSON CreateDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DefaultEncryptionKey" Core..=)
              Prelude.<$> defaultEncryptionKey,
            ("Matching" Core..=) Prelude.<$> matching,
            ("DeadLetterQueueUrl" Core..=)
              Prelude.<$> deadLetterQueueUrl,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ( "DefaultExpirationDays"
                  Core..= defaultExpirationDays
              )
          ]
      )

instance Core.ToPath CreateDomain where
  toPath CreateDomain' {..} =
    Prelude.mconcat ["/domains/", Core.toBS domainName]

instance Core.ToQuery CreateDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDomainResponse' smart constructor.
data CreateDomainResponse = CreateDomainResponse'
  { -- | The default encryption key, which is an AWS managed key, is used when no
    -- specific type of encryption key is specified. It is used to encrypt all
    -- data before it is placed in permanent or semi-permanent storage.
    defaultEncryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The process of matching duplicate profiles. If Matching = true, Amazon
    -- Connect Customer Profiles starts a weekly batch process every Saturday
    -- at 12AM UTC to detect duplicate profiles in your domains. After that
    -- batch process completes, use the
    -- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
    -- API to return and review the results.
    matching :: Prelude.Maybe MatchingResponse,
    -- | The URL of the SQS dead letter queue, which is used for reporting errors
    -- associated with ingesting data from third party applications.
    deadLetterQueueUrl :: Prelude.Maybe Prelude.Text,
    -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | The default number of days until the data within the domain expires.
    defaultExpirationDays :: Prelude.Natural,
    -- | The timestamp of when the domain was created.
    createdAt :: Core.POSIX,
    -- | The timestamp of when the domain was most recently edited.
    lastUpdatedAt :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultEncryptionKey', 'createDomainResponse_defaultEncryptionKey' - The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
--
-- 'matching', 'createDomainResponse_matching' - The process of matching duplicate profiles. If Matching = true, Amazon
-- Connect Customer Profiles starts a weekly batch process every Saturday
-- at 12AM UTC to detect duplicate profiles in your domains. After that
-- batch process completes, use the
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
-- API to return and review the results.
--
-- 'deadLetterQueueUrl', 'createDomainResponse_deadLetterQueueUrl' - The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications.
--
-- 'tags', 'createDomainResponse_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'httpStatus', 'createDomainResponse_httpStatus' - The response's http status code.
--
-- 'domainName', 'createDomainResponse_domainName' - The unique name of the domain.
--
-- 'defaultExpirationDays', 'createDomainResponse_defaultExpirationDays' - The default number of days until the data within the domain expires.
--
-- 'createdAt', 'createDomainResponse_createdAt' - The timestamp of when the domain was created.
--
-- 'lastUpdatedAt', 'createDomainResponse_lastUpdatedAt' - The timestamp of when the domain was most recently edited.
newCreateDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainName'
  Prelude.Text ->
  -- | 'defaultExpirationDays'
  Prelude.Natural ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'lastUpdatedAt'
  Prelude.UTCTime ->
  CreateDomainResponse
newCreateDomainResponse
  pHttpStatus_
  pDomainName_
  pDefaultExpirationDays_
  pCreatedAt_
  pLastUpdatedAt_ =
    CreateDomainResponse'
      { defaultEncryptionKey =
          Prelude.Nothing,
        matching = Prelude.Nothing,
        deadLetterQueueUrl = Prelude.Nothing,
        tags = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        domainName = pDomainName_,
        defaultExpirationDays = pDefaultExpirationDays_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        lastUpdatedAt = Core._Time Lens.# pLastUpdatedAt_
      }

-- | The default encryption key, which is an AWS managed key, is used when no
-- specific type of encryption key is specified. It is used to encrypt all
-- data before it is placed in permanent or semi-permanent storage.
createDomainResponse_defaultEncryptionKey :: Lens.Lens' CreateDomainResponse (Prelude.Maybe Prelude.Text)
createDomainResponse_defaultEncryptionKey = Lens.lens (\CreateDomainResponse' {defaultEncryptionKey} -> defaultEncryptionKey) (\s@CreateDomainResponse' {} a -> s {defaultEncryptionKey = a} :: CreateDomainResponse)

-- | The process of matching duplicate profiles. If Matching = true, Amazon
-- Connect Customer Profiles starts a weekly batch process every Saturday
-- at 12AM UTC to detect duplicate profiles in your domains. After that
-- batch process completes, use the
-- <https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html GetMatches>
-- API to return and review the results.
createDomainResponse_matching :: Lens.Lens' CreateDomainResponse (Prelude.Maybe MatchingResponse)
createDomainResponse_matching = Lens.lens (\CreateDomainResponse' {matching} -> matching) (\s@CreateDomainResponse' {} a -> s {matching = a} :: CreateDomainResponse)

-- | The URL of the SQS dead letter queue, which is used for reporting errors
-- associated with ingesting data from third party applications.
createDomainResponse_deadLetterQueueUrl :: Lens.Lens' CreateDomainResponse (Prelude.Maybe Prelude.Text)
createDomainResponse_deadLetterQueueUrl = Lens.lens (\CreateDomainResponse' {deadLetterQueueUrl} -> deadLetterQueueUrl) (\s@CreateDomainResponse' {} a -> s {deadLetterQueueUrl = a} :: CreateDomainResponse)

-- | The tags used to organize, track, or control access for this resource.
createDomainResponse_tags :: Lens.Lens' CreateDomainResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDomainResponse_tags = Lens.lens (\CreateDomainResponse' {tags} -> tags) (\s@CreateDomainResponse' {} a -> s {tags = a} :: CreateDomainResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createDomainResponse_httpStatus :: Lens.Lens' CreateDomainResponse Prelude.Int
createDomainResponse_httpStatus = Lens.lens (\CreateDomainResponse' {httpStatus} -> httpStatus) (\s@CreateDomainResponse' {} a -> s {httpStatus = a} :: CreateDomainResponse)

-- | The unique name of the domain.
createDomainResponse_domainName :: Lens.Lens' CreateDomainResponse Prelude.Text
createDomainResponse_domainName = Lens.lens (\CreateDomainResponse' {domainName} -> domainName) (\s@CreateDomainResponse' {} a -> s {domainName = a} :: CreateDomainResponse)

-- | The default number of days until the data within the domain expires.
createDomainResponse_defaultExpirationDays :: Lens.Lens' CreateDomainResponse Prelude.Natural
createDomainResponse_defaultExpirationDays = Lens.lens (\CreateDomainResponse' {defaultExpirationDays} -> defaultExpirationDays) (\s@CreateDomainResponse' {} a -> s {defaultExpirationDays = a} :: CreateDomainResponse)

-- | The timestamp of when the domain was created.
createDomainResponse_createdAt :: Lens.Lens' CreateDomainResponse Prelude.UTCTime
createDomainResponse_createdAt = Lens.lens (\CreateDomainResponse' {createdAt} -> createdAt) (\s@CreateDomainResponse' {} a -> s {createdAt = a} :: CreateDomainResponse) Prelude.. Core._Time

-- | The timestamp of when the domain was most recently edited.
createDomainResponse_lastUpdatedAt :: Lens.Lens' CreateDomainResponse Prelude.UTCTime
createDomainResponse_lastUpdatedAt = Lens.lens (\CreateDomainResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@CreateDomainResponse' {} a -> s {lastUpdatedAt = a} :: CreateDomainResponse) Prelude.. Core._Time

instance Prelude.NFData CreateDomainResponse
