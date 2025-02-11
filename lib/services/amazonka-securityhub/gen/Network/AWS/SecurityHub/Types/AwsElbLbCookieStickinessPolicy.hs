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
-- Module      : Network.AWS.SecurityHub.Types.AwsElbLbCookieStickinessPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElbLbCookieStickinessPolicy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a stickiness policy that was created using
-- @CreateLBCookieStickinessPolicy@.
--
-- /See:/ 'newAwsElbLbCookieStickinessPolicy' smart constructor.
data AwsElbLbCookieStickinessPolicy = AwsElbLbCookieStickinessPolicy'
  { -- | The name of the policy. The name must be unique within the set of
    -- policies for the load balancer.
    policyName :: Prelude.Maybe Prelude.Text,
    -- | The amount of time, in seconds, after which the cookie is considered
    -- stale. If an expiration period is not specified, the stickiness session
    -- lasts for the duration of the browser session.
    cookieExpirationPeriod :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLbCookieStickinessPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyName', 'awsElbLbCookieStickinessPolicy_policyName' - The name of the policy. The name must be unique within the set of
-- policies for the load balancer.
--
-- 'cookieExpirationPeriod', 'awsElbLbCookieStickinessPolicy_cookieExpirationPeriod' - The amount of time, in seconds, after which the cookie is considered
-- stale. If an expiration period is not specified, the stickiness session
-- lasts for the duration of the browser session.
newAwsElbLbCookieStickinessPolicy ::
  AwsElbLbCookieStickinessPolicy
newAwsElbLbCookieStickinessPolicy =
  AwsElbLbCookieStickinessPolicy'
    { policyName =
        Prelude.Nothing,
      cookieExpirationPeriod = Prelude.Nothing
    }

-- | The name of the policy. The name must be unique within the set of
-- policies for the load balancer.
awsElbLbCookieStickinessPolicy_policyName :: Lens.Lens' AwsElbLbCookieStickinessPolicy (Prelude.Maybe Prelude.Text)
awsElbLbCookieStickinessPolicy_policyName = Lens.lens (\AwsElbLbCookieStickinessPolicy' {policyName} -> policyName) (\s@AwsElbLbCookieStickinessPolicy' {} a -> s {policyName = a} :: AwsElbLbCookieStickinessPolicy)

-- | The amount of time, in seconds, after which the cookie is considered
-- stale. If an expiration period is not specified, the stickiness session
-- lasts for the duration of the browser session.
awsElbLbCookieStickinessPolicy_cookieExpirationPeriod :: Lens.Lens' AwsElbLbCookieStickinessPolicy (Prelude.Maybe Prelude.Integer)
awsElbLbCookieStickinessPolicy_cookieExpirationPeriod = Lens.lens (\AwsElbLbCookieStickinessPolicy' {cookieExpirationPeriod} -> cookieExpirationPeriod) (\s@AwsElbLbCookieStickinessPolicy' {} a -> s {cookieExpirationPeriod = a} :: AwsElbLbCookieStickinessPolicy)

instance Core.FromJSON AwsElbLbCookieStickinessPolicy where
  parseJSON =
    Core.withObject
      "AwsElbLbCookieStickinessPolicy"
      ( \x ->
          AwsElbLbCookieStickinessPolicy'
            Prelude.<$> (x Core..:? "PolicyName")
            Prelude.<*> (x Core..:? "CookieExpirationPeriod")
      )

instance
  Prelude.Hashable
    AwsElbLbCookieStickinessPolicy

instance
  Prelude.NFData
    AwsElbLbCookieStickinessPolicy

instance Core.ToJSON AwsElbLbCookieStickinessPolicy where
  toJSON AwsElbLbCookieStickinessPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PolicyName" Core..=) Prelude.<$> policyName,
            ("CookieExpirationPeriod" Core..=)
              Prelude.<$> cookieExpirationPeriod
          ]
      )
