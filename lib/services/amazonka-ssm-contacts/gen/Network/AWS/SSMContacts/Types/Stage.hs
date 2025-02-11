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
-- Module      : Network.AWS.SSMContacts.Types.Stage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMContacts.Types.Stage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSMContacts.Types.Target

-- | A set amount of time that an escalation plan or engagement plan engages
-- the specified contacts or contact methods.
--
-- /See:/ 'newStage' smart constructor.
data Stage = Stage'
  { -- | The time to wait until beginning the next stage. The duration can only
    -- be set to 0 if a target is specified.
    durationInMinutes :: Prelude.Natural,
    -- | The contacts or contact methods that the escalation plan or engagement
    -- plan is engaging.
    targets :: [Target]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Stage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'durationInMinutes', 'stage_durationInMinutes' - The time to wait until beginning the next stage. The duration can only
-- be set to 0 if a target is specified.
--
-- 'targets', 'stage_targets' - The contacts or contact methods that the escalation plan or engagement
-- plan is engaging.
newStage ::
  -- | 'durationInMinutes'
  Prelude.Natural ->
  Stage
newStage pDurationInMinutes_ =
  Stage'
    { durationInMinutes = pDurationInMinutes_,
      targets = Prelude.mempty
    }

-- | The time to wait until beginning the next stage. The duration can only
-- be set to 0 if a target is specified.
stage_durationInMinutes :: Lens.Lens' Stage Prelude.Natural
stage_durationInMinutes = Lens.lens (\Stage' {durationInMinutes} -> durationInMinutes) (\s@Stage' {} a -> s {durationInMinutes = a} :: Stage)

-- | The contacts or contact methods that the escalation plan or engagement
-- plan is engaging.
stage_targets :: Lens.Lens' Stage [Target]
stage_targets = Lens.lens (\Stage' {targets} -> targets) (\s@Stage' {} a -> s {targets = a} :: Stage) Prelude.. Lens.coerced

instance Core.FromJSON Stage where
  parseJSON =
    Core.withObject
      "Stage"
      ( \x ->
          Stage'
            Prelude.<$> (x Core..: "DurationInMinutes")
            Prelude.<*> (x Core..:? "Targets" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Stage

instance Prelude.NFData Stage

instance Core.ToJSON Stage where
  toJSON Stage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DurationInMinutes" Core..= durationInMinutes),
            Prelude.Just ("Targets" Core..= targets)
          ]
      )
