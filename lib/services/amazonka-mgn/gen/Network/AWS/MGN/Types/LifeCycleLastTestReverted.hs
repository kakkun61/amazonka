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
-- Module      : Network.AWS.MGN.Types.LifeCycleLastTestReverted
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.LifeCycleLastTestReverted where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Lifecycle last Test reverted.
--
-- /See:/ 'newLifeCycleLastTestReverted' smart constructor.
data LifeCycleLastTestReverted = LifeCycleLastTestReverted'
  { -- | Lifecycle last Test reverted API call date and time.
    apiCallDateTime :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LifeCycleLastTestReverted' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiCallDateTime', 'lifeCycleLastTestReverted_apiCallDateTime' - Lifecycle last Test reverted API call date and time.
newLifeCycleLastTestReverted ::
  LifeCycleLastTestReverted
newLifeCycleLastTestReverted =
  LifeCycleLastTestReverted'
    { apiCallDateTime =
        Prelude.Nothing
    }

-- | Lifecycle last Test reverted API call date and time.
lifeCycleLastTestReverted_apiCallDateTime :: Lens.Lens' LifeCycleLastTestReverted (Prelude.Maybe Prelude.Text)
lifeCycleLastTestReverted_apiCallDateTime = Lens.lens (\LifeCycleLastTestReverted' {apiCallDateTime} -> apiCallDateTime) (\s@LifeCycleLastTestReverted' {} a -> s {apiCallDateTime = a} :: LifeCycleLastTestReverted)

instance Core.FromJSON LifeCycleLastTestReverted where
  parseJSON =
    Core.withObject
      "LifeCycleLastTestReverted"
      ( \x ->
          LifeCycleLastTestReverted'
            Prelude.<$> (x Core..:? "apiCallDateTime")
      )

instance Prelude.Hashable LifeCycleLastTestReverted

instance Prelude.NFData LifeCycleLastTestReverted
