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
-- Module      : Network.AWS.Mobile.Types.ProjectSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.ProjectSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary information about an AWS Mobile Hub project.
--
-- /See:/ 'newProjectSummary' smart constructor.
data ProjectSummary = ProjectSummary'
  { -- | Name of the project.
    name :: Prelude.Maybe Prelude.Text,
    -- | Unique project identifier.
    projectId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProjectSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'projectSummary_name' - Name of the project.
--
-- 'projectId', 'projectSummary_projectId' - Unique project identifier.
newProjectSummary ::
  ProjectSummary
newProjectSummary =
  ProjectSummary'
    { name = Prelude.Nothing,
      projectId = Prelude.Nothing
    }

-- | Name of the project.
projectSummary_name :: Lens.Lens' ProjectSummary (Prelude.Maybe Prelude.Text)
projectSummary_name = Lens.lens (\ProjectSummary' {name} -> name) (\s@ProjectSummary' {} a -> s {name = a} :: ProjectSummary)

-- | Unique project identifier.
projectSummary_projectId :: Lens.Lens' ProjectSummary (Prelude.Maybe Prelude.Text)
projectSummary_projectId = Lens.lens (\ProjectSummary' {projectId} -> projectId) (\s@ProjectSummary' {} a -> s {projectId = a} :: ProjectSummary)

instance Core.FromJSON ProjectSummary where
  parseJSON =
    Core.withObject
      "ProjectSummary"
      ( \x ->
          ProjectSummary'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "projectId")
      )

instance Prelude.Hashable ProjectSummary

instance Prelude.NFData ProjectSummary
