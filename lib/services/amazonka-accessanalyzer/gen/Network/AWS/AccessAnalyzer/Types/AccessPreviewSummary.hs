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
-- Module      : Network.AWS.AccessAnalyzer.Types.AccessPreviewSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.AccessPreviewSummary where

import Network.AWS.AccessAnalyzer.Types.AccessPreviewStatus
import Network.AWS.AccessAnalyzer.Types.AccessPreviewStatusReason
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains a summary of information about an access preview.
--
-- /See:/ 'newAccessPreviewSummary' smart constructor.
data AccessPreviewSummary = AccessPreviewSummary'
  { statusReason :: Prelude.Maybe AccessPreviewStatusReason,
    -- | The ARN of the analyzer used to generate the access preview.
    analyzerArn :: Prelude.Text,
    -- | The time at which the access preview was created.
    createdAt :: Core.POSIX,
    -- | The unique ID for the access preview.
    id :: Prelude.Text,
    -- | The status of the access preview.
    --
    -- -   @Creating@ - The access preview creation is in progress.
    --
    -- -   @Completed@ - The access preview is complete and previews the
    --     findings for external access to the resource.
    --
    -- -   @Failed@ - The access preview creation has failed.
    status :: AccessPreviewStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccessPreviewSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'accessPreviewSummary_statusReason' - Undocumented member.
--
-- 'analyzerArn', 'accessPreviewSummary_analyzerArn' - The ARN of the analyzer used to generate the access preview.
--
-- 'createdAt', 'accessPreviewSummary_createdAt' - The time at which the access preview was created.
--
-- 'id', 'accessPreviewSummary_id' - The unique ID for the access preview.
--
-- 'status', 'accessPreviewSummary_status' - The status of the access preview.
--
-- -   @Creating@ - The access preview creation is in progress.
--
-- -   @Completed@ - The access preview is complete and previews the
--     findings for external access to the resource.
--
-- -   @Failed@ - The access preview creation has failed.
newAccessPreviewSummary ::
  -- | 'analyzerArn'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'id'
  Prelude.Text ->
  -- | 'status'
  AccessPreviewStatus ->
  AccessPreviewSummary
newAccessPreviewSummary
  pAnalyzerArn_
  pCreatedAt_
  pId_
  pStatus_ =
    AccessPreviewSummary'
      { statusReason =
          Prelude.Nothing,
        analyzerArn = pAnalyzerArn_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        id = pId_,
        status = pStatus_
      }

-- | Undocumented member.
accessPreviewSummary_statusReason :: Lens.Lens' AccessPreviewSummary (Prelude.Maybe AccessPreviewStatusReason)
accessPreviewSummary_statusReason = Lens.lens (\AccessPreviewSummary' {statusReason} -> statusReason) (\s@AccessPreviewSummary' {} a -> s {statusReason = a} :: AccessPreviewSummary)

-- | The ARN of the analyzer used to generate the access preview.
accessPreviewSummary_analyzerArn :: Lens.Lens' AccessPreviewSummary Prelude.Text
accessPreviewSummary_analyzerArn = Lens.lens (\AccessPreviewSummary' {analyzerArn} -> analyzerArn) (\s@AccessPreviewSummary' {} a -> s {analyzerArn = a} :: AccessPreviewSummary)

-- | The time at which the access preview was created.
accessPreviewSummary_createdAt :: Lens.Lens' AccessPreviewSummary Prelude.UTCTime
accessPreviewSummary_createdAt = Lens.lens (\AccessPreviewSummary' {createdAt} -> createdAt) (\s@AccessPreviewSummary' {} a -> s {createdAt = a} :: AccessPreviewSummary) Prelude.. Core._Time

-- | The unique ID for the access preview.
accessPreviewSummary_id :: Lens.Lens' AccessPreviewSummary Prelude.Text
accessPreviewSummary_id = Lens.lens (\AccessPreviewSummary' {id} -> id) (\s@AccessPreviewSummary' {} a -> s {id = a} :: AccessPreviewSummary)

-- | The status of the access preview.
--
-- -   @Creating@ - The access preview creation is in progress.
--
-- -   @Completed@ - The access preview is complete and previews the
--     findings for external access to the resource.
--
-- -   @Failed@ - The access preview creation has failed.
accessPreviewSummary_status :: Lens.Lens' AccessPreviewSummary AccessPreviewStatus
accessPreviewSummary_status = Lens.lens (\AccessPreviewSummary' {status} -> status) (\s@AccessPreviewSummary' {} a -> s {status = a} :: AccessPreviewSummary)

instance Core.FromJSON AccessPreviewSummary where
  parseJSON =
    Core.withObject
      "AccessPreviewSummary"
      ( \x ->
          AccessPreviewSummary'
            Prelude.<$> (x Core..:? "statusReason")
            Prelude.<*> (x Core..: "analyzerArn")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable AccessPreviewSummary

instance Prelude.NFData AccessPreviewSummary
