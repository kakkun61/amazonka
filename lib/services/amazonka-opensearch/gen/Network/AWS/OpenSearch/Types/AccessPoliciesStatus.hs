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
-- Module      : Network.AWS.OpenSearch.Types.AccessPoliciesStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.AccessPoliciesStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.OptionStatus
import qualified Network.AWS.Prelude as Prelude

-- | The configured access rules for the domain\'s document and search
-- endpoints, and the current status of those rules.
--
-- /See:/ 'newAccessPoliciesStatus' smart constructor.
data AccessPoliciesStatus = AccessPoliciesStatus'
  { -- | The access policy configured for the domain. Access policies can be
    -- resource-based, IP-based, or IAM-based. See
    -- <http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies Configuring access policies>for
    -- more information.
    options :: Prelude.Text,
    -- | The status of the access policy for the domain. See @OptionStatus@ for
    -- the status information that\'s included.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessPoliciesStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'accessPoliciesStatus_options' - The access policy configured for the domain. Access policies can be
-- resource-based, IP-based, or IAM-based. See
-- <http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies Configuring access policies>for
-- more information.
--
-- 'status', 'accessPoliciesStatus_status' - The status of the access policy for the domain. See @OptionStatus@ for
-- the status information that\'s included.
newAccessPoliciesStatus ::
  -- | 'options'
  Prelude.Text ->
  -- | 'status'
  OptionStatus ->
  AccessPoliciesStatus
newAccessPoliciesStatus pOptions_ pStatus_ =
  AccessPoliciesStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | The access policy configured for the domain. Access policies can be
-- resource-based, IP-based, or IAM-based. See
-- <http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies Configuring access policies>for
-- more information.
accessPoliciesStatus_options :: Lens.Lens' AccessPoliciesStatus Prelude.Text
accessPoliciesStatus_options = Lens.lens (\AccessPoliciesStatus' {options} -> options) (\s@AccessPoliciesStatus' {} a -> s {options = a} :: AccessPoliciesStatus)

-- | The status of the access policy for the domain. See @OptionStatus@ for
-- the status information that\'s included.
accessPoliciesStatus_status :: Lens.Lens' AccessPoliciesStatus OptionStatus
accessPoliciesStatus_status = Lens.lens (\AccessPoliciesStatus' {status} -> status) (\s@AccessPoliciesStatus' {} a -> s {status = a} :: AccessPoliciesStatus)

instance Core.FromJSON AccessPoliciesStatus where
  parseJSON =
    Core.withObject
      "AccessPoliciesStatus"
      ( \x ->
          AccessPoliciesStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance Prelude.Hashable AccessPoliciesStatus

instance Prelude.NFData AccessPoliciesStatus
