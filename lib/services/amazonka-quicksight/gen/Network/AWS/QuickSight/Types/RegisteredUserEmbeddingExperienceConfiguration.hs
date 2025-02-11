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
-- Module      : Network.AWS.QuickSight.Types.RegisteredUserEmbeddingExperienceConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.RegisteredUserEmbeddingExperienceConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.RegisteredUserDashboardEmbeddingConfiguration
import Network.AWS.QuickSight.Types.RegisteredUserQSearchBarEmbeddingConfiguration
import Network.AWS.QuickSight.Types.RegisteredUserQuickSightConsoleEmbeddingConfiguration

-- | The type of experience you want to embed. For registered users, you can
-- embed an Amazon QuickSight dashboard or the Amazon QuickSight console.
--
-- Exactly one of the experience configurations is required. You can choose
-- @Dashboard@ or @QuickSightConsole@. You cannot choose more than one
-- experience configuraton.
--
-- /See:/ 'newRegisteredUserEmbeddingExperienceConfiguration' smart constructor.
data RegisteredUserEmbeddingExperienceConfiguration = RegisteredUserEmbeddingExperienceConfiguration'
  { -- | The configuration details for providing a dashboard embedding
    -- experience.
    dashboard :: Prelude.Maybe RegisteredUserDashboardEmbeddingConfiguration,
    -- | The configuration details for providing an Amazon QuickSight console
    -- embedding experience. This can be used along with custom permissions to
    -- restrict access to certain features. For more information, see
    -- <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
    -- in the /Amazon QuickSight User Guide/.
    --
    -- Use @GenerateEmbedUrlForRegisteredUser@ where you want to provide an
    -- authoring portal that allows users to create data sources, datasets,
    -- analyses, and dashboards. The users who accesses an embedded Amazon
    -- QuickSight console needs to belong to the author or admin security
    -- cohort. If you want to restrict permissions to some of these features,
    -- add a custom permissions profile to the user with the @ UpdateUser @ API
    -- operation. Use @ RegisterUser @ API operation to add a new user with a
    -- custom permission profile attached. For more information, see the
    -- following sections in the /Amazon QuickSight User Guide/:
    --
    -- -   <https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-full-console-for-authenticated-users.html Embedding the Full Functionality of the Amazon QuickSight Console for Authenticated Users>
    --
    -- -   <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
    --
    -- For more information about the high-level steps for embedding and for an
    -- interactive demo of the ways you can customize embedding, visit the
    -- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html Amazon QuickSight Developer Portal>.
    quickSightConsole :: Prelude.Maybe RegisteredUserQuickSightConsoleEmbeddingConfiguration,
    -- | The configuration details for embedding the Q search bar.
    --
    -- For more information about embedding the Q search bar, see
    -- <https://docs.aws.amazon.com/quicksight/latest/user/embedding-overview.html Embedding Overview>.
    qSearchBar :: Prelude.Maybe RegisteredUserQSearchBarEmbeddingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisteredUserEmbeddingExperienceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dashboard', 'registeredUserEmbeddingExperienceConfiguration_dashboard' - The configuration details for providing a dashboard embedding
-- experience.
--
-- 'quickSightConsole', 'registeredUserEmbeddingExperienceConfiguration_quickSightConsole' - The configuration details for providing an Amazon QuickSight console
-- embedding experience. This can be used along with custom permissions to
-- restrict access to certain features. For more information, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
-- in the /Amazon QuickSight User Guide/.
--
-- Use @GenerateEmbedUrlForRegisteredUser@ where you want to provide an
-- authoring portal that allows users to create data sources, datasets,
-- analyses, and dashboards. The users who accesses an embedded Amazon
-- QuickSight console needs to belong to the author or admin security
-- cohort. If you want to restrict permissions to some of these features,
-- add a custom permissions profile to the user with the @ UpdateUser @ API
-- operation. Use @ RegisterUser @ API operation to add a new user with a
-- custom permission profile attached. For more information, see the
-- following sections in the /Amazon QuickSight User Guide/:
--
-- -   <https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-full-console-for-authenticated-users.html Embedding the Full Functionality of the Amazon QuickSight Console for Authenticated Users>
--
-- -   <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
--
-- For more information about the high-level steps for embedding and for an
-- interactive demo of the ways you can customize embedding, visit the
-- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html Amazon QuickSight Developer Portal>.
--
-- 'qSearchBar', 'registeredUserEmbeddingExperienceConfiguration_qSearchBar' - The configuration details for embedding the Q search bar.
--
-- For more information about embedding the Q search bar, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/embedding-overview.html Embedding Overview>.
newRegisteredUserEmbeddingExperienceConfiguration ::
  RegisteredUserEmbeddingExperienceConfiguration
newRegisteredUserEmbeddingExperienceConfiguration =
  RegisteredUserEmbeddingExperienceConfiguration'
    { dashboard =
        Prelude.Nothing,
      quickSightConsole =
        Prelude.Nothing,
      qSearchBar =
        Prelude.Nothing
    }

-- | The configuration details for providing a dashboard embedding
-- experience.
registeredUserEmbeddingExperienceConfiguration_dashboard :: Lens.Lens' RegisteredUserEmbeddingExperienceConfiguration (Prelude.Maybe RegisteredUserDashboardEmbeddingConfiguration)
registeredUserEmbeddingExperienceConfiguration_dashboard = Lens.lens (\RegisteredUserEmbeddingExperienceConfiguration' {dashboard} -> dashboard) (\s@RegisteredUserEmbeddingExperienceConfiguration' {} a -> s {dashboard = a} :: RegisteredUserEmbeddingExperienceConfiguration)

-- | The configuration details for providing an Amazon QuickSight console
-- embedding experience. This can be used along with custom permissions to
-- restrict access to certain features. For more information, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
-- in the /Amazon QuickSight User Guide/.
--
-- Use @GenerateEmbedUrlForRegisteredUser@ where you want to provide an
-- authoring portal that allows users to create data sources, datasets,
-- analyses, and dashboards. The users who accesses an embedded Amazon
-- QuickSight console needs to belong to the author or admin security
-- cohort. If you want to restrict permissions to some of these features,
-- add a custom permissions profile to the user with the @ UpdateUser @ API
-- operation. Use @ RegisterUser @ API operation to add a new user with a
-- custom permission profile attached. For more information, see the
-- following sections in the /Amazon QuickSight User Guide/:
--
-- -   <https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-full-console-for-authenticated-users.html Embedding the Full Functionality of the Amazon QuickSight Console for Authenticated Users>
--
-- -   <https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html Customizing Access to the Amazon QuickSight Console>
--
-- For more information about the high-level steps for embedding and for an
-- interactive demo of the ways you can customize embedding, visit the
-- <https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html Amazon QuickSight Developer Portal>.
registeredUserEmbeddingExperienceConfiguration_quickSightConsole :: Lens.Lens' RegisteredUserEmbeddingExperienceConfiguration (Prelude.Maybe RegisteredUserQuickSightConsoleEmbeddingConfiguration)
registeredUserEmbeddingExperienceConfiguration_quickSightConsole = Lens.lens (\RegisteredUserEmbeddingExperienceConfiguration' {quickSightConsole} -> quickSightConsole) (\s@RegisteredUserEmbeddingExperienceConfiguration' {} a -> s {quickSightConsole = a} :: RegisteredUserEmbeddingExperienceConfiguration)

-- | The configuration details for embedding the Q search bar.
--
-- For more information about embedding the Q search bar, see
-- <https://docs.aws.amazon.com/quicksight/latest/user/embedding-overview.html Embedding Overview>.
registeredUserEmbeddingExperienceConfiguration_qSearchBar :: Lens.Lens' RegisteredUserEmbeddingExperienceConfiguration (Prelude.Maybe RegisteredUserQSearchBarEmbeddingConfiguration)
registeredUserEmbeddingExperienceConfiguration_qSearchBar = Lens.lens (\RegisteredUserEmbeddingExperienceConfiguration' {qSearchBar} -> qSearchBar) (\s@RegisteredUserEmbeddingExperienceConfiguration' {} a -> s {qSearchBar = a} :: RegisteredUserEmbeddingExperienceConfiguration)

instance
  Prelude.Hashable
    RegisteredUserEmbeddingExperienceConfiguration

instance
  Prelude.NFData
    RegisteredUserEmbeddingExperienceConfiguration

instance
  Core.ToJSON
    RegisteredUserEmbeddingExperienceConfiguration
  where
  toJSON
    RegisteredUserEmbeddingExperienceConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Dashboard" Core..=) Prelude.<$> dashboard,
              ("QuickSightConsole" Core..=)
                Prelude.<$> quickSightConsole,
              ("QSearchBar" Core..=) Prelude.<$> qSearchBar
            ]
        )
