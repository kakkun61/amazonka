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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.LambdaOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.LambdaOutput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | When you configure a SQL-based Kinesis Data Analytics application\'s
-- output, identifies an Amazon Lambda function as the destination. You
-- provide the function Amazon Resource Name (ARN) of the Lambda function.
--
-- /See:/ 'newLambdaOutput' smart constructor.
data LambdaOutput = LambdaOutput'
  { -- | The Amazon Resource Name (ARN) of the destination Lambda function to
    -- write to.
    --
    -- To specify an earlier version of the Lambda function than the latest,
    -- include the Lambda function version in the Lambda function ARN. For more
    -- information about Lambda ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda Example ARNs: Amazon Lambda>
    resourceARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LambdaOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'lambdaOutput_resourceARN' - The Amazon Resource Name (ARN) of the destination Lambda function to
-- write to.
--
-- To specify an earlier version of the Lambda function than the latest,
-- include the Lambda function version in the Lambda function ARN. For more
-- information about Lambda ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda Example ARNs: Amazon Lambda>
newLambdaOutput ::
  -- | 'resourceARN'
  Prelude.Text ->
  LambdaOutput
newLambdaOutput pResourceARN_ =
  LambdaOutput' {resourceARN = pResourceARN_}

-- | The Amazon Resource Name (ARN) of the destination Lambda function to
-- write to.
--
-- To specify an earlier version of the Lambda function than the latest,
-- include the Lambda function version in the Lambda function ARN. For more
-- information about Lambda ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda Example ARNs: Amazon Lambda>
lambdaOutput_resourceARN :: Lens.Lens' LambdaOutput Prelude.Text
lambdaOutput_resourceARN = Lens.lens (\LambdaOutput' {resourceARN} -> resourceARN) (\s@LambdaOutput' {} a -> s {resourceARN = a} :: LambdaOutput)

instance Prelude.Hashable LambdaOutput

instance Prelude.NFData LambdaOutput

instance Core.ToJSON LambdaOutput where
  toJSON LambdaOutput' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ResourceARN" Core..= resourceARN)]
      )
