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
-- Module      : Network.AWS.MediaLive.DescribeMultiplexProgram
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the details for a program in a multiplex.
module Network.AWS.MediaLive.DescribeMultiplexProgram
  ( -- * Creating a Request
    DescribeMultiplexProgram (..),
    newDescribeMultiplexProgram,

    -- * Request Lenses
    describeMultiplexProgram_multiplexId,
    describeMultiplexProgram_programName,

    -- * Destructuring the Response
    DescribeMultiplexProgramResponse (..),
    newDescribeMultiplexProgramResponse,

    -- * Response Lenses
    describeMultiplexProgramResponse_packetIdentifiersMap,
    describeMultiplexProgramResponse_pipelineDetails,
    describeMultiplexProgramResponse_programName,
    describeMultiplexProgramResponse_channelId,
    describeMultiplexProgramResponse_multiplexProgramSettings,
    describeMultiplexProgramResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Placeholder documentation for DescribeMultiplexProgramRequest
--
-- /See:/ 'newDescribeMultiplexProgram' smart constructor.
data DescribeMultiplexProgram = DescribeMultiplexProgram'
  { -- | The ID of the multiplex that the program belongs to.
    multiplexId :: Prelude.Text,
    -- | The name of the program.
    programName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMultiplexProgram' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiplexId', 'describeMultiplexProgram_multiplexId' - The ID of the multiplex that the program belongs to.
--
-- 'programName', 'describeMultiplexProgram_programName' - The name of the program.
newDescribeMultiplexProgram ::
  -- | 'multiplexId'
  Prelude.Text ->
  -- | 'programName'
  Prelude.Text ->
  DescribeMultiplexProgram
newDescribeMultiplexProgram
  pMultiplexId_
  pProgramName_ =
    DescribeMultiplexProgram'
      { multiplexId =
          pMultiplexId_,
        programName = pProgramName_
      }

-- | The ID of the multiplex that the program belongs to.
describeMultiplexProgram_multiplexId :: Lens.Lens' DescribeMultiplexProgram Prelude.Text
describeMultiplexProgram_multiplexId = Lens.lens (\DescribeMultiplexProgram' {multiplexId} -> multiplexId) (\s@DescribeMultiplexProgram' {} a -> s {multiplexId = a} :: DescribeMultiplexProgram)

-- | The name of the program.
describeMultiplexProgram_programName :: Lens.Lens' DescribeMultiplexProgram Prelude.Text
describeMultiplexProgram_programName = Lens.lens (\DescribeMultiplexProgram' {programName} -> programName) (\s@DescribeMultiplexProgram' {} a -> s {programName = a} :: DescribeMultiplexProgram)

instance Core.AWSRequest DescribeMultiplexProgram where
  type
    AWSResponse DescribeMultiplexProgram =
      DescribeMultiplexProgramResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMultiplexProgramResponse'
            Prelude.<$> (x Core..?> "packetIdentifiersMap")
            Prelude.<*> ( x Core..?> "pipelineDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "programName")
            Prelude.<*> (x Core..?> "channelId")
            Prelude.<*> (x Core..?> "multiplexProgramSettings")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeMultiplexProgram

instance Prelude.NFData DescribeMultiplexProgram

instance Core.ToHeaders DescribeMultiplexProgram where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeMultiplexProgram where
  toPath DescribeMultiplexProgram' {..} =
    Prelude.mconcat
      [ "/prod/multiplexes/",
        Core.toBS multiplexId,
        "/programs/",
        Core.toBS programName
      ]

instance Core.ToQuery DescribeMultiplexProgram where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for DescribeMultiplexProgramResponse
--
-- /See:/ 'newDescribeMultiplexProgramResponse' smart constructor.
data DescribeMultiplexProgramResponse = DescribeMultiplexProgramResponse'
  { -- | The packet identifier map for this multiplex program.
    packetIdentifiersMap :: Prelude.Maybe MultiplexProgramPacketIdentifiersMap,
    -- | Contains information about the current sources for the specified program
    -- in the specified multiplex. Keep in mind that each multiplex pipeline
    -- connects to both pipelines in a given source channel (the channel
    -- identified by the program). But only one of those channel pipelines is
    -- ever active at one time.
    pipelineDetails :: Prelude.Maybe [MultiplexProgramPipelineDetail],
    -- | The name of the multiplex program.
    programName :: Prelude.Maybe Prelude.Text,
    -- | The MediaLive channel associated with the program.
    channelId :: Prelude.Maybe Prelude.Text,
    -- | The settings for this multiplex program.
    multiplexProgramSettings :: Prelude.Maybe MultiplexProgramSettings,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMultiplexProgramResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packetIdentifiersMap', 'describeMultiplexProgramResponse_packetIdentifiersMap' - The packet identifier map for this multiplex program.
--
-- 'pipelineDetails', 'describeMultiplexProgramResponse_pipelineDetails' - Contains information about the current sources for the specified program
-- in the specified multiplex. Keep in mind that each multiplex pipeline
-- connects to both pipelines in a given source channel (the channel
-- identified by the program). But only one of those channel pipelines is
-- ever active at one time.
--
-- 'programName', 'describeMultiplexProgramResponse_programName' - The name of the multiplex program.
--
-- 'channelId', 'describeMultiplexProgramResponse_channelId' - The MediaLive channel associated with the program.
--
-- 'multiplexProgramSettings', 'describeMultiplexProgramResponse_multiplexProgramSettings' - The settings for this multiplex program.
--
-- 'httpStatus', 'describeMultiplexProgramResponse_httpStatus' - The response's http status code.
newDescribeMultiplexProgramResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeMultiplexProgramResponse
newDescribeMultiplexProgramResponse pHttpStatus_ =
  DescribeMultiplexProgramResponse'
    { packetIdentifiersMap =
        Prelude.Nothing,
      pipelineDetails = Prelude.Nothing,
      programName = Prelude.Nothing,
      channelId = Prelude.Nothing,
      multiplexProgramSettings =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The packet identifier map for this multiplex program.
describeMultiplexProgramResponse_packetIdentifiersMap :: Lens.Lens' DescribeMultiplexProgramResponse (Prelude.Maybe MultiplexProgramPacketIdentifiersMap)
describeMultiplexProgramResponse_packetIdentifiersMap = Lens.lens (\DescribeMultiplexProgramResponse' {packetIdentifiersMap} -> packetIdentifiersMap) (\s@DescribeMultiplexProgramResponse' {} a -> s {packetIdentifiersMap = a} :: DescribeMultiplexProgramResponse)

-- | Contains information about the current sources for the specified program
-- in the specified multiplex. Keep in mind that each multiplex pipeline
-- connects to both pipelines in a given source channel (the channel
-- identified by the program). But only one of those channel pipelines is
-- ever active at one time.
describeMultiplexProgramResponse_pipelineDetails :: Lens.Lens' DescribeMultiplexProgramResponse (Prelude.Maybe [MultiplexProgramPipelineDetail])
describeMultiplexProgramResponse_pipelineDetails = Lens.lens (\DescribeMultiplexProgramResponse' {pipelineDetails} -> pipelineDetails) (\s@DescribeMultiplexProgramResponse' {} a -> s {pipelineDetails = a} :: DescribeMultiplexProgramResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the multiplex program.
describeMultiplexProgramResponse_programName :: Lens.Lens' DescribeMultiplexProgramResponse (Prelude.Maybe Prelude.Text)
describeMultiplexProgramResponse_programName = Lens.lens (\DescribeMultiplexProgramResponse' {programName} -> programName) (\s@DescribeMultiplexProgramResponse' {} a -> s {programName = a} :: DescribeMultiplexProgramResponse)

-- | The MediaLive channel associated with the program.
describeMultiplexProgramResponse_channelId :: Lens.Lens' DescribeMultiplexProgramResponse (Prelude.Maybe Prelude.Text)
describeMultiplexProgramResponse_channelId = Lens.lens (\DescribeMultiplexProgramResponse' {channelId} -> channelId) (\s@DescribeMultiplexProgramResponse' {} a -> s {channelId = a} :: DescribeMultiplexProgramResponse)

-- | The settings for this multiplex program.
describeMultiplexProgramResponse_multiplexProgramSettings :: Lens.Lens' DescribeMultiplexProgramResponse (Prelude.Maybe MultiplexProgramSettings)
describeMultiplexProgramResponse_multiplexProgramSettings = Lens.lens (\DescribeMultiplexProgramResponse' {multiplexProgramSettings} -> multiplexProgramSettings) (\s@DescribeMultiplexProgramResponse' {} a -> s {multiplexProgramSettings = a} :: DescribeMultiplexProgramResponse)

-- | The response's http status code.
describeMultiplexProgramResponse_httpStatus :: Lens.Lens' DescribeMultiplexProgramResponse Prelude.Int
describeMultiplexProgramResponse_httpStatus = Lens.lens (\DescribeMultiplexProgramResponse' {httpStatus} -> httpStatus) (\s@DescribeMultiplexProgramResponse' {} a -> s {httpStatus = a} :: DescribeMultiplexProgramResponse)

instance
  Prelude.NFData
    DescribeMultiplexProgramResponse
