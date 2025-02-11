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
-- Module      : Network.AWS.Chime.DeleteSipRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a SIP rule. You must disable a SIP rule before you can delete
-- it.
module Network.AWS.Chime.DeleteSipRule
  ( -- * Creating a Request
    DeleteSipRule (..),
    newDeleteSipRule,

    -- * Request Lenses
    deleteSipRule_sipRuleId,

    -- * Destructuring the Response
    DeleteSipRuleResponse (..),
    newDeleteSipRuleResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteSipRule' smart constructor.
data DeleteSipRule = DeleteSipRule'
  { -- | The SIP rule ID.
    sipRuleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSipRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipRuleId', 'deleteSipRule_sipRuleId' - The SIP rule ID.
newDeleteSipRule ::
  -- | 'sipRuleId'
  Prelude.Text ->
  DeleteSipRule
newDeleteSipRule pSipRuleId_ =
  DeleteSipRule' {sipRuleId = pSipRuleId_}

-- | The SIP rule ID.
deleteSipRule_sipRuleId :: Lens.Lens' DeleteSipRule Prelude.Text
deleteSipRule_sipRuleId = Lens.lens (\DeleteSipRule' {sipRuleId} -> sipRuleId) (\s@DeleteSipRule' {} a -> s {sipRuleId = a} :: DeleteSipRule)

instance Core.AWSRequest DeleteSipRule where
  type
    AWSResponse DeleteSipRule =
      DeleteSipRuleResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteSipRuleResponse'

instance Prelude.Hashable DeleteSipRule

instance Prelude.NFData DeleteSipRule

instance Core.ToHeaders DeleteSipRule where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteSipRule where
  toPath DeleteSipRule' {..} =
    Prelude.mconcat
      ["/sip-rules/", Core.toBS sipRuleId]

instance Core.ToQuery DeleteSipRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSipRuleResponse' smart constructor.
data DeleteSipRuleResponse = DeleteSipRuleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSipRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteSipRuleResponse ::
  DeleteSipRuleResponse
newDeleteSipRuleResponse = DeleteSipRuleResponse'

instance Prelude.NFData DeleteSipRuleResponse
