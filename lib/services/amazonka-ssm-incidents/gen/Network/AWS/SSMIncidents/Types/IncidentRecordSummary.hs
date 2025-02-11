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
-- Module      : Network.AWS.SSMIncidents.Types.IncidentRecordSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMIncidents.Types.IncidentRecordSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSMIncidents.Types.IncidentRecordSource
import Network.AWS.SSMIncidents.Types.IncidentRecordStatus

-- | Details describing an incident record.
--
-- /See:/ 'newIncidentRecordSummary' smart constructor.
data IncidentRecordSummary = IncidentRecordSummary'
  { -- | The time the incident was resolved.
    resolvedTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the incident.
    arn :: Prelude.Text,
    -- | The time the incident was created.
    creationTime :: Core.POSIX,
    -- | Defines the impact to customers and applications.
    impact :: Prelude.Natural,
    -- | What caused Incident Manager to create the incident.
    incidentRecordSource :: IncidentRecordSource,
    -- | The current status of the incident.
    status :: IncidentRecordStatus,
    -- | The title of the incident. This value is either provided by the response
    -- plan or overwritten on creation.
    title :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IncidentRecordSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolvedTime', 'incidentRecordSummary_resolvedTime' - The time the incident was resolved.
--
-- 'arn', 'incidentRecordSummary_arn' - The Amazon Resource Name (ARN) of the incident.
--
-- 'creationTime', 'incidentRecordSummary_creationTime' - The time the incident was created.
--
-- 'impact', 'incidentRecordSummary_impact' - Defines the impact to customers and applications.
--
-- 'incidentRecordSource', 'incidentRecordSummary_incidentRecordSource' - What caused Incident Manager to create the incident.
--
-- 'status', 'incidentRecordSummary_status' - The current status of the incident.
--
-- 'title', 'incidentRecordSummary_title' - The title of the incident. This value is either provided by the response
-- plan or overwritten on creation.
newIncidentRecordSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  -- | 'impact'
  Prelude.Natural ->
  -- | 'incidentRecordSource'
  IncidentRecordSource ->
  -- | 'status'
  IncidentRecordStatus ->
  -- | 'title'
  Prelude.Text ->
  IncidentRecordSummary
newIncidentRecordSummary
  pArn_
  pCreationTime_
  pImpact_
  pIncidentRecordSource_
  pStatus_
  pTitle_ =
    IncidentRecordSummary'
      { resolvedTime =
          Prelude.Nothing,
        arn = pArn_,
        creationTime = Core._Time Lens.# pCreationTime_,
        impact = pImpact_,
        incidentRecordSource = pIncidentRecordSource_,
        status = pStatus_,
        title = pTitle_
      }

-- | The time the incident was resolved.
incidentRecordSummary_resolvedTime :: Lens.Lens' IncidentRecordSummary (Prelude.Maybe Prelude.UTCTime)
incidentRecordSummary_resolvedTime = Lens.lens (\IncidentRecordSummary' {resolvedTime} -> resolvedTime) (\s@IncidentRecordSummary' {} a -> s {resolvedTime = a} :: IncidentRecordSummary) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the incident.
incidentRecordSummary_arn :: Lens.Lens' IncidentRecordSummary Prelude.Text
incidentRecordSummary_arn = Lens.lens (\IncidentRecordSummary' {arn} -> arn) (\s@IncidentRecordSummary' {} a -> s {arn = a} :: IncidentRecordSummary)

-- | The time the incident was created.
incidentRecordSummary_creationTime :: Lens.Lens' IncidentRecordSummary Prelude.UTCTime
incidentRecordSummary_creationTime = Lens.lens (\IncidentRecordSummary' {creationTime} -> creationTime) (\s@IncidentRecordSummary' {} a -> s {creationTime = a} :: IncidentRecordSummary) Prelude.. Core._Time

-- | Defines the impact to customers and applications.
incidentRecordSummary_impact :: Lens.Lens' IncidentRecordSummary Prelude.Natural
incidentRecordSummary_impact = Lens.lens (\IncidentRecordSummary' {impact} -> impact) (\s@IncidentRecordSummary' {} a -> s {impact = a} :: IncidentRecordSummary)

-- | What caused Incident Manager to create the incident.
incidentRecordSummary_incidentRecordSource :: Lens.Lens' IncidentRecordSummary IncidentRecordSource
incidentRecordSummary_incidentRecordSource = Lens.lens (\IncidentRecordSummary' {incidentRecordSource} -> incidentRecordSource) (\s@IncidentRecordSummary' {} a -> s {incidentRecordSource = a} :: IncidentRecordSummary)

-- | The current status of the incident.
incidentRecordSummary_status :: Lens.Lens' IncidentRecordSummary IncidentRecordStatus
incidentRecordSummary_status = Lens.lens (\IncidentRecordSummary' {status} -> status) (\s@IncidentRecordSummary' {} a -> s {status = a} :: IncidentRecordSummary)

-- | The title of the incident. This value is either provided by the response
-- plan or overwritten on creation.
incidentRecordSummary_title :: Lens.Lens' IncidentRecordSummary Prelude.Text
incidentRecordSummary_title = Lens.lens (\IncidentRecordSummary' {title} -> title) (\s@IncidentRecordSummary' {} a -> s {title = a} :: IncidentRecordSummary)

instance Core.FromJSON IncidentRecordSummary where
  parseJSON =
    Core.withObject
      "IncidentRecordSummary"
      ( \x ->
          IncidentRecordSummary'
            Prelude.<$> (x Core..:? "resolvedTime")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "creationTime")
            Prelude.<*> (x Core..: "impact")
            Prelude.<*> (x Core..: "incidentRecordSource")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "title")
      )

instance Prelude.Hashable IncidentRecordSummary

instance Prelude.NFData IncidentRecordSummary
