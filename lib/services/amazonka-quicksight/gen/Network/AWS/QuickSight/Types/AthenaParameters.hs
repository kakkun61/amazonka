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
-- Module      : Network.AWS.QuickSight.Types.AthenaParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.AthenaParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Parameters for Amazon Athena.
--
-- /See:/ 'newAthenaParameters' smart constructor.
data AthenaParameters = AthenaParameters'
  { -- | The workgroup that Amazon Athena uses.
    workGroup :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AthenaParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workGroup', 'athenaParameters_workGroup' - The workgroup that Amazon Athena uses.
newAthenaParameters ::
  AthenaParameters
newAthenaParameters =
  AthenaParameters' {workGroup = Prelude.Nothing}

-- | The workgroup that Amazon Athena uses.
athenaParameters_workGroup :: Lens.Lens' AthenaParameters (Prelude.Maybe Prelude.Text)
athenaParameters_workGroup = Lens.lens (\AthenaParameters' {workGroup} -> workGroup) (\s@AthenaParameters' {} a -> s {workGroup = a} :: AthenaParameters)

instance Core.FromJSON AthenaParameters where
  parseJSON =
    Core.withObject
      "AthenaParameters"
      ( \x ->
          AthenaParameters'
            Prelude.<$> (x Core..:? "WorkGroup")
      )

instance Prelude.Hashable AthenaParameters

instance Prelude.NFData AthenaParameters

instance Core.ToJSON AthenaParameters where
  toJSON AthenaParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [("WorkGroup" Core..=) Prelude.<$> workGroup]
      )
