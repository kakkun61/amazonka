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
-- Module      : Network.AWS.Personalize.Types.SolutionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.SolutionSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of the properties of a solution. For a complete
-- listing, call the DescribeSolution API.
--
-- /See:/ 'newSolutionSummary' smart constructor.
data SolutionSummary = SolutionSummary'
  { -- | The Amazon Resource Name (ARN) of the solution.
    solutionArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the solution.
    --
    -- A solution can be in one of the following states:
    --
    -- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
    --
    -- -   DELETE PENDING > DELETE IN_PROGRESS
    status :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix time) that the solution was last updated.
    lastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the solution.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix time) that the solution was created.
    creationDateTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SolutionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'solutionArn', 'solutionSummary_solutionArn' - The Amazon Resource Name (ARN) of the solution.
--
-- 'status', 'solutionSummary_status' - The status of the solution.
--
-- A solution can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
--
-- 'lastUpdatedDateTime', 'solutionSummary_lastUpdatedDateTime' - The date and time (in Unix time) that the solution was last updated.
--
-- 'name', 'solutionSummary_name' - The name of the solution.
--
-- 'creationDateTime', 'solutionSummary_creationDateTime' - The date and time (in Unix time) that the solution was created.
newSolutionSummary ::
  SolutionSummary
newSolutionSummary =
  SolutionSummary'
    { solutionArn = Prelude.Nothing,
      status = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      name = Prelude.Nothing,
      creationDateTime = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the solution.
solutionSummary_solutionArn :: Lens.Lens' SolutionSummary (Prelude.Maybe Prelude.Text)
solutionSummary_solutionArn = Lens.lens (\SolutionSummary' {solutionArn} -> solutionArn) (\s@SolutionSummary' {} a -> s {solutionArn = a} :: SolutionSummary)

-- | The status of the solution.
--
-- A solution can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
solutionSummary_status :: Lens.Lens' SolutionSummary (Prelude.Maybe Prelude.Text)
solutionSummary_status = Lens.lens (\SolutionSummary' {status} -> status) (\s@SolutionSummary' {} a -> s {status = a} :: SolutionSummary)

-- | The date and time (in Unix time) that the solution was last updated.
solutionSummary_lastUpdatedDateTime :: Lens.Lens' SolutionSummary (Prelude.Maybe Prelude.UTCTime)
solutionSummary_lastUpdatedDateTime = Lens.lens (\SolutionSummary' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@SolutionSummary' {} a -> s {lastUpdatedDateTime = a} :: SolutionSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the solution.
solutionSummary_name :: Lens.Lens' SolutionSummary (Prelude.Maybe Prelude.Text)
solutionSummary_name = Lens.lens (\SolutionSummary' {name} -> name) (\s@SolutionSummary' {} a -> s {name = a} :: SolutionSummary)

-- | The date and time (in Unix time) that the solution was created.
solutionSummary_creationDateTime :: Lens.Lens' SolutionSummary (Prelude.Maybe Prelude.UTCTime)
solutionSummary_creationDateTime = Lens.lens (\SolutionSummary' {creationDateTime} -> creationDateTime) (\s@SolutionSummary' {} a -> s {creationDateTime = a} :: SolutionSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON SolutionSummary where
  parseJSON =
    Core.withObject
      "SolutionSummary"
      ( \x ->
          SolutionSummary'
            Prelude.<$> (x Core..:? "solutionArn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "creationDateTime")
      )

instance Prelude.Hashable SolutionSummary

instance Prelude.NFData SolutionSummary
