{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WellArchitected.AssociateLenses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate a lens to a workload.
module Network.AWS.WellArchitected.AssociateLenses
  ( -- * Creating a Request
    AssociateLenses (..),
    newAssociateLenses,

    -- * Request Lenses
    associateLenses_workloadId,
    associateLenses_lensAliases,

    -- * Destructuring the Response
    AssociateLensesResponse (..),
    newAssociateLensesResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input to associate lens reviews.
--
-- /See:/ 'newAssociateLenses' smart constructor.
data AssociateLenses = AssociateLenses'
  { workloadId :: Prelude.Text,
    lensAliases :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateLenses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workloadId', 'associateLenses_workloadId' - Undocumented member.
--
-- 'lensAliases', 'associateLenses_lensAliases' - Undocumented member.
newAssociateLenses ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'lensAliases'
  Prelude.NonEmpty Prelude.Text ->
  AssociateLenses
newAssociateLenses pWorkloadId_ pLensAliases_ =
  AssociateLenses'
    { workloadId = pWorkloadId_,
      lensAliases = Lens.coerced Lens.# pLensAliases_
    }

-- | Undocumented member.
associateLenses_workloadId :: Lens.Lens' AssociateLenses Prelude.Text
associateLenses_workloadId = Lens.lens (\AssociateLenses' {workloadId} -> workloadId) (\s@AssociateLenses' {} a -> s {workloadId = a} :: AssociateLenses)

-- | Undocumented member.
associateLenses_lensAliases :: Lens.Lens' AssociateLenses (Prelude.NonEmpty Prelude.Text)
associateLenses_lensAliases = Lens.lens (\AssociateLenses' {lensAliases} -> lensAliases) (\s@AssociateLenses' {} a -> s {lensAliases = a} :: AssociateLenses) Prelude.. Lens.coerced

instance Core.AWSRequest AssociateLenses where
  type
    AWSResponse AssociateLenses =
      AssociateLensesResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveNull AssociateLensesResponse'

instance Prelude.Hashable AssociateLenses

instance Prelude.NFData AssociateLenses

instance Core.ToHeaders AssociateLenses where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateLenses where
  toJSON AssociateLenses' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("LensAliases" Core..= lensAliases)]
      )

instance Core.ToPath AssociateLenses where
  toPath AssociateLenses' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/associateLenses"
      ]

instance Core.ToQuery AssociateLenses where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateLensesResponse' smart constructor.
data AssociateLensesResponse = AssociateLensesResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateLensesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAssociateLensesResponse ::
  AssociateLensesResponse
newAssociateLensesResponse = AssociateLensesResponse'

instance Prelude.NFData AssociateLensesResponse
