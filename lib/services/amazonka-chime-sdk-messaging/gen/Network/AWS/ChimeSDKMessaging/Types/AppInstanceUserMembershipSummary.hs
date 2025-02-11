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
-- Module      : Network.AWS.ChimeSDKMessaging.Types.AppInstanceUserMembershipSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKMessaging.Types.AppInstanceUserMembershipSummary where

import Network.AWS.ChimeSDKMessaging.Types.ChannelMembershipType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the membership details of an @AppInstanceUser@.
--
-- /See:/ 'newAppInstanceUserMembershipSummary' smart constructor.
data AppInstanceUserMembershipSummary = AppInstanceUserMembershipSummary'
  { -- | The time at which a message was last read.
    readMarkerTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The type of @ChannelMembership@.
    type' :: Prelude.Maybe ChannelMembershipType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppInstanceUserMembershipSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'readMarkerTimestamp', 'appInstanceUserMembershipSummary_readMarkerTimestamp' - The time at which a message was last read.
--
-- 'type'', 'appInstanceUserMembershipSummary_type' - The type of @ChannelMembership@.
newAppInstanceUserMembershipSummary ::
  AppInstanceUserMembershipSummary
newAppInstanceUserMembershipSummary =
  AppInstanceUserMembershipSummary'
    { readMarkerTimestamp =
        Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The time at which a message was last read.
appInstanceUserMembershipSummary_readMarkerTimestamp :: Lens.Lens' AppInstanceUserMembershipSummary (Prelude.Maybe Prelude.UTCTime)
appInstanceUserMembershipSummary_readMarkerTimestamp = Lens.lens (\AppInstanceUserMembershipSummary' {readMarkerTimestamp} -> readMarkerTimestamp) (\s@AppInstanceUserMembershipSummary' {} a -> s {readMarkerTimestamp = a} :: AppInstanceUserMembershipSummary) Prelude.. Lens.mapping Core._Time

-- | The type of @ChannelMembership@.
appInstanceUserMembershipSummary_type :: Lens.Lens' AppInstanceUserMembershipSummary (Prelude.Maybe ChannelMembershipType)
appInstanceUserMembershipSummary_type = Lens.lens (\AppInstanceUserMembershipSummary' {type'} -> type') (\s@AppInstanceUserMembershipSummary' {} a -> s {type' = a} :: AppInstanceUserMembershipSummary)

instance
  Core.FromJSON
    AppInstanceUserMembershipSummary
  where
  parseJSON =
    Core.withObject
      "AppInstanceUserMembershipSummary"
      ( \x ->
          AppInstanceUserMembershipSummary'
            Prelude.<$> (x Core..:? "ReadMarkerTimestamp")
            Prelude.<*> (x Core..:? "Type")
      )

instance
  Prelude.Hashable
    AppInstanceUserMembershipSummary

instance
  Prelude.NFData
    AppInstanceUserMembershipSummary
