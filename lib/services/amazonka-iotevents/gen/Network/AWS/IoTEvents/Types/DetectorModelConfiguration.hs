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
-- Module      : Network.AWS.IoTEvents.Types.DetectorModelConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.DetectorModelConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.DetectorModelVersionStatus
import Network.AWS.IoTEvents.Types.EvaluationMethod
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about how the detector model is configured.
--
-- /See:/ 'newDetectorModelConfiguration' smart constructor.
data DetectorModelConfiguration = DetectorModelConfiguration'
  { -- | The time the detector model was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of the detector model.
    status :: Prelude.Maybe DetectorModelVersionStatus,
    -- | The name of the detector model.
    detectorModelName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the detector model.
    detectorModelArn :: Prelude.Maybe Prelude.Text,
    -- | A brief description of the detector model.
    detectorModelDescription :: Prelude.Maybe Prelude.Text,
    -- | The value used to identify a detector instance. When a device or system
    -- sends input, a new detector instance with a unique key value is created.
    -- AWS IoT Events can continue to route input to its corresponding detector
    -- instance based on this identifying information.
    --
    -- This parameter uses a JSON-path expression to select the attribute-value
    -- pair in the message payload that is used for identification. To route
    -- the message to the correct detector instance, the device must send a
    -- message payload that contains the same attribute-value.
    key :: Prelude.Maybe Prelude.Text,
    -- | The version of the detector model.
    detectorModelVersion :: Prelude.Maybe Prelude.Text,
    -- | The time the detector model was last updated.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | Information about the order in which events are evaluated and how
    -- actions are executed.
    evaluationMethod :: Prelude.Maybe EvaluationMethod,
    -- | The ARN of the role that grants permission to AWS IoT Events to perform
    -- its operations.
    roleArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectorModelConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'detectorModelConfiguration_creationTime' - The time the detector model was created.
--
-- 'status', 'detectorModelConfiguration_status' - The status of the detector model.
--
-- 'detectorModelName', 'detectorModelConfiguration_detectorModelName' - The name of the detector model.
--
-- 'detectorModelArn', 'detectorModelConfiguration_detectorModelArn' - The ARN of the detector model.
--
-- 'detectorModelDescription', 'detectorModelConfiguration_detectorModelDescription' - A brief description of the detector model.
--
-- 'key', 'detectorModelConfiguration_key' - The value used to identify a detector instance. When a device or system
-- sends input, a new detector instance with a unique key value is created.
-- AWS IoT Events can continue to route input to its corresponding detector
-- instance based on this identifying information.
--
-- This parameter uses a JSON-path expression to select the attribute-value
-- pair in the message payload that is used for identification. To route
-- the message to the correct detector instance, the device must send a
-- message payload that contains the same attribute-value.
--
-- 'detectorModelVersion', 'detectorModelConfiguration_detectorModelVersion' - The version of the detector model.
--
-- 'lastUpdateTime', 'detectorModelConfiguration_lastUpdateTime' - The time the detector model was last updated.
--
-- 'evaluationMethod', 'detectorModelConfiguration_evaluationMethod' - Information about the order in which events are evaluated and how
-- actions are executed.
--
-- 'roleArn', 'detectorModelConfiguration_roleArn' - The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
newDetectorModelConfiguration ::
  DetectorModelConfiguration
newDetectorModelConfiguration =
  DetectorModelConfiguration'
    { creationTime =
        Prelude.Nothing,
      status = Prelude.Nothing,
      detectorModelName = Prelude.Nothing,
      detectorModelArn = Prelude.Nothing,
      detectorModelDescription = Prelude.Nothing,
      key = Prelude.Nothing,
      detectorModelVersion = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      evaluationMethod = Prelude.Nothing,
      roleArn = Prelude.Nothing
    }

-- | The time the detector model was created.
detectorModelConfiguration_creationTime :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.UTCTime)
detectorModelConfiguration_creationTime = Lens.lens (\DetectorModelConfiguration' {creationTime} -> creationTime) (\s@DetectorModelConfiguration' {} a -> s {creationTime = a} :: DetectorModelConfiguration) Prelude.. Lens.mapping Core._Time

