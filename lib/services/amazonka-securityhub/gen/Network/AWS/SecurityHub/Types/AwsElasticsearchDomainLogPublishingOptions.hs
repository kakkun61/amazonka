{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecurityHub.Types.AwsElasticsearchDomainLogPublishingOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElasticsearchDomainLogPublishingOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainLogPublishingOptionsLogConfig

-- | configures the CloudWatch Logs to publish for the Elasticsearch domain.
--
-- /See:/ 'newAwsElasticsearchDomainLogPublishingOptions' smart constructor.
data AwsElasticsearchDomainLogPublishingOptions = AwsElasticsearchDomainLogPublishingOptions'
  { -- | Configures the OpenSearch index logs publishing.
    indexSlowLogs :: Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig,
    -- | Configures the OpenSearch search slow log publishing.
    searchSlowLogs :: Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig,
    auditLogs :: Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElasticsearchDomainLogPublishingOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'indexSlowLogs', 'awsElasticsearchDomainLogPublishingOptions_indexSlowLogs' - Configures the OpenSearch index logs publishing.
--
-- 'searchSlowLogs', 'awsElasticsearchDomainLogPublishingOptions_searchSlowLogs' - Configures the OpenSearch search slow log publishing.
--
-- 'auditLogs', 'awsElasticsearchDomainLogPublishingOptions_auditLogs' - Undocumented member.
newAwsElasticsearchDomainLogPublishingOptions ::
  AwsElasticsearchDomainLogPublishingOptions
newAwsElasticsearchDomainLogPublishingOptions =
  AwsElasticsearchDomainLogPublishingOptions'
    { indexSlowLogs =
        Prelude.Nothing,
      searchSlowLogs =
        Prelude.Nothing,
      auditLogs = Prelude.Nothing
    }

-- | Configures the OpenSearch index logs publishing.
awsElasticsearchDomainLogPublishingOptions_indexSlowLogs :: Lens.Lens' AwsElasticsearchDomainLogPublishingOptions (Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig)
awsElasticsearchDomainLogPublishingOptions_indexSlowLogs = Lens.lens (\AwsElasticsearchDomainLogPublishingOptions' {indexSlowLogs} -> indexSlowLogs) (\s@AwsElasticsearchDomainLogPublishingOptions' {} a -> s {indexSlowLogs = a} :: AwsElasticsearchDomainLogPublishingOptions)

-- | Configures the OpenSearch search slow log publishing.
awsElasticsearchDomainLogPublishingOptions_searchSlowLogs :: Lens.Lens' AwsElasticsearchDomainLogPublishingOptions (Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig)
awsElasticsearchDomainLogPublishingOptions_searchSlowLogs = Lens.lens (\AwsElasticsearchDomainLogPublishingOptions' {searchSlowLogs} -> searchSlowLogs) (\s@AwsElasticsearchDomainLogPublishingOptions' {} a -> s {searchSlowLogs = a} :: AwsElasticsearchDomainLogPublishingOptions)

-- | Undocumented member.
awsElasticsearchDomainLogPublishingOptions_auditLogs :: Lens.Lens' AwsElasticsearchDomainLogPublishingOptions (Prelude.Maybe AwsElasticsearchDomainLogPublishingOptionsLogConfig)
awsElasticsearchDomainLogPublishingOptions_auditLogs = Lens.lens (\AwsElasticsearchDomainLogPublishingOptions' {auditLogs} -> auditLogs) (\s@AwsElasticsearchDomainLogPublishingOptions' {} a -> s {auditLogs = a} :: AwsElasticsearchDomainLogPublishingOptions)

instance
  Core.FromJSON
    AwsElasticsearchDomainLogPublishingOptions
  where
  parseJSON =
    Core.withObject
      "AwsElasticsearchDomainLogPublishingOptions"
      ( \x ->
          AwsElasticsearchDomainLogPublishingOptions'
            Prelude.<$> (x Core..:? "IndexSlowLogs")
              Prelude.<*> (x Core..:? "SearchSlowLogs")
              Prelude.<*> (x Core..:? "AuditLogs")
      )

instance
  Prelude.Hashable
    AwsElasticsearchDomainLogPublishingOptions

instance
  Prelude.NFData
    AwsElasticsearchDomainLogPublishingOptions

instance
  Core.ToJSON
    AwsElasticsearchDomainLogPublishingOptions
  where
  toJSON
    AwsElasticsearchDomainLogPublishingOptions' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("IndexSlowLogs" Core..=) Prelude.<$> indexSlowLogs,
              ("SearchSlowLogs" Core..=)
                Prelude.<$> searchSlowLogs,
              ("AuditLogs" Core..=) Prelude.<$> auditLogs
            ]
        )
