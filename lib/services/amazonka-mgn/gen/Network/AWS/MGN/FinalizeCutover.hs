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
-- Module      : Network.AWS.MGN.FinalizeCutover
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finalizes the cutover immediately for specific Source Servers. All AWS
-- resources created by Application Migration Service for enabling the
-- replication of these source servers will be terminated \/ deleted within
-- 90 minutes. Launched Test or Cutover instances will NOT be terminated.
-- The AWS Replication Agent will receive a command to uninstall itself
-- (within 10 minutes). The following properties of the SourceServer will
-- be changed immediately: dataReplicationInfo.dataReplicationState will be
-- to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to
-- CUTOVER; The totalStorageBytes property fo each of
-- dataReplicationInfo.replicatedDisks will be set to zero;
-- dataReplicationInfo.lagDuration and dataReplicationInfo.lagDurationwill
-- be nullified.
module Network.AWS.MGN.FinalizeCutover
  ( -- * Creating a Request
    FinalizeCutover (..),
    newFinalizeCutover,

    -- * Request Lenses
    finalizeCutover_sourceServerID,

    -- * Destructuring the Response
    SourceServer (..),
    newSourceServer,

    -- * Response Lenses
    sourceServer_sourceProperties,
    sourceServer_arn,
    sourceServer_launchedInstance,
    sourceServer_lifeCycle,
    sourceServer_isArchived,
    sourceServer_dataReplicationInfo,
    sourceServer_sourceServerID,
    sourceServer_tags,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newFinalizeCutover' smart constructor.
data FinalizeCutover = FinalizeCutover'
  { -- | Request to finalize Cutover by Soure Server ID.
    sourceServerID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FinalizeCutover' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceServerID', 'finalizeCutover_sourceServerID' - Request to finalize Cutover by Soure Server ID.
newFinalizeCutover ::
  -- | 'sourceServerID'
  Prelude.Text ->
  FinalizeCutover
newFinalizeCutover pSourceServerID_ =
  FinalizeCutover' {sourceServerID = pSourceServerID_}

-- | Request to finalize Cutover by Soure Server ID.
finalizeCutover_sourceServerID :: Lens.Lens' FinalizeCutover Prelude.Text
finalizeCutover_sourceServerID = Lens.lens (\FinalizeCutover' {sourceServerID} -> sourceServerID) (\s@FinalizeCutover' {} a -> s {sourceServerID = a} :: FinalizeCutover)

instance Core.AWSRequest FinalizeCutover where
  type AWSResponse FinalizeCutover = SourceServer
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable FinalizeCutover

instance Prelude.NFData FinalizeCutover

instance Core.ToHeaders FinalizeCutover where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON FinalizeCutover where
  toJSON FinalizeCutover' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceServerID" Core..= sourceServerID)
          ]
      )

instance Core.ToPath FinalizeCutover where
  toPath = Prelude.const "/FinalizeCutover"

instance Core.ToQuery FinalizeCutover where
  toQuery = Prelude.const Prelude.mempty
