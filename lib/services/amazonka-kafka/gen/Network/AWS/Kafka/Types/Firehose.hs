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
-- Module      : Network.AWS.Kafka.Types.Firehose
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.Firehose where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newFirehose' smart constructor.
data Firehose = Firehose'
  { deliveryStream :: Prelude.Maybe Prelude.Text,
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Firehose' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deliveryStream', 'firehose_deliveryStream' - Undocumented member.
--
-- 'enabled', 'firehose_enabled' - Undocumented member.
newFirehose ::
  -- | 'enabled'
  Prelude.Bool ->
  Firehose
newFirehose pEnabled_ =
  Firehose'
    { deliveryStream = Prelude.Nothing,
      enabled = pEnabled_
    }

-- | Undocumented member.
firehose_deliveryStream :: Lens.Lens' Firehose (Prelude.Maybe Prelude.Text)
firehose_deliveryStream = Lens.lens (\Firehose' {deliveryStream} -> deliveryStream) (\s@Firehose' {} a -> s {deliveryStream = a} :: Firehose)

-- | Undocumented member.
firehose_enabled :: Lens.Lens' Firehose Prelude.Bool
firehose_enabled = Lens.lens (\Firehose' {enabled} -> enabled) (\s@Firehose' {} a -> s {enabled = a} :: Firehose)

instance Core.FromJSON Firehose where
  parseJSON =
    Core.withObject
      "Firehose"
      ( \x ->
          Firehose'
            Prelude.<$> (x Core..:? "deliveryStream")
            Prelude.<*> (x Core..: "enabled")
      )

instance Prelude.Hashable Firehose

instance Prelude.NFData Firehose

instance Core.ToJSON Firehose where
  toJSON Firehose' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("deliveryStream" Core..=)
              Prelude.<$> deliveryStream,
            Prelude.Just ("enabled" Core..= enabled)
          ]
      )
