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
-- Module      : Network.AWS.MediaTailor.Types.SlateSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.SlateSource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Slate VOD source configuration.
--
-- /See:/ 'newSlateSource' smart constructor.
data SlateSource = SlateSource'
  { -- | The name of the source location where the slate VOD source is stored.
    sourceLocationName :: Prelude.Maybe Prelude.Text,
    -- | The slate VOD source name. The VOD source must already exist in a source
    -- location before it can be used for slate.
    vodSourceName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SlateSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceLocationName', 'slateSource_sourceLocationName' - The name of the source location where the slate VOD source is stored.
--
-- 'vodSourceName', 'slateSource_vodSourceName' - The slate VOD source name. The VOD source must already exist in a source
-- location before it can be used for slate.
newSlateSource ::
  SlateSource
newSlateSource =
  SlateSource'
    { sourceLocationName = Prelude.Nothing,
      vodSourceName = Prelude.Nothing
    }

-- | The name of the source location where the slate VOD source is stored.
slateSource_sourceLocationName :: Lens.Lens' SlateSource (Prelude.Maybe Prelude.Text)
slateSource_sourceLocationName = Lens.lens (\SlateSource' {sourceLocationName} -> sourceLocationName) (\s@SlateSource' {} a -> s {sourceLocationName = a} :: SlateSource)

-- | The slate VOD source name. The VOD source must already exist in a source
-- location before it can be used for slate.
slateSource_vodSourceName :: Lens.Lens' SlateSource (Prelude.Maybe Prelude.Text)
slateSource_vodSourceName = Lens.lens (\SlateSource' {vodSourceName} -> vodSourceName) (\s@SlateSource' {} a -> s {vodSourceName = a} :: SlateSource)

instance Core.FromJSON SlateSource where
  parseJSON =
    Core.withObject
      "SlateSource"
      ( \x ->
          SlateSource'
            Prelude.<$> (x Core..:? "SourceLocationName")
            Prelude.<*> (x Core..:? "VodSourceName")
      )

instance Prelude.Hashable SlateSource

instance Prelude.NFData SlateSource

instance Core.ToJSON SlateSource where
  toJSON SlateSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SourceLocationName" Core..=)
              Prelude.<$> sourceLocationName,
            ("VodSourceName" Core..=) Prelude.<$> vodSourceName
          ]
      )
