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
-- Module      : Network.AWS.LookoutMetrics.Types.AlertSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.AlertSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types.AlertStatus
import Network.AWS.LookoutMetrics.Types.AlertType
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of an alert\'s configuration.
--
-- /See:/ 'newAlertSummary' smart constructor.
data AlertSummary = AlertSummary'
  { -- | The time at which the alert was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the detector to which the alert is attached.
    anomalyDetectorArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the alert.
    alertName :: Prelude.Maybe Prelude.Text,
    -- | The minimum severity for an anomaly to trigger the alert.
    alertSensitivityThreshold :: Prelude.Maybe Prelude.Natural,
    -- | The status of the alert.
    alertStatus :: Prelude.Maybe AlertStatus,
    -- | The ARN of the alert.
    alertArn :: Prelude.Maybe Prelude.Text,
    -- | The type of the alert.
    alertType :: Prelude.Maybe AlertType,
    -- | The alert\'s
    -- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The time at which the alert was last modified.
    lastModificationTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlertSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'alertSummary_creationTime' - The time at which the alert was created.
--
-- 'anomalyDetectorArn', 'alertSummary_anomalyDetectorArn' - The ARN of the detector to which the alert is attached.
--
-- 'alertName', 'alertSummary_alertName' - The name of the alert.
--
-- 'alertSensitivityThreshold', 'alertSummary_alertSensitivityThreshold' - The minimum severity for an anomaly to trigger the alert.
--
-- 'alertStatus', 'alertSummary_alertStatus' - The status of the alert.
--
-- 'alertArn', 'alertSummary_alertArn' - The ARN of the alert.
--
-- 'alertType', 'alertSummary_alertType' - The type of the alert.
--
-- 'tags', 'alertSummary_tags' - The alert\'s
-- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>.
--
-- 'lastModificationTime', 'alertSummary_lastModificationTime' - The time at which the alert was last modified.
newAlertSummary ::
  AlertSummary
newAlertSummary =
  AlertSummary'
    { creationTime = Prelude.Nothing,
      anomalyDetectorArn = Prelude.Nothing,
      alertName = Prelude.Nothing,
      alertSensitivityThreshold = Prelude.Nothing,
      alertStatus = Prelude.Nothing,
      alertArn = Prelude.Nothing,
      alertType = Prelude.Nothing,
      tags = Prelude.Nothing,
      lastModificationTime = Prelude.Nothing
    }

-- | The time at which the alert was created.
alertSummary_creationTime :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.UTCTime)
alertSummary_creationTime = Lens.lens (\AlertSummary' {creationTime} -> creationTime) (\s@AlertSummary' {} a -> s {creationTime = a} :: AlertSummary) Prelude.. Lens.mapping Core._Time

-- | The ARN of the detector to which the alert is attached.
alertSummary_anomalyDetectorArn :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.Text)
alertSummary_anomalyDetectorArn = Lens.lens (\AlertSummary' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@AlertSummary' {} a -> s {anomalyDetectorArn = a} :: AlertSummary)

-- | The name of the alert.
alertSummary_alertName :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.Text)
alertSummary_alertName = Lens.lens (\AlertSummary' {alertName} -> alertName) (\s@AlertSummary' {} a -> s {alertName = a} :: AlertSummary)

-- | The minimum severity for an anomaly to trigger the alert.
alertSummary_alertSensitivityThreshold :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.Natural)
alertSummary_alertSensitivityThreshold = Lens.lens (\AlertSummary' {alertSensitivityThreshold} -> alertSensitivityThreshold) (\s@AlertSummary' {} a -> s {alertSensitivityThreshold = a} :: AlertSummary)

-- | The status of the alert.
alertSummary_alertStatus :: Lens.Lens' AlertSummary (Prelude.Maybe AlertStatus)
alertSummary_alertStatus = Lens.lens (\AlertSummary' {alertStatus} -> alertStatus) (\s@AlertSummary' {} a -> s {alertStatus = a} :: AlertSummary)

-- | The ARN of the alert.
alertSummary_alertArn :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.Text)
alertSummary_alertArn = Lens.lens (\AlertSummary' {alertArn} -> alertArn) (\s@AlertSummary' {} a -> s {alertArn = a} :: AlertSummary)

-- | The type of the alert.
alertSummary_alertType :: Lens.Lens' AlertSummary (Prelude.Maybe AlertType)
alertSummary_alertType = Lens.lens (\AlertSummary' {alertType} -> alertType) (\s@AlertSummary' {} a -> s {alertType = a} :: AlertSummary)

-- | The alert\'s
-- <https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html tags>.
alertSummary_tags :: Lens.Lens' AlertSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
alertSummary_tags = Lens.lens (\AlertSummary' {tags} -> tags) (\s@AlertSummary' {} a -> s {tags = a} :: AlertSummary) Prelude.. Lens.mapping Lens.coerced

-- | The time at which the alert was last modified.
alertSummary_lastModificationTime :: Lens.Lens' AlertSummary (Prelude.Maybe Prelude.UTCTime)
alertSummary_lastModificationTime = Lens.lens (\AlertSummary' {lastModificationTime} -> lastModificationTime) (\s@AlertSummary' {} a -> s {lastModificationTime = a} :: AlertSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AlertSummary where
  parseJSON =
    Core.withObject
      "AlertSummary"
      ( \x ->
          AlertSummary'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "AnomalyDetectorArn")
            Prelude.<*> (x Core..:? "AlertName")
            Prelude.<*> (x Core..:? "AlertSensitivityThreshold")
            Prelude.<*> (x Core..:? "AlertStatus")
            Prelude.<*> (x Core..:? "AlertArn")
            Prelude.<*> (x Core..:? "AlertType")
            Prelude.<*> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "LastModificationTime")
      )

instance Prelude.Hashable AlertSummary

instance Prelude.NFData AlertSummary
