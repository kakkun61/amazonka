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
-- Module      : Network.AWS.LookoutMetrics.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.Action where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types.LambdaConfiguration
import Network.AWS.LookoutMetrics.Types.SNSConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | A configuration that specifies the action to perform when anomalies are
-- detected.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action'
  { -- | A configuration for an AWS Lambda channel.
    lambdaConfiguration :: Prelude.Maybe LambdaConfiguration,
    -- | A configuration for an Amazon SNS channel.
    sNSConfiguration :: Prelude.Maybe SNSConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Action' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lambdaConfiguration', 'action_lambdaConfiguration' - A configuration for an AWS Lambda channel.
--
-- 'sNSConfiguration', 'action_sNSConfiguration' - A configuration for an Amazon SNS channel.
newAction ::
  Action
newAction =
  Action'
    { lambdaConfiguration = Prelude.Nothing,
      sNSConfiguration = Prelude.Nothing
    }

-- | A configuration for an AWS Lambda channel.
action_lambdaConfiguration :: Lens.Lens' Action (Prelude.Maybe LambdaConfiguration)
action_lambdaConfiguration = Lens.lens (\Action' {lambdaConfiguration} -> lambdaConfiguration) (\s@Action' {} a -> s {lambdaConfiguration = a} :: Action)

-- | A configuration for an Amazon SNS channel.
action_sNSConfiguration :: Lens.Lens' Action (Prelude.Maybe SNSConfiguration)
action_sNSConfiguration = Lens.lens (\Action' {sNSConfiguration} -> sNSConfiguration) (\s@Action' {} a -> s {sNSConfiguration = a} :: Action)

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \x ->
          Action'
            Prelude.<$> (x Core..:? "LambdaConfiguration")
            Prelude.<*> (x Core..:? "SNSConfiguration")
      )

instance Prelude.Hashable Action

instance Prelude.NFData Action

instance Core.ToJSON Action where
  toJSON Action' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LambdaConfiguration" Core..=)
              Prelude.<$> lambdaConfiguration,
            ("SNSConfiguration" Core..=)
              Prelude.<$> sNSConfiguration
          ]
      )
