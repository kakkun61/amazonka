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
-- Module      : Network.AWS.XRay.Types.Group
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.Group where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.XRay.Types.InsightsConfiguration

-- | Details and metadata for a group.
--
-- /See:/ 'newGroup' smart constructor.
data Group = Group'
  { -- | The filter expression defining the parameters to include traces.
    filterExpression :: Prelude.Maybe Prelude.Text,
    -- | The structure containing configurations related to insights.
    --
    -- -   The InsightsEnabled boolean can be set to true to enable insights
    --     for the group or false to disable insights for the group.
    --
    -- -   The NotificationsEnabled boolean can be set to true to enable
    --     insights notifications through Amazon EventBridge for the group.
    insightsConfiguration :: Prelude.Maybe InsightsConfiguration,
    -- | The Amazon Resource Name (ARN) of the group generated based on the
    -- GroupName.
    groupARN :: Prelude.Maybe Prelude.Text,
    -- | The unique case-sensitive name of the group.
    groupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Group' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterExpression', 'group_filterExpression' - The filter expression defining the parameters to include traces.
--
-- 'insightsConfiguration', 'group_insightsConfiguration' - The structure containing configurations related to insights.
--
-- -   The InsightsEnabled boolean can be set to true to enable insights
--     for the group or false to disable insights for the group.
--
-- -   The NotificationsEnabled boolean can be set to true to enable
--     insights notifications through Amazon EventBridge for the group.
--
-- 'groupARN', 'group_groupARN' - The Amazon Resource Name (ARN) of the group generated based on the
-- GroupName.
--
-- 'groupName', 'group_groupName' - The unique case-sensitive name of the group.
newGroup ::
  Group
newGroup =
  Group'
    { filterExpression = Prelude.Nothing,
      insightsConfiguration = Prelude.Nothing,
      groupARN = Prelude.Nothing,
      groupName = Prelude.Nothing
    }

-- | The filter expression defining the parameters to include traces.
group_filterExpression :: Lens.Lens' Group (Prelude.Maybe Prelude.Text)
group_filterExpression = Lens.lens (\Group' {filterExpression} -> filterExpression) (\s@Group' {} a -> s {filterExpression = a} :: Group)

-- | The structure containing configurations related to insights.
--
-- -   The InsightsEnabled boolean can be set to true to enable insights
--     for the group or false to disable insights for the group.
--
-- -   The NotificationsEnabled boolean can be set to true to enable
--     insights notifications through Amazon EventBridge for the group.
group_insightsConfiguration :: Lens.Lens' Group (Prelude.Maybe InsightsConfiguration)
group_insightsConfiguration = Lens.lens (\Group' {insightsConfiguration} -> insightsConfiguration) (\s@Group' {} a -> s {insightsConfiguration = a} :: Group)

-- | The Amazon Resource Name (ARN) of the group generated based on the
-- GroupName.
group_groupARN :: Lens.Lens' Group (Prelude.Maybe Prelude.Text)
group_groupARN = Lens.lens (\Group' {groupARN} -> groupARN) (\s@Group' {} a -> s {groupARN = a} :: Group)

-- | The unique case-sensitive name of the group.
group_groupName :: Lens.Lens' Group (Prelude.Maybe Prelude.Text)
group_groupName = Lens.lens (\Group' {groupName} -> groupName) (\s@Group' {} a -> s {groupName = a} :: Group)

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \x ->
          Group'
            Prelude.<$> (x Core..:? "FilterExpression")
            Prelude.<*> (x Core..:? "InsightsConfiguration")
            Prelude.<*> (x Core..:? "GroupARN")
            Prelude.<*> (x Core..:? "GroupName")
      )

instance Prelude.Hashable Group

instance Prelude.NFData Group
