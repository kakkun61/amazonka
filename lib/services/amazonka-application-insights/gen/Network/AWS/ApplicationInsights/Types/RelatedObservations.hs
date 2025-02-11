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
-- Module      : Network.AWS.ApplicationInsights.Types.RelatedObservations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationInsights.Types.RelatedObservations where

import Network.AWS.ApplicationInsights.Types.Observation
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes observations related to the problem.
--
-- /See:/ 'newRelatedObservations' smart constructor.
data RelatedObservations = RelatedObservations'
  { -- | The list of observations related to the problem.
    observationList :: Prelude.Maybe [Observation]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RelatedObservations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'observationList', 'relatedObservations_observationList' - The list of observations related to the problem.
newRelatedObservations ::
  RelatedObservations
newRelatedObservations =
  RelatedObservations'
    { observationList =
        Prelude.Nothing
    }

-- | The list of observations related to the problem.
relatedObservations_observationList :: Lens.Lens' RelatedObservations (Prelude.Maybe [Observation])
relatedObservations_observationList = Lens.lens (\RelatedObservations' {observationList} -> observationList) (\s@RelatedObservations' {} a -> s {observationList = a} :: RelatedObservations) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RelatedObservations where
  parseJSON =
    Core.withObject
      "RelatedObservations"
      ( \x ->
          RelatedObservations'
            Prelude.<$> ( x Core..:? "ObservationList"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable RelatedObservations

instance Prelude.NFData RelatedObservations
