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
-- Module      : Network.AWS.SSOAdmin.Types.OperationStatusFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSOAdmin.Types.OperationStatusFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSOAdmin.Types.StatusValues

-- | Filters he operation status list based on the passed attribute value.
--
-- /See:/ 'newOperationStatusFilter' smart constructor.
data OperationStatusFilter = OperationStatusFilter'
  { -- | Filters the list operations result based on the status attribute.
    status :: Prelude.Maybe StatusValues
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OperationStatusFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'operationStatusFilter_status' - Filters the list operations result based on the status attribute.
newOperationStatusFilter ::
  OperationStatusFilter
newOperationStatusFilter =
  OperationStatusFilter' {status = Prelude.Nothing}

-- | Filters the list operations result based on the status attribute.
operationStatusFilter_status :: Lens.Lens' OperationStatusFilter (Prelude.Maybe StatusValues)
operationStatusFilter_status = Lens.lens (\OperationStatusFilter' {status} -> status) (\s@OperationStatusFilter' {} a -> s {status = a} :: OperationStatusFilter)

instance Prelude.Hashable OperationStatusFilter

instance Prelude.NFData OperationStatusFilter

instance Core.ToJSON OperationStatusFilter where
  toJSON OperationStatusFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Status" Core..=) Prelude.<$> status]
      )
