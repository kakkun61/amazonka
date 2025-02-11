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
-- Module      : Network.AWS.FIS.Types.ExperimentTemplateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FIS.Types.ExperimentTemplateSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of an experiment template.
--
-- /See:/ 'newExperimentTemplateSummary' smart constructor.
data ExperimentTemplateSummary = ExperimentTemplateSummary'
  { -- | The time that the experiment template was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the experiment template.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time that the experiment template was last updated.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | The description of the experiment template.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags for the experiment template.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExperimentTemplateSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'experimentTemplateSummary_creationTime' - The time that the experiment template was created.
--
-- 'id', 'experimentTemplateSummary_id' - The ID of the experiment template.
--
-- 'lastUpdateTime', 'experimentTemplateSummary_lastUpdateTime' - The time that the experiment template was last updated.
--
-- 'description', 'experimentTemplateSummary_description' - The description of the experiment template.
--
-- 'tags', 'experimentTemplateSummary_tags' - The tags for the experiment template.
newExperimentTemplateSummary ::
  ExperimentTemplateSummary
newExperimentTemplateSummary =
  ExperimentTemplateSummary'
    { creationTime =
        Prelude.Nothing,
      id = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The time that the experiment template was created.
experimentTemplateSummary_creationTime :: Lens.Lens' ExperimentTemplateSummary (Prelude.Maybe Prelude.UTCTime)
experimentTemplateSummary_creationTime = Lens.lens (\ExperimentTemplateSummary' {creationTime} -> creationTime) (\s@ExperimentTemplateSummary' {} a -> s {creationTime = a} :: ExperimentTemplateSummary) Prelude.. Lens.mapping Core._Time

-- | The ID of the experiment template.
experimentTemplateSummary_id :: Lens.Lens' ExperimentTemplateSummary (Prelude.Maybe Prelude.Text)
experimentTemplateSummary_id = Lens.lens (\ExperimentTemplateSummary' {id} -> id) (\s@ExperimentTemplateSummary' {} a -> s {id = a} :: ExperimentTemplateSummary)

-- | The time that the experiment template was last updated.
experimentTemplateSummary_lastUpdateTime :: Lens.Lens' ExperimentTemplateSummary (Prelude.Maybe Prelude.UTCTime)
experimentTemplateSummary_lastUpdateTime = Lens.lens (\ExperimentTemplateSummary' {lastUpdateTime} -> lastUpdateTime) (\s@ExperimentTemplateSummary' {} a -> s {lastUpdateTime = a} :: ExperimentTemplateSummary) Prelude.. Lens.mapping Core._Time

-- | The description of the experiment template.
experimentTemplateSummary_description :: Lens.Lens' ExperimentTemplateSummary (Prelude.Maybe Prelude.Text)
experimentTemplateSummary_description = Lens.lens (\ExperimentTemplateSummary' {description} -> description) (\s@ExperimentTemplateSummary' {} a -> s {description = a} :: ExperimentTemplateSummary)

-- | The tags for the experiment template.
experimentTemplateSummary_tags :: Lens.Lens' ExperimentTemplateSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experimentTemplateSummary_tags = Lens.lens (\ExperimentTemplateSummary' {tags} -> tags) (\s@ExperimentTemplateSummary' {} a -> s {tags = a} :: ExperimentTemplateSummary) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ExperimentTemplateSummary where
  parseJSON =
    Core.withObject
      "ExperimentTemplateSummary"
      ( \x ->
          ExperimentTemplateSummary'
            Prelude.<$> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "lastUpdateTime")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ExperimentTemplateSummary

instance Prelude.NFData ExperimentTemplateSummary
