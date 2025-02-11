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
-- Module      : Network.AWS.MGN.Types.LifeCycleLastCutoverFinalized
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.LifeCycleLastCutoverFinalized where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Lifecycle Cutover finalized
--
-- /See:/ 'newLifeCycleLastCutoverFinalized' smart constructor.
data LifeCycleLastCutoverFinalized = LifeCycleLastCutoverFinalized'
  { -- | Lifecycle Cutover finalized date and time.
    apiCallDateTime :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LifeCycleLastCutoverFinalized' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiCallDateTime', 'lifeCycleLastCutoverFinalized_apiCallDateTime' - Lifecycle Cutover finalized date and time.
newLifeCycleLastCutoverFinalized ::
  LifeCycleLastCutoverFinalized
newLifeCycleLastCutoverFinalized =
  LifeCycleLastCutoverFinalized'
    { apiCallDateTime =
        Prelude.Nothing
    }

-- | Lifecycle Cutover finalized date and time.
lifeCycleLastCutoverFinalized_apiCallDateTime :: Lens.Lens' LifeCycleLastCutoverFinalized (Prelude.Maybe Prelude.Text)
lifeCycleLastCutoverFinalized_apiCallDateTime = Lens.lens (\LifeCycleLastCutoverFinalized' {apiCallDateTime} -> apiCallDateTime) (\s@LifeCycleLastCutoverFinalized' {} a -> s {apiCallDateTime = a} :: LifeCycleLastCutoverFinalized)

instance Core.FromJSON LifeCycleLastCutoverFinalized where
  parseJSON =
    Core.withObject
      "LifeCycleLastCutoverFinalized"
      ( \x ->
          LifeCycleLastCutoverFinalized'
            Prelude.<$> (x Core..:? "apiCallDateTime")
      )

instance
  Prelude.Hashable
    LifeCycleLastCutoverFinalized

instance Prelude.NFData LifeCycleLastCutoverFinalized
