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
-- Module      : Network.AWS.SecurityHub.Types.AwsLambdaFunctionTracingConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsLambdaFunctionTracingConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The function\'s X-Ray tracing configuration.
--
-- /See:/ 'newAwsLambdaFunctionTracingConfig' smart constructor.
data AwsLambdaFunctionTracingConfig = AwsLambdaFunctionTracingConfig'
  { -- | The tracing mode.
    mode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsLambdaFunctionTracingConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mode', 'awsLambdaFunctionTracingConfig_mode' - The tracing mode.
newAwsLambdaFunctionTracingConfig ::
  AwsLambdaFunctionTracingConfig
newAwsLambdaFunctionTracingConfig =
  AwsLambdaFunctionTracingConfig'
    { mode =
        Prelude.Nothing
    }

-- | The tracing mode.
awsLambdaFunctionTracingConfig_mode :: Lens.Lens' AwsLambdaFunctionTracingConfig (Prelude.Maybe Prelude.Text)
awsLambdaFunctionTracingConfig_mode = Lens.lens (\AwsLambdaFunctionTracingConfig' {mode} -> mode) (\s@AwsLambdaFunctionTracingConfig' {} a -> s {mode = a} :: AwsLambdaFunctionTracingConfig)

instance Core.FromJSON AwsLambdaFunctionTracingConfig where
  parseJSON =
    Core.withObject
      "AwsLambdaFunctionTracingConfig"
      ( \x ->
          AwsLambdaFunctionTracingConfig'
            Prelude.<$> (x Core..:? "Mode")
      )

instance
  Prelude.Hashable
    AwsLambdaFunctionTracingConfig

instance
  Prelude.NFData
    AwsLambdaFunctionTracingConfig

instance Core.ToJSON AwsLambdaFunctionTracingConfig where
  toJSON AwsLambdaFunctionTracingConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Mode" Core..=) Prelude.<$> mode]
      )
