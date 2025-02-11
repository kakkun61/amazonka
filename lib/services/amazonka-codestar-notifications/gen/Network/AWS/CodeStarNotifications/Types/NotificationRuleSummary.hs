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
-- Module      : Network.AWS.CodeStarNotifications.Types.NotificationRuleSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarNotifications.Types.NotificationRuleSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a specified notification rule.
--
-- /See:/ 'newNotificationRuleSummary' smart constructor.
data NotificationRuleSummary = NotificationRuleSummary'
  { -- | The Amazon Resource Name (ARN) of the notification rule.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The unique ID of the notification rule.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotificationRuleSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'notificationRuleSummary_arn' - The Amazon Resource Name (ARN) of the notification rule.
--
-- 'id', 'notificationRuleSummary_id' - The unique ID of the notification rule.
newNotificationRuleSummary ::
  NotificationRuleSummary
newNotificationRuleSummary =
  NotificationRuleSummary'
    { arn = Prelude.Nothing,
      id = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the notification rule.
notificationRuleSummary_arn :: Lens.Lens' NotificationRuleSummary (Prelude.Maybe Prelude.Text)
notificationRuleSummary_arn = Lens.lens (\NotificationRuleSummary' {arn} -> arn) (\s@NotificationRuleSummary' {} a -> s {arn = a} :: NotificationRuleSummary)

-- | The unique ID of the notification rule.
notificationRuleSummary_id :: Lens.Lens' NotificationRuleSummary (Prelude.Maybe Prelude.Text)
notificationRuleSummary_id = Lens.lens (\NotificationRuleSummary' {id} -> id) (\s@NotificationRuleSummary' {} a -> s {id = a} :: NotificationRuleSummary)

instance Core.FromJSON NotificationRuleSummary where
  parseJSON =
    Core.withObject
      "NotificationRuleSummary"
      ( \x ->
          NotificationRuleSummary'
            Prelude.<$> (x Core..:? "Arn") Prelude.<*> (x Core..:? "Id")
      )

instance Prelude.Hashable NotificationRuleSummary

instance Prelude.NFData NotificationRuleSummary
