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
-- Module      : Network.AWS.CostExplorer.Types.RightsizingRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RightsizingRecommendation where

import qualified Network.AWS.Core as Core
import Network.AWS.CostExplorer.Types.CurrentInstance
import Network.AWS.CostExplorer.Types.FindingReasonCode
import Network.AWS.CostExplorer.Types.ModifyRecommendationDetail
import Network.AWS.CostExplorer.Types.RightsizingType
import Network.AWS.CostExplorer.Types.TerminateRecommendationDetail
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Recommendations to rightsize resources.
--
-- /See:/ 'newRightsizingRecommendation' smart constructor.
data RightsizingRecommendation = RightsizingRecommendation'
  { -- | The account that this recommendation is for.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The list of possible reasons why the recommendation is generated such as
    -- under or over utilization of specific metrics (for example, CPU, Memory,
    -- Network).
    findingReasonCodes :: Prelude.Maybe [FindingReasonCode],
    -- | The details for the modification recommendations.
    modifyRecommendationDetail :: Prelude.Maybe ModifyRecommendationDetail,
    -- | Context regarding the current instance.
    currentInstance :: Prelude.Maybe CurrentInstance,
    -- | A recommendation to either terminate or modify the resource.
    rightsizingType :: Prelude.Maybe RightsizingType,
    -- | The details for termination recommendations.
    terminateRecommendationDetail :: Prelude.Maybe TerminateRecommendationDetail
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RightsizingRecommendation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'rightsizingRecommendation_accountId' - The account that this recommendation is for.
--
-- 'findingReasonCodes', 'rightsizingRecommendation_findingReasonCodes' - The list of possible reasons why the recommendation is generated such as
-- under or over utilization of specific metrics (for example, CPU, Memory,
-- Network).
--
-- 'modifyRecommendationDetail', 'rightsizingRecommendation_modifyRecommendationDetail' - The details for the modification recommendations.
--
-- 'currentInstance', 'rightsizingRecommendation_currentInstance' - Context regarding the current instance.
--
-- 'rightsizingType', 'rightsizingRecommendation_rightsizingType' - A recommendation to either terminate or modify the resource.
--
-- 'terminateRecommendationDetail', 'rightsizingRecommendation_terminateRecommendationDetail' - The details for termination recommendations.
newRightsizingRecommendation ::
  RightsizingRecommendation
newRightsizingRecommendation =
  RightsizingRecommendation'
    { accountId =
        Prelude.Nothing,
      findingReasonCodes = Prelude.Nothing,
      modifyRecommendationDetail = Prelude.Nothing,
      currentInstance = Prelude.Nothing,
      rightsizingType = Prelude.Nothing,
      terminateRecommendationDetail = Prelude.Nothing
    }

-- | The account that this recommendation is for.
rightsizingRecommendation_accountId :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe Prelude.Text)
rightsizingRecommendation_accountId = Lens.lens (\RightsizingRecommendation' {accountId} -> accountId) (\s@RightsizingRecommendation' {} a -> s {accountId = a} :: RightsizingRecommendation)

-- | The list of possible reasons why the recommendation is generated such as
-- under or over utilization of specific metrics (for example, CPU, Memory,
-- Network).
rightsizingRecommendation_findingReasonCodes :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe [FindingReasonCode])
rightsizingRecommendation_findingReasonCodes = Lens.lens (\RightsizingRecommendation' {findingReasonCodes} -> findingReasonCodes) (\s@RightsizingRecommendation' {} a -> s {findingReasonCodes = a} :: RightsizingRecommendation) Prelude.. Lens.mapping Lens.coerced

-- | The details for the modification recommendations.
rightsizingRecommendation_modifyRecommendationDetail :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe ModifyRecommendationDetail)
rightsizingRecommendation_modifyRecommendationDetail = Lens.lens (\RightsizingRecommendation' {modifyRecommendationDetail} -> modifyRecommendationDetail) (\s@RightsizingRecommendation' {} a -> s {modifyRecommendationDetail = a} :: RightsizingRecommendation)

-- | Context regarding the current instance.
rightsizingRecommendation_currentInstance :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe CurrentInstance)
rightsizingRecommendation_currentInstance = Lens.lens (\RightsizingRecommendation' {currentInstance} -> currentInstance) (\s@RightsizingRecommendation' {} a -> s {currentInstance = a} :: RightsizingRecommendation)

-- | A recommendation to either terminate or modify the resource.
rightsizingRecommendation_rightsizingType :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe RightsizingType)
rightsizingRecommendation_rightsizingType = Lens.lens (\RightsizingRecommendation' {rightsizingType} -> rightsizingType) (\s@RightsizingRecommendation' {} a -> s {rightsizingType = a} :: RightsizingRecommendation)

-- | The details for termination recommendations.
rightsizingRecommendation_terminateRecommendationDetail :: Lens.Lens' RightsizingRecommendation (Prelude.Maybe TerminateRecommendationDetail)
rightsizingRecommendation_terminateRecommendationDetail = Lens.lens (\RightsizingRecommendation' {terminateRecommendationDetail} -> terminateRecommendationDetail) (\s@RightsizingRecommendation' {} a -> s {terminateRecommendationDetail = a} :: RightsizingRecommendation)

instance Core.FromJSON RightsizingRecommendation where
  parseJSON =
    Core.withObject
      "RightsizingRecommendation"
      ( \x ->
          RightsizingRecommendation'
            Prelude.<$> (x Core..:? "AccountId")
            Prelude.<*> ( x Core..:? "FindingReasonCodes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ModifyRecommendationDetail")
            Prelude.<*> (x Core..:? "CurrentInstance")
            Prelude.<*> (x Core..:? "RightsizingType")
            Prelude.<*> (x Core..:? "TerminateRecommendationDetail")
      )

instance Prelude.Hashable RightsizingRecommendation

instance Prelude.NFData RightsizingRecommendation
