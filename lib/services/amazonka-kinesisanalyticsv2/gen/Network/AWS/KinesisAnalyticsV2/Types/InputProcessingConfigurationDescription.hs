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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.InputProcessingConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.InputProcessingConfigurationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.InputLambdaProcessorDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For a SQL-based Kinesis Data Analytics application, provides the
-- configuration information about an input processor. Currently, the only
-- input processor available is
-- <https://docs.aws.amazon.com/lambda/ Amazon Lambda>.
--
-- /See:/ 'newInputProcessingConfigurationDescription' smart constructor.
data InputProcessingConfigurationDescription = InputProcessingConfigurationDescription'
  { -- | Provides configuration information about the associated
    -- InputLambdaProcessorDescription
    inputLambdaProcessorDescription :: Prelude.Maybe InputLambdaProcessorDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputProcessingConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputLambdaProcessorDescription', 'inputProcessingConfigurationDescription_inputLambdaProcessorDescription' - Provides configuration information about the associated
-- InputLambdaProcessorDescription
newInputProcessingConfigurationDescription ::
  InputProcessingConfigurationDescription
newInputProcessingConfigurationDescription =
  InputProcessingConfigurationDescription'
    { inputLambdaProcessorDescription =
        Prelude.Nothing
    }

-- | Provides configuration information about the associated
-- InputLambdaProcessorDescription
inputProcessingConfigurationDescription_inputLambdaProcessorDescription :: Lens.Lens' InputProcessingConfigurationDescription (Prelude.Maybe InputLambdaProcessorDescription)
inputProcessingConfigurationDescription_inputLambdaProcessorDescription = Lens.lens (\InputProcessingConfigurationDescription' {inputLambdaProcessorDescription} -> inputLambdaProcessorDescription) (\s@InputProcessingConfigurationDescription' {} a -> s {inputLambdaProcessorDescription = a} :: InputProcessingConfigurationDescription)

instance
  Core.FromJSON
    InputProcessingConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "InputProcessingConfigurationDescription"
      ( \x ->
          InputProcessingConfigurationDescription'
            Prelude.<$> (x Core..:? "InputLambdaProcessorDescription")
      )

instance
  Prelude.Hashable
    InputProcessingConfigurationDescription

instance
  Prelude.NFData
    InputProcessingConfigurationDescription
