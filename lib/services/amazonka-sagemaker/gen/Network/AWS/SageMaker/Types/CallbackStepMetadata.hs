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
-- Module      : Network.AWS.SageMaker.Types.CallbackStepMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CallbackStepMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.OutputParameter

-- | Metadata about a callback step.
--
-- /See:/ 'newCallbackStepMetadata' smart constructor.
data CallbackStepMetadata = CallbackStepMetadata'
  { -- | The pipeline generated token from the Amazon SQS queue.
    callbackToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the output parameters of the callback step.
    outputParameters :: Prelude.Maybe [OutputParameter],
    -- | The URL of the Amazon Simple Queue Service (Amazon SQS) queue used by
    -- the callback step.
    sqsQueueUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CallbackStepMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callbackToken', 'callbackStepMetadata_callbackToken' - The pipeline generated token from the Amazon SQS queue.
--
-- 'outputParameters', 'callbackStepMetadata_outputParameters' - A list of the output parameters of the callback step.
--
-- 'sqsQueueUrl', 'callbackStepMetadata_sqsQueueUrl' - The URL of the Amazon Simple Queue Service (Amazon SQS) queue used by
-- the callback step.
newCallbackStepMetadata ::
  CallbackStepMetadata
newCallbackStepMetadata =
  CallbackStepMetadata'
    { callbackToken =
        Prelude.Nothing,
      outputParameters = Prelude.Nothing,
      sqsQueueUrl = Prelude.Nothing
    }

-- | The pipeline generated token from the Amazon SQS queue.
callbackStepMetadata_callbackToken :: Lens.Lens' CallbackStepMetadata (Prelude.Maybe Prelude.Text)
callbackStepMetadata_callbackToken = Lens.lens (\CallbackStepMetadata' {callbackToken} -> callbackToken) (\s@CallbackStepMetadata' {} a -> s {callbackToken = a} :: CallbackStepMetadata)

-- | A list of the output parameters of the callback step.
callbackStepMetadata_outputParameters :: Lens.Lens' CallbackStepMetadata (Prelude.Maybe [OutputParameter])
callbackStepMetadata_outputParameters = Lens.lens (\CallbackStepMetadata' {outputParameters} -> outputParameters) (\s@CallbackStepMetadata' {} a -> s {outputParameters = a} :: CallbackStepMetadata) Prelude.. Lens.mapping Lens.coerced

-- | The URL of the Amazon Simple Queue Service (Amazon SQS) queue used by
-- the callback step.
callbackStepMetadata_sqsQueueUrl :: Lens.Lens' CallbackStepMetadata (Prelude.Maybe Prelude.Text)
callbackStepMetadata_sqsQueueUrl = Lens.lens (\CallbackStepMetadata' {sqsQueueUrl} -> sqsQueueUrl) (\s@CallbackStepMetadata' {} a -> s {sqsQueueUrl = a} :: CallbackStepMetadata)

instance Core.FromJSON CallbackStepMetadata where
  parseJSON =
    Core.withObject
      "CallbackStepMetadata"
      ( \x ->
          CallbackStepMetadata'
            Prelude.<$> (x Core..:? "CallbackToken")
            Prelude.<*> ( x Core..:? "OutputParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "SqsQueueUrl")
      )

instance Prelude.Hashable CallbackStepMetadata

instance Prelude.NFData CallbackStepMetadata
