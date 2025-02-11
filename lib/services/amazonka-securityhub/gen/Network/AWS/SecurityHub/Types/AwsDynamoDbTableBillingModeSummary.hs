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
-- Module      : Network.AWS.SecurityHub.Types.AwsDynamoDbTableBillingModeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsDynamoDbTableBillingModeSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the billing for read\/write capacity on the
-- table.
--
-- /See:/ 'newAwsDynamoDbTableBillingModeSummary' smart constructor.
data AwsDynamoDbTableBillingModeSummary = AwsDynamoDbTableBillingModeSummary'
  { -- | If the billing mode is @PAY_PER_REQUEST@, indicates when the billing
    -- mode was set to that value.
    --
    -- Uses the @date-time@ format specified in
    -- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
    -- The value cannot contain spaces. For example,
    -- @2020-03-22T13:22:13.933Z@.
    lastUpdateToPayPerRequestDateTime :: Prelude.Maybe Prelude.Text,
    -- | The method used to charge for read and write throughput and to manage
    -- capacity.
    billingMode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsDynamoDbTableBillingModeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdateToPayPerRequestDateTime', 'awsDynamoDbTableBillingModeSummary_lastUpdateToPayPerRequestDateTime' - If the billing mode is @PAY_PER_REQUEST@, indicates when the billing
-- mode was set to that value.
--
-- Uses the @date-time@ format specified in
-- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
-- The value cannot contain spaces. For example,
-- @2020-03-22T13:22:13.933Z@.
--
-- 'billingMode', 'awsDynamoDbTableBillingModeSummary_billingMode' - The method used to charge for read and write throughput and to manage
-- capacity.
newAwsDynamoDbTableBillingModeSummary ::
  AwsDynamoDbTableBillingModeSummary
newAwsDynamoDbTableBillingModeSummary =
  AwsDynamoDbTableBillingModeSummary'
    { lastUpdateToPayPerRequestDateTime =
        Prelude.Nothing,
      billingMode = Prelude.Nothing
    }

-- | If the billing mode is @PAY_PER_REQUEST@, indicates when the billing
-- mode was set to that value.
--
-- Uses the @date-time@ format specified in
-- <https://tools.ietf.org/html/rfc3339#section-5.6 RFC 3339 section 5.6, Internet Date\/Time Format>.
-- The value cannot contain spaces. For example,
-- @2020-03-22T13:22:13.933Z@.
awsDynamoDbTableBillingModeSummary_lastUpdateToPayPerRequestDateTime :: Lens.Lens' AwsDynamoDbTableBillingModeSummary (Prelude.Maybe Prelude.Text)
awsDynamoDbTableBillingModeSummary_lastUpdateToPayPerRequestDateTime = Lens.lens (\AwsDynamoDbTableBillingModeSummary' {lastUpdateToPayPerRequestDateTime} -> lastUpdateToPayPerRequestDateTime) (\s@AwsDynamoDbTableBillingModeSummary' {} a -> s {lastUpdateToPayPerRequestDateTime = a} :: AwsDynamoDbTableBillingModeSummary)

-- | The method used to charge for read and write throughput and to manage
-- capacity.
awsDynamoDbTableBillingModeSummary_billingMode :: Lens.Lens' AwsDynamoDbTableBillingModeSummary (Prelude.Maybe Prelude.Text)
awsDynamoDbTableBillingModeSummary_billingMode = Lens.lens (\AwsDynamoDbTableBillingModeSummary' {billingMode} -> billingMode) (\s@AwsDynamoDbTableBillingModeSummary' {} a -> s {billingMode = a} :: AwsDynamoDbTableBillingModeSummary)

instance
  Core.FromJSON
    AwsDynamoDbTableBillingModeSummary
  where
  parseJSON =
    Core.withObject
      "AwsDynamoDbTableBillingModeSummary"
      ( \x ->
          AwsDynamoDbTableBillingModeSummary'
            Prelude.<$> (x Core..:? "LastUpdateToPayPerRequestDateTime")
            Prelude.<*> (x Core..:? "BillingMode")
      )

instance
  Prelude.Hashable
    AwsDynamoDbTableBillingModeSummary

instance
  Prelude.NFData
    AwsDynamoDbTableBillingModeSummary

instance
  Core.ToJSON
    AwsDynamoDbTableBillingModeSummary
  where
  toJSON AwsDynamoDbTableBillingModeSummary' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LastUpdateToPayPerRequestDateTime" Core..=)
              Prelude.<$> lastUpdateToPayPerRequestDateTime,
            ("BillingMode" Core..=) Prelude.<$> billingMode
          ]
      )