-- | The status of the detector model.
detectorModelConfiguration_status :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe DetectorModelVersionStatus)
detectorModelConfiguration_status = Lens.lens (\DetectorModelConfiguration' {status} -> status) (\s@DetectorModelConfiguration' {} a -> s {status = a} :: DetectorModelConfiguration)

-- | The name of the detector model.
detectorModelConfiguration_detectorModelName :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_detectorModelName = Lens.lens (\DetectorModelConfiguration' {detectorModelName} -> detectorModelName) (\s@DetectorModelConfiguration' {} a -> s {detectorModelName = a} :: DetectorModelConfiguration)

-- | The ARN of the detector model.
detectorModelConfiguration_detectorModelArn :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_detectorModelArn = Lens.lens (\DetectorModelConfiguration' {detectorModelArn} -> detectorModelArn) (\s@DetectorModelConfiguration' {} a -> s {detectorModelArn = a} :: DetectorModelConfiguration)

-- | A brief description of the detector model.
detectorModelConfiguration_detectorModelDescription :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_detectorModelDescription = Lens.lens (\DetectorModelConfiguration' {detectorModelDescription} -> detectorModelDescription) (\s@DetectorModelConfiguration' {} a -> s {detectorModelDescription = a} :: DetectorModelConfiguration)

-- | The value used to identify a detector instance. When a device or system
-- sends input, a new detector instance with a unique key value is created.
-- AWS IoT Events can continue to route input to its corresponding detector
-- instance based on this identifying information.
--
-- This parameter uses a JSON-path expression to select the attribute-value
-- pair in the message payload that is used for identification. To route
-- the message to the correct detector instance, the device must send a
-- message payload that contains the same attribute-value.
detectorModelConfiguration_key :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_key = Lens.lens (\DetectorModelConfiguration' {key} -> key) (\s@DetectorModelConfiguration' {} a -> s {key = a} :: DetectorModelConfiguration)

-- | The version of the detector model.
detectorModelConfiguration_detectorModelVersion :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_detectorModelVersion = Lens.lens (\DetectorModelConfiguration' {detectorModelVersion} -> detectorModelVersion) (\s@DetectorModelConfiguration' {} a -> s {detectorModelVersion = a} :: DetectorModelConfiguration)

-- | The time the detector model was last updated.
detectorModelConfiguration_lastUpdateTime :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.UTCTime)
detectorModelConfiguration_lastUpdateTime = Lens.lens (\DetectorModelConfiguration' {lastUpdateTime} -> lastUpdateTime) (\s@DetectorModelConfiguration' {} a -> s {lastUpdateTime = a} :: DetectorModelConfiguration) Prelude.. Lens.mapping Core._Time

-- | Information about the order in which events are evaluated and how
-- actions are executed.
detectorModelConfiguration_evaluationMethod :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe EvaluationMethod)
detectorModelConfiguration_evaluationMethod = Lens.lens (\DetectorModelConfiguration' {evaluationMethod} -> evaluationMethod) (\s@DetectorModelConfiguration' {} a -> s {evaluationMethod = a} :: DetectorModelConfiguration)

-- | The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
detectorModelConfiguration_roleArn :: Lens.Lens' DetectorModelConfiguration (Prelude.Maybe Prelude.Text)
detectorModelConfiguration_roleArn = Lens.lens (\DetectorModelConfiguration' {roleArn} -> roleArn) (\s@DetectorModelConfiguration' {} a -> s {roleArn = a} :: DetectorModelConfiguration)

instance Core.FromJSON DetectorModelConfiguration where
  parseJSON =
    Core.withObject
      "DetectorModelConfiguration"
      ( \x ->
          DetectorModelConfiguration'
            Prelude.<$> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "detectorModelName")
            Prelude.<*> (x Core..:? "detectorModelArn")
            Prelude.<*> (x Core..:? "detectorModelDescription")
            Prelude.<*> (x Core..:? "key")
            Prelude.<*> (x Core..:? "detectorModelVersion")
            Prelude.<*> (x Core..:? "lastUpdateTime")
            Prelude.<*> (x Core..:? "evaluationMethod")
            Prelude.<*> (x Core..:? "roleArn")
      )

instance Prelude.Hashable DetectorModelConfiguration

instance Prelude.NFData DetectorModelConfiguration
