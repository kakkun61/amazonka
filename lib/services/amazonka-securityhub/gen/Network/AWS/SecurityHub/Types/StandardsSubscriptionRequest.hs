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
-- Module      : Network.AWS.SecurityHub.Types.StandardsSubscriptionRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.StandardsSubscriptionRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The standard that you want to enable.
--
-- /See:/ 'newStandardsSubscriptionRequest' smart constructor.
data StandardsSubscriptionRequest = StandardsSubscriptionRequest'
  { -- | A key-value pair of input for the standard.
    standardsInput :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ARN of the standard that you want to enable. To view the list of
    -- available standards and their ARNs, use the @DescribeStandards@
    -- operation.
    standardsArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StandardsSubscriptionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'standardsInput', 'standardsSubscriptionRequest_standardsInput' - A key-value pair of input for the standard.
--
-- 'standardsArn', 'standardsSubscriptionRequest_standardsArn' - The ARN of the standard that you want to enable. To view the list of
-- available standards and their ARNs, use the @DescribeStandards@
-- operation.
newStandardsSubscriptionRequest ::
  -- | 'standardsArn'
  Prelude.Text ->
  StandardsSubscriptionRequest
newStandardsSubscriptionRequest pStandardsArn_ =
  StandardsSubscriptionRequest'
    { standardsInput =
        Prelude.Nothing,
      standardsArn = pStandardsArn_
    }

-- | A key-value pair of input for the standard.
standardsSubscriptionRequest_standardsInput :: Lens.Lens' StandardsSubscriptionRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
standardsSubscriptionRequest_standardsInput = Lens.lens (\StandardsSubscriptionRequest' {standardsInput} -> standardsInput) (\s@StandardsSubscriptionRequest' {} a -> s {standardsInput = a} :: StandardsSubscriptionRequest) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the standard that you want to enable. To view the list of
-- available standards and their ARNs, use the @DescribeStandards@
-- operation.
standardsSubscriptionRequest_standardsArn :: Lens.Lens' StandardsSubscriptionRequest Prelude.Text
standardsSubscriptionRequest_standardsArn = Lens.lens (\StandardsSubscriptionRequest' {standardsArn} -> standardsArn) (\s@StandardsSubscriptionRequest' {} a -> s {standardsArn = a} :: StandardsSubscriptionRequest)

instance
  Prelude.Hashable
    StandardsSubscriptionRequest

instance Prelude.NFData StandardsSubscriptionRequest

instance Core.ToJSON StandardsSubscriptionRequest where
  toJSON StandardsSubscriptionRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StandardsInput" Core..=)
              Prelude.<$> standardsInput,
            Prelude.Just ("StandardsArn" Core..= standardsArn)
          ]
      )
