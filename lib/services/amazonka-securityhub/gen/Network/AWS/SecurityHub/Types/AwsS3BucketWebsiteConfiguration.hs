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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRedirectTo
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRoutingRule

-- | Website parameters for the S3 bucket.
--
-- /See:/ 'newAwsS3BucketWebsiteConfiguration' smart constructor.
data AwsS3BucketWebsiteConfiguration = AwsS3BucketWebsiteConfiguration'
  { -- | The redirect behavior for requests to the website.
    redirectAllRequestsTo :: Prelude.Maybe AwsS3BucketWebsiteConfigurationRedirectTo,
    -- | The name of the index document for the website.
    indexDocumentSuffix :: Prelude.Maybe Prelude.Text,
    -- | The name of the error document for the website.
    errorDocument :: Prelude.Maybe Prelude.Text,
    -- | The rules for applying redirects for requests to the website.
    routingRules :: Prelude.Maybe [AwsS3BucketWebsiteConfigurationRoutingRule]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketWebsiteConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'redirectAllRequestsTo', 'awsS3BucketWebsiteConfiguration_redirectAllRequestsTo' - The redirect behavior for requests to the website.
--
-- 'indexDocumentSuffix', 'awsS3BucketWebsiteConfiguration_indexDocumentSuffix' - The name of the index document for the website.
--
-- 'errorDocument', 'awsS3BucketWebsiteConfiguration_errorDocument' - The name of the error document for the website.
--
-- 'routingRules', 'awsS3BucketWebsiteConfiguration_routingRules' - The rules for applying redirects for requests to the website.
newAwsS3BucketWebsiteConfiguration ::
  AwsS3BucketWebsiteConfiguration
newAwsS3BucketWebsiteConfiguration =
  AwsS3BucketWebsiteConfiguration'
    { redirectAllRequestsTo =
        Prelude.Nothing,
      indexDocumentSuffix = Prelude.Nothing,
      errorDocument = Prelude.Nothing,
      routingRules = Prelude.Nothing
    }

-- | The redirect behavior for requests to the website.
awsS3BucketWebsiteConfiguration_redirectAllRequestsTo :: Lens.Lens' AwsS3BucketWebsiteConfiguration (Prelude.Maybe AwsS3BucketWebsiteConfigurationRedirectTo)
awsS3BucketWebsiteConfiguration_redirectAllRequestsTo = Lens.lens (\AwsS3BucketWebsiteConfiguration' {redirectAllRequestsTo} -> redirectAllRequestsTo) (\s@AwsS3BucketWebsiteConfiguration' {} a -> s {redirectAllRequestsTo = a} :: AwsS3BucketWebsiteConfiguration)

-- | The name of the index document for the website.
awsS3BucketWebsiteConfiguration_indexDocumentSuffix :: Lens.Lens' AwsS3BucketWebsiteConfiguration (Prelude.Maybe Prelude.Text)
awsS3BucketWebsiteConfiguration_indexDocumentSuffix = Lens.lens (\AwsS3BucketWebsiteConfiguration' {indexDocumentSuffix} -> indexDocumentSuffix) (\s@AwsS3BucketWebsiteConfiguration' {} a -> s {indexDocumentSuffix = a} :: AwsS3BucketWebsiteConfiguration)

-- | The name of the error document for the website.
awsS3BucketWebsiteConfiguration_errorDocument :: Lens.Lens' AwsS3BucketWebsiteConfiguration (Prelude.Maybe Prelude.Text)
awsS3BucketWebsiteConfiguration_errorDocument = Lens.lens (\AwsS3BucketWebsiteConfiguration' {errorDocument} -> errorDocument) (\s@AwsS3BucketWebsiteConfiguration' {} a -> s {errorDocument = a} :: AwsS3BucketWebsiteConfiguration)

-- | The rules for applying redirects for requests to the website.
awsS3BucketWebsiteConfiguration_routingRules :: Lens.Lens' AwsS3BucketWebsiteConfiguration (Prelude.Maybe [AwsS3BucketWebsiteConfigurationRoutingRule])
awsS3BucketWebsiteConfiguration_routingRules = Lens.lens (\AwsS3BucketWebsiteConfiguration' {routingRules} -> routingRules) (\s@AwsS3BucketWebsiteConfiguration' {} a -> s {routingRules = a} :: AwsS3BucketWebsiteConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsS3BucketWebsiteConfiguration
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketWebsiteConfiguration"
      ( \x ->
          AwsS3BucketWebsiteConfiguration'
            Prelude.<$> (x Core..:? "RedirectAllRequestsTo")
            Prelude.<*> (x Core..:? "IndexDocumentSuffix")
            Prelude.<*> (x Core..:? "ErrorDocument")
            Prelude.<*> (x Core..:? "RoutingRules" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsS3BucketWebsiteConfiguration

instance
  Prelude.NFData
    AwsS3BucketWebsiteConfiguration

instance Core.ToJSON AwsS3BucketWebsiteConfiguration where
  toJSON AwsS3BucketWebsiteConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RedirectAllRequestsTo" Core..=)
              Prelude.<$> redirectAllRequestsTo,
            ("IndexDocumentSuffix" Core..=)
              Prelude.<$> indexDocumentSuffix,
            ("ErrorDocument" Core..=) Prelude.<$> errorDocument,
            ("RoutingRules" Core..=) Prelude.<$> routingRules
          ]
      )
