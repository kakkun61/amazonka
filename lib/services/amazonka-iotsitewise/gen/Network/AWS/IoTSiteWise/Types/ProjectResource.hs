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
-- Module      : Network.AWS.IoTSiteWise.Types.ProjectResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.ProjectResource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Identifies a specific IoT SiteWise Monitor project.
--
-- /See:/ 'newProjectResource' smart constructor.
data ProjectResource = ProjectResource'
  { -- | The ID of the project.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProjectResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'projectResource_id' - The ID of the project.
newProjectResource ::
  -- | 'id'
  Prelude.Text ->
  ProjectResource
newProjectResource pId_ = ProjectResource' {id = pId_}

-- | The ID of the project.
projectResource_id :: Lens.Lens' ProjectResource Prelude.Text
projectResource_id = Lens.lens (\ProjectResource' {id} -> id) (\s@ProjectResource' {} a -> s {id = a} :: ProjectResource)

instance Core.FromJSON ProjectResource where
  parseJSON =
    Core.withObject
      "ProjectResource"
      ( \x ->
          ProjectResource' Prelude.<$> (x Core..: "id")
      )

instance Prelude.Hashable ProjectResource

instance Prelude.NFData ProjectResource

instance Core.ToJSON ProjectResource where
  toJSON ProjectResource' {..} =
    Core.object
      (Prelude.catMaybes [Prelude.Just ("id" Core..= id)])
