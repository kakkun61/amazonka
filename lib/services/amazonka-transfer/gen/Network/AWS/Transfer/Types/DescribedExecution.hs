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
-- Module      : Network.AWS.Transfer.Types.DescribedExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.DescribedExecution where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Transfer.Types.ExecutionResults
import Network.AWS.Transfer.Types.ExecutionStatus
import Network.AWS.Transfer.Types.FileLocation
import Network.AWS.Transfer.Types.LoggingConfiguration
import Network.AWS.Transfer.Types.PosixProfile
import Network.AWS.Transfer.Types.ServiceMetadata

-- | The details for an execution object.
--
-- /See:/ 'newDescribedExecution' smart constructor.
data DescribedExecution = DescribedExecution'
  { -- | The status is one of the execution. Can be in progress, completed,
    -- exception encountered, or handling the exception.
    status :: Prelude.Maybe ExecutionStatus,
    -- | A unique identifier for the execution of a workflow.
    executionId :: Prelude.Maybe Prelude.Text,
    -- | A structure that describes the execution results. This includes a list
    -- of the steps along with the details of each step, error type and message
    -- (if any), and the @OnExceptionSteps@ structure.
    results :: Prelude.Maybe ExecutionResults,
    -- | A structure that describes the Amazon S3 or EFS file location. This is
    -- the file location when the execution begins: if the file is being
    -- copied, this is the initial (as opposed to destination) file location.
    initialFileLocation :: Prelude.Maybe FileLocation,
    posixProfile :: Prelude.Maybe PosixProfile,
    -- | A container object for the session details associated with a workflow.
    serviceMetadata :: Prelude.Maybe ServiceMetadata,
    -- | The IAM logging role associated with the execution.
    loggingConfiguration :: Prelude.Maybe LoggingConfiguration,
    -- | The IAM role associated with the execution.
    executionRole :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribedExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describedExecution_status' - The status is one of the execution. Can be in progress, completed,
-- exception encountered, or handling the exception.
--
-- 'executionId', 'describedExecution_executionId' - A unique identifier for the execution of a workflow.
--
-- 'results', 'describedExecution_results' - A structure that describes the execution results. This includes a list
-- of the steps along with the details of each step, error type and message
-- (if any), and the @OnExceptionSteps@ structure.
--
-- 'initialFileLocation', 'describedExecution_initialFileLocation' - A structure that describes the Amazon S3 or EFS file location. This is
-- the file location when the execution begins: if the file is being
-- copied, this is the initial (as opposed to destination) file location.
--
-- 'posixProfile', 'describedExecution_posixProfile' - Undocumented member.
--
-- 'serviceMetadata', 'describedExecution_serviceMetadata' - A container object for the session details associated with a workflow.
--
-- 'loggingConfiguration', 'describedExecution_loggingConfiguration' - The IAM logging role associated with the execution.
--
-- 'executionRole', 'describedExecution_executionRole' - The IAM role associated with the execution.
newDescribedExecution ::
  DescribedExecution
newDescribedExecution =
  DescribedExecution'
    { status = Prelude.Nothing,
      executionId = Prelude.Nothing,
      results = Prelude.Nothing,
      initialFileLocation = Prelude.Nothing,
      posixProfile = Prelude.Nothing,
      serviceMetadata = Prelude.Nothing,
      loggingConfiguration = Prelude.Nothing,
      executionRole = Prelude.Nothing
    }

-- | The status is one of the execution. Can be in progress, completed,
-- exception encountered, or handling the exception.
describedExecution_status :: Lens.Lens' DescribedExecution (Prelude.Maybe ExecutionStatus)
describedExecution_status = Lens.lens (\DescribedExecution' {status} -> status) (\s@DescribedExecution' {} a -> s {status = a} :: DescribedExecution)

-- | A unique identifier for the execution of a workflow.
describedExecution_executionId :: Lens.Lens' DescribedExecution (Prelude.Maybe Prelude.Text)
describedExecution_executionId = Lens.lens (\DescribedExecution' {executionId} -> executionId) (\s@DescribedExecution' {} a -> s {executionId = a} :: DescribedExecution)

-- | A structure that describes the execution results. This includes a list
-- of the steps along with the details of each step, error type and message
-- (if any), and the @OnExceptionSteps@ structure.
describedExecution_results :: Lens.Lens' DescribedExecution (Prelude.Maybe ExecutionResults)
describedExecution_results = Lens.lens (\DescribedExecution' {results} -> results) (\s@DescribedExecution' {} a -> s {results = a} :: DescribedExecution)

-- | A structure that describes the Amazon S3 or EFS file location. This is
-- the file location when the execution begins: if the file is being
-- copied, this is the initial (as opposed to destination) file location.
describedExecution_initialFileLocation :: Lens.Lens' DescribedExecution (Prelude.Maybe FileLocation)
describedExecution_initialFileLocation = Lens.lens (\DescribedExecution' {initialFileLocation} -> initialFileLocation) (\s@DescribedExecution' {} a -> s {initialFileLocation = a} :: DescribedExecution)

-- | Undocumented member.
describedExecution_posixProfile :: Lens.Lens' DescribedExecution (Prelude.Maybe PosixProfile)
describedExecution_posixProfile = Lens.lens (\DescribedExecution' {posixProfile} -> posixProfile) (\s@DescribedExecution' {} a -> s {posixProfile = a} :: DescribedExecution)

-- | A container object for the session details associated with a workflow.
describedExecution_serviceMetadata :: Lens.Lens' DescribedExecution (Prelude.Maybe ServiceMetadata)
describedExecution_serviceMetadata = Lens.lens (\DescribedExecution' {serviceMetadata} -> serviceMetadata) (\s@DescribedExecution' {} a -> s {serviceMetadata = a} :: DescribedExecution)

-- | The IAM logging role associated with the execution.
describedExecution_loggingConfiguration :: Lens.Lens' DescribedExecution (Prelude.Maybe LoggingConfiguration)
describedExecution_loggingConfiguration = Lens.lens (\DescribedExecution' {loggingConfiguration} -> loggingConfiguration) (\s@DescribedExecution' {} a -> s {loggingConfiguration = a} :: DescribedExecution)

-- | The IAM role associated with the execution.
describedExecution_executionRole :: Lens.Lens' DescribedExecution (Prelude.Maybe Prelude.Text)
describedExecution_executionRole = Lens.lens (\DescribedExecution' {executionRole} -> executionRole) (\s@DescribedExecution' {} a -> s {executionRole = a} :: DescribedExecution)

instance Core.FromJSON DescribedExecution where
  parseJSON =
    Core.withObject
      "DescribedExecution"
      ( \x ->
          DescribedExecution'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ExecutionId")
            Prelude.<*> (x Core..:? "Results")
            Prelude.<*> (x Core..:? "InitialFileLocation")
            Prelude.<*> (x Core..:? "PosixProfile")
            Prelude.<*> (x Core..:? "ServiceMetadata")
            Prelude.<*> (x Core..:? "LoggingConfiguration")
            Prelude.<*> (x Core..:? "ExecutionRole")
      )

instance Prelude.Hashable DescribedExecution

instance Prelude.NFData DescribedExecution
