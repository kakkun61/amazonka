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
-- Module      : Network.AWS.Chime.Types.StreamingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.StreamingConfiguration where

import Network.AWS.Chime.Types.StreamingNotificationTarget
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The streaming configuration associated with an Amazon Chime Voice
-- Connector. Specifies whether media streaming is enabled for sending to
-- Amazon Kinesis, and shows the retention period for the Amazon Kinesis
-- data, in hours.
--
-- /See:/ 'newStreamingConfiguration' smart constructor.
data StreamingConfiguration = StreamingConfiguration'
  { -- | When true, media streaming to Amazon Kinesis is turned off.
    disabled :: Prelude.Maybe Prelude.Bool,
    -- | The streaming notification targets.
    streamingNotificationTargets :: Prelude.Maybe (Prelude.NonEmpty StreamingNotificationTarget),
    -- | The retention period, in hours, for the Amazon Kinesis data.
    dataRetentionInHours :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'disabled', 'streamingConfiguration_disabled' - When true, media streaming to Amazon Kinesis is turned off.
--
-- 'streamingNotificationTargets', 'streamingConfiguration_streamingNotificationTargets' - The streaming notification targets.
--
-- 'dataRetentionInHours', 'streamingConfiguration_dataRetentionInHours' - The retention period, in hours, for the Amazon Kinesis data.
newStreamingConfiguration ::
  -- | 'dataRetentionInHours'
  Prelude.Natural ->
  StreamingConfiguration
newStreamingConfiguration pDataRetentionInHours_ =
  StreamingConfiguration'
    { disabled = Prelude.Nothing,
      streamingNotificationTargets = Prelude.Nothing,
      dataRetentionInHours = pDataRetentionInHours_
    }

-- | When true, media streaming to Amazon Kinesis is turned off.
streamingConfiguration_disabled :: Lens.Lens' StreamingConfiguration (Prelude.Maybe Prelude.Bool)
streamingConfiguration_disabled = Lens.lens (\StreamingConfiguration' {disabled} -> disabled) (\s@StreamingConfiguration' {} a -> s {disabled = a} :: StreamingConfiguration)

-- | The streaming notification targets.
streamingConfiguration_streamingNotificationTargets :: Lens.Lens' StreamingConfiguration (Prelude.Maybe (Prelude.NonEmpty StreamingNotificationTarget))
streamingConfiguration_streamingNotificationTargets = Lens.lens (\StreamingConfiguration' {streamingNotificationTargets} -> streamingNotificationTargets) (\s@StreamingConfiguration' {} a -> s {streamingNotificationTargets = a} :: StreamingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The retention period, in hours, for the Amazon Kinesis data.
streamingConfiguration_dataRetentionInHours :: Lens.Lens' StreamingConfiguration Prelude.Natural
streamingConfiguration_dataRetentionInHours = Lens.lens (\StreamingConfiguration' {dataRetentionInHours} -> dataRetentionInHours) (\s@StreamingConfiguration' {} a -> s {dataRetentionInHours = a} :: StreamingConfiguration)

instance Core.FromJSON StreamingConfiguration where
  parseJSON =
    Core.withObject
      "StreamingConfiguration"
      ( \x ->
          StreamingConfiguration'
            Prelude.<$> (x Core..:? "Disabled")
            Prelude.<*> (x Core..:? "StreamingNotificationTargets")
            Prelude.<*> (x Core..: "DataRetentionInHours")
      )

instance Prelude.Hashable StreamingConfiguration

instance Prelude.NFData StreamingConfiguration

instance Core.ToJSON StreamingConfiguration where
  toJSON StreamingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Disabled" Core..=) Prelude.<$> disabled,
            ("StreamingNotificationTargets" Core..=)
              Prelude.<$> streamingNotificationTargets,
            Prelude.Just
              ( "DataRetentionInHours"
                  Core..= dataRetentionInHours
              )
          ]
      )
