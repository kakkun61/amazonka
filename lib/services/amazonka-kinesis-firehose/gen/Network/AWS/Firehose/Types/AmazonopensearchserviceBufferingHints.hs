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
-- Module      : Network.AWS.Firehose.Types.AmazonopensearchserviceBufferingHints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.AmazonopensearchserviceBufferingHints where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newAmazonopensearchserviceBufferingHints' smart constructor.
data AmazonopensearchserviceBufferingHints = AmazonopensearchserviceBufferingHints'
  { sizeInMBs :: Prelude.Maybe Prelude.Natural,
    intervalInSeconds :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AmazonopensearchserviceBufferingHints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sizeInMBs', 'amazonopensearchserviceBufferingHints_sizeInMBs' - Undocumented member.
--
-- 'intervalInSeconds', 'amazonopensearchserviceBufferingHints_intervalInSeconds' - Undocumented member.
newAmazonopensearchserviceBufferingHints ::
  AmazonopensearchserviceBufferingHints
newAmazonopensearchserviceBufferingHints =
  AmazonopensearchserviceBufferingHints'
    { sizeInMBs =
        Prelude.Nothing,
      intervalInSeconds = Prelude.Nothing
    }

-- | Undocumented member.
amazonopensearchserviceBufferingHints_sizeInMBs :: Lens.Lens' AmazonopensearchserviceBufferingHints (Prelude.Maybe Prelude.Natural)
amazonopensearchserviceBufferingHints_sizeInMBs = Lens.lens (\AmazonopensearchserviceBufferingHints' {sizeInMBs} -> sizeInMBs) (\s@AmazonopensearchserviceBufferingHints' {} a -> s {sizeInMBs = a} :: AmazonopensearchserviceBufferingHints)

-- | Undocumented member.
amazonopensearchserviceBufferingHints_intervalInSeconds :: Lens.Lens' AmazonopensearchserviceBufferingHints (Prelude.Maybe Prelude.Natural)
amazonopensearchserviceBufferingHints_intervalInSeconds = Lens.lens (\AmazonopensearchserviceBufferingHints' {intervalInSeconds} -> intervalInSeconds) (\s@AmazonopensearchserviceBufferingHints' {} a -> s {intervalInSeconds = a} :: AmazonopensearchserviceBufferingHints)

instance
  Core.FromJSON
    AmazonopensearchserviceBufferingHints
  where
  parseJSON =
    Core.withObject
      "AmazonopensearchserviceBufferingHints"
      ( \x ->
          AmazonopensearchserviceBufferingHints'
            Prelude.<$> (x Core..:? "SizeInMBs")
            Prelude.<*> (x Core..:? "IntervalInSeconds")
      )

instance
  Prelude.Hashable
    AmazonopensearchserviceBufferingHints

instance
  Prelude.NFData
    AmazonopensearchserviceBufferingHints

instance
  Core.ToJSON
    AmazonopensearchserviceBufferingHints
  where
  toJSON AmazonopensearchserviceBufferingHints' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SizeInMBs" Core..=) Prelude.<$> sizeInMBs,
            ("IntervalInSeconds" Core..=)
              Prelude.<$> intervalInSeconds
          ]
      )
