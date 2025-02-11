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
-- Module      : Network.AWS.Chime.Types.BusinessCallingSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.BusinessCallingSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The Amazon Chime Business Calling settings for the administrator\'s AWS
-- account. Includes any Amazon S3 buckets designated for storing call
-- detail records.
--
-- /See:/ 'newBusinessCallingSettings' smart constructor.
data BusinessCallingSettings = BusinessCallingSettings'
  { -- | The Amazon S3 bucket designated for call detail record storage.
    cdrBucket :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BusinessCallingSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cdrBucket', 'businessCallingSettings_cdrBucket' - The Amazon S3 bucket designated for call detail record storage.
newBusinessCallingSettings ::
  BusinessCallingSettings
newBusinessCallingSettings =
  BusinessCallingSettings'
    { cdrBucket =
        Prelude.Nothing
    }

-- | The Amazon S3 bucket designated for call detail record storage.
businessCallingSettings_cdrBucket :: Lens.Lens' BusinessCallingSettings (Prelude.Maybe Prelude.Text)
businessCallingSettings_cdrBucket = Lens.lens (\BusinessCallingSettings' {cdrBucket} -> cdrBucket) (\s@BusinessCallingSettings' {} a -> s {cdrBucket = a} :: BusinessCallingSettings)

instance Core.FromJSON BusinessCallingSettings where
  parseJSON =
    Core.withObject
      "BusinessCallingSettings"
      ( \x ->
          BusinessCallingSettings'
            Prelude.<$> (x Core..:? "CdrBucket")
      )

instance Prelude.Hashable BusinessCallingSettings

instance Prelude.NFData BusinessCallingSettings

instance Core.ToJSON BusinessCallingSettings where
  toJSON BusinessCallingSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [("CdrBucket" Core..=) Prelude.<$> cdrBucket]
      )
