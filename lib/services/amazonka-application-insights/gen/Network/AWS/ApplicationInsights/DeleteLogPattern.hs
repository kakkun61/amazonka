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
-- Module      : Network.AWS.ApplicationInsights.DeleteLogPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified log pattern from a @LogPatternSet@.
module Network.AWS.ApplicationInsights.DeleteLogPattern
  ( -- * Creating a Request
    DeleteLogPattern (..),
    newDeleteLogPattern,

    -- * Request Lenses
    deleteLogPattern_resourceGroupName,
    deleteLogPattern_patternSetName,
    deleteLogPattern_patternName,

    -- * Destructuring the Response
    DeleteLogPatternResponse (..),
    newDeleteLogPatternResponse,

    -- * Response Lenses
    deleteLogPatternResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteLogPattern' smart constructor.
data DeleteLogPattern = DeleteLogPattern'
  { -- | The name of the resource group.
    resourceGroupName :: Prelude.Text,
    -- | The name of the log pattern set.
    patternSetName :: Prelude.Text,
    -- | The name of the log pattern.
    patternName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLogPattern' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceGroupName', 'deleteLogPattern_resourceGroupName' - The name of the resource group.
--
-- 'patternSetName', 'deleteLogPattern_patternSetName' - The name of the log pattern set.
--
-- 'patternName', 'deleteLogPattern_patternName' - The name of the log pattern.
newDeleteLogPattern ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  -- | 'patternSetName'
  Prelude.Text ->
  -- | 'patternName'
  Prelude.Text ->
  DeleteLogPattern
newDeleteLogPattern
  pResourceGroupName_
  pPatternSetName_
  pPatternName_ =
    DeleteLogPattern'
      { resourceGroupName =
          pResourceGroupName_,
        patternSetName = pPatternSetName_,
        patternName = pPatternName_
      }

-- | The name of the resource group.
deleteLogPattern_resourceGroupName :: Lens.Lens' DeleteLogPattern Prelude.Text
deleteLogPattern_resourceGroupName = Lens.lens (\DeleteLogPattern' {resourceGroupName} -> resourceGroupName) (\s@DeleteLogPattern' {} a -> s {resourceGroupName = a} :: DeleteLogPattern)

-- | The name of the log pattern set.
deleteLogPattern_patternSetName :: Lens.Lens' DeleteLogPattern Prelude.Text
deleteLogPattern_patternSetName = Lens.lens (\DeleteLogPattern' {patternSetName} -> patternSetName) (\s@DeleteLogPattern' {} a -> s {patternSetName = a} :: DeleteLogPattern)

-- | The name of the log pattern.
deleteLogPattern_patternName :: Lens.Lens' DeleteLogPattern Prelude.Text
deleteLogPattern_patternName = Lens.lens (\DeleteLogPattern' {patternName} -> patternName) (\s@DeleteLogPattern' {} a -> s {patternName = a} :: DeleteLogPattern)

instance Core.AWSRequest DeleteLogPattern where
  type
    AWSResponse DeleteLogPattern =
      DeleteLogPatternResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteLogPatternResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLogPattern

instance Prelude.NFData DeleteLogPattern

instance Core.ToHeaders DeleteLogPattern where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DeleteLogPattern" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteLogPattern where
  toJSON DeleteLogPattern' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName),
            Prelude.Just
              ("PatternSetName" Core..= patternSetName),
            Prelude.Just ("PatternName" Core..= patternName)
          ]
      )

instance Core.ToPath DeleteLogPattern where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteLogPattern where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLogPatternResponse' smart constructor.
data DeleteLogPatternResponse = DeleteLogPatternResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLogPatternResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteLogPatternResponse_httpStatus' - The response's http status code.
newDeleteLogPatternResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLogPatternResponse
newDeleteLogPatternResponse pHttpStatus_ =
  DeleteLogPatternResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteLogPatternResponse_httpStatus :: Lens.Lens' DeleteLogPatternResponse Prelude.Int
deleteLogPatternResponse_httpStatus = Lens.lens (\DeleteLogPatternResponse' {httpStatus} -> httpStatus) (\s@DeleteLogPatternResponse' {} a -> s {httpStatus = a} :: DeleteLogPatternResponse)

instance Prelude.NFData DeleteLogPatternResponse
