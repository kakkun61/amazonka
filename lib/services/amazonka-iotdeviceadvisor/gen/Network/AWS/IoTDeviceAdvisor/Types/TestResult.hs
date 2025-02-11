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
-- Module      : Network.AWS.IoTDeviceAdvisor.Types.TestResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTDeviceAdvisor.Types.TestResult where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTDeviceAdvisor.Types.GroupResult
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Show each group result.
--
-- /See:/ 'newTestResult' smart constructor.
data TestResult = TestResult'
  { -- | Show each group of test results.
    groups :: Prelude.Maybe [GroupResult]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TestResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groups', 'testResult_groups' - Show each group of test results.
newTestResult ::
  TestResult
newTestResult = TestResult' {groups = Prelude.Nothing}

-- | Show each group of test results.
testResult_groups :: Lens.Lens' TestResult (Prelude.Maybe [GroupResult])
testResult_groups = Lens.lens (\TestResult' {groups} -> groups) (\s@TestResult' {} a -> s {groups = a} :: TestResult) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON TestResult where
  parseJSON =
    Core.withObject
      "TestResult"
      ( \x ->
          TestResult'
            Prelude.<$> (x Core..:? "groups" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable TestResult

instance Prelude.NFData TestResult
