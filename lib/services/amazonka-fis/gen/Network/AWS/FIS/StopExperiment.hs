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
-- Module      : Network.AWS.FIS.StopExperiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified experiment.
module Network.AWS.FIS.StopExperiment
  ( -- * Creating a Request
    StopExperiment (..),
    newStopExperiment,

    -- * Request Lenses
    stopExperiment_id,

    -- * Destructuring the Response
    StopExperimentResponse (..),
    newStopExperimentResponse,

    -- * Response Lenses
    stopExperimentResponse_experiment,
    stopExperimentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FIS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopExperiment' smart constructor.
data StopExperiment = StopExperiment'
  { -- | The ID of the experiment.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopExperiment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'stopExperiment_id' - The ID of the experiment.
newStopExperiment ::
  -- | 'id'
  Prelude.Text ->
  StopExperiment
newStopExperiment pId_ = StopExperiment' {id = pId_}

-- | The ID of the experiment.
stopExperiment_id :: Lens.Lens' StopExperiment Prelude.Text
stopExperiment_id = Lens.lens (\StopExperiment' {id} -> id) (\s@StopExperiment' {} a -> s {id = a} :: StopExperiment)

instance Core.AWSRequest StopExperiment where
  type
    AWSResponse StopExperiment =
      StopExperimentResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopExperimentResponse'
            Prelude.<$> (x Core..?> "experiment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopExperiment

instance Prelude.NFData StopExperiment

instance Core.ToHeaders StopExperiment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath StopExperiment where
  toPath StopExperiment' {..} =
    Prelude.mconcat ["/experiments/", Core.toBS id]

instance Core.ToQuery StopExperiment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopExperimentResponse' smart constructor.
data StopExperimentResponse = StopExperimentResponse'
  { -- | Information about the experiment.
    experiment :: Prelude.Maybe Experiment,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopExperimentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'experiment', 'stopExperimentResponse_experiment' - Information about the experiment.
--
-- 'httpStatus', 'stopExperimentResponse_httpStatus' - The response's http status code.
newStopExperimentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopExperimentResponse
newStopExperimentResponse pHttpStatus_ =
  StopExperimentResponse'
    { experiment =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the experiment.
stopExperimentResponse_experiment :: Lens.Lens' StopExperimentResponse (Prelude.Maybe Experiment)
stopExperimentResponse_experiment = Lens.lens (\StopExperimentResponse' {experiment} -> experiment) (\s@StopExperimentResponse' {} a -> s {experiment = a} :: StopExperimentResponse)

-- | The response's http status code.
stopExperimentResponse_httpStatus :: Lens.Lens' StopExperimentResponse Prelude.Int
stopExperimentResponse_httpStatus = Lens.lens (\StopExperimentResponse' {httpStatus} -> httpStatus) (\s@StopExperimentResponse' {} a -> s {httpStatus = a} :: StopExperimentResponse)

instance Prelude.NFData StopExperimentResponse
