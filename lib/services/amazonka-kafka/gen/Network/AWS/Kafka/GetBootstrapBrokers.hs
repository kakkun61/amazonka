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
-- Module      : Network.AWS.Kafka.GetBootstrapBrokers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of brokers that a client application can use to bootstrap.
module Network.AWS.Kafka.GetBootstrapBrokers
  ( -- * Creating a Request
    GetBootstrapBrokers (..),
    newGetBootstrapBrokers,

    -- * Request Lenses
    getBootstrapBrokers_clusterArn,

    -- * Destructuring the Response
    GetBootstrapBrokersResponse (..),
    newGetBootstrapBrokersResponse,

    -- * Response Lenses
    getBootstrapBrokersResponse_bootstrapBrokerString,
    getBootstrapBrokersResponse_bootstrapBrokerStringSaslScram,
    getBootstrapBrokersResponse_bootstrapBrokerStringTls,
    getBootstrapBrokersResponse_bootstrapBrokerStringSaslIam,
    getBootstrapBrokersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBootstrapBrokers' smart constructor.
data GetBootstrapBrokers = GetBootstrapBrokers'
  { -- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    clusterArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBootstrapBrokers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'getBootstrapBrokers_clusterArn' - The Amazon Resource Name (ARN) that uniquely identifies the cluster.
newGetBootstrapBrokers ::
  -- | 'clusterArn'
  Prelude.Text ->
  GetBootstrapBrokers
newGetBootstrapBrokers pClusterArn_ =
  GetBootstrapBrokers' {clusterArn = pClusterArn_}

-- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
getBootstrapBrokers_clusterArn :: Lens.Lens' GetBootstrapBrokers Prelude.Text
getBootstrapBrokers_clusterArn = Lens.lens (\GetBootstrapBrokers' {clusterArn} -> clusterArn) (\s@GetBootstrapBrokers' {} a -> s {clusterArn = a} :: GetBootstrapBrokers)

instance Core.AWSRequest GetBootstrapBrokers where
  type
    AWSResponse GetBootstrapBrokers =
      GetBootstrapBrokersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBootstrapBrokersResponse'
            Prelude.<$> (x Core..?> "bootstrapBrokerString")
            Prelude.<*> (x Core..?> "bootstrapBrokerStringSaslScram")
            Prelude.<*> (x Core..?> "bootstrapBrokerStringTls")
            Prelude.<*> (x Core..?> "bootstrapBrokerStringSaslIam")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBootstrapBrokers

instance Prelude.NFData GetBootstrapBrokers

instance Core.ToHeaders GetBootstrapBrokers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetBootstrapBrokers where
  toPath GetBootstrapBrokers' {..} =
    Prelude.mconcat
      [ "/v1/clusters/",
        Core.toBS clusterArn,
        "/bootstrap-brokers"
      ]

instance Core.ToQuery GetBootstrapBrokers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetBootstrapBrokersResponse' smart constructor.
data GetBootstrapBrokersResponse = GetBootstrapBrokersResponse'
  { -- | A string containing one or more hostname:port pairs.
    bootstrapBrokerString :: Prelude.Maybe Prelude.Text,
    -- | A string containing one or more DNS names (or IP) and Sasl Scram port
    -- pairs.
    bootstrapBrokerStringSaslScram :: Prelude.Maybe Prelude.Text,
    -- | A string containing one or more DNS names (or IP) and TLS port pairs.
    bootstrapBrokerStringTls :: Prelude.Maybe Prelude.Text,
    -- | A string that contains one or more DNS names (or IP addresses) and SASL
    -- IAM port pairs.
    bootstrapBrokerStringSaslIam :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBootstrapBrokersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bootstrapBrokerString', 'getBootstrapBrokersResponse_bootstrapBrokerString' - A string containing one or more hostname:port pairs.
--
-- 'bootstrapBrokerStringSaslScram', 'getBootstrapBrokersResponse_bootstrapBrokerStringSaslScram' - A string containing one or more DNS names (or IP) and Sasl Scram port
-- pairs.
--
-- 'bootstrapBrokerStringTls', 'getBootstrapBrokersResponse_bootstrapBrokerStringTls' - A string containing one or more DNS names (or IP) and TLS port pairs.
--
-- 'bootstrapBrokerStringSaslIam', 'getBootstrapBrokersResponse_bootstrapBrokerStringSaslIam' - A string that contains one or more DNS names (or IP addresses) and SASL
-- IAM port pairs.
--
-- 'httpStatus', 'getBootstrapBrokersResponse_httpStatus' - The response's http status code.
newGetBootstrapBrokersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBootstrapBrokersResponse
newGetBootstrapBrokersResponse pHttpStatus_ =
  GetBootstrapBrokersResponse'
    { bootstrapBrokerString =
        Prelude.Nothing,
      bootstrapBrokerStringSaslScram =
        Prelude.Nothing,
      bootstrapBrokerStringTls = Prelude.Nothing,
      bootstrapBrokerStringSaslIam = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A string containing one or more hostname:port pairs.
getBootstrapBrokersResponse_bootstrapBrokerString :: Lens.Lens' GetBootstrapBrokersResponse (Prelude.Maybe Prelude.Text)
getBootstrapBrokersResponse_bootstrapBrokerString = Lens.lens (\GetBootstrapBrokersResponse' {bootstrapBrokerString} -> bootstrapBrokerString) (\s@GetBootstrapBrokersResponse' {} a -> s {bootstrapBrokerString = a} :: GetBootstrapBrokersResponse)

-- | A string containing one or more DNS names (or IP) and Sasl Scram port
-- pairs.
getBootstrapBrokersResponse_bootstrapBrokerStringSaslScram :: Lens.Lens' GetBootstrapBrokersResponse (Prelude.Maybe Prelude.Text)
getBootstrapBrokersResponse_bootstrapBrokerStringSaslScram = Lens.lens (\GetBootstrapBrokersResponse' {bootstrapBrokerStringSaslScram} -> bootstrapBrokerStringSaslScram) (\s@GetBootstrapBrokersResponse' {} a -> s {bootstrapBrokerStringSaslScram = a} :: GetBootstrapBrokersResponse)

-- | A string containing one or more DNS names (or IP) and TLS port pairs.
getBootstrapBrokersResponse_bootstrapBrokerStringTls :: Lens.Lens' GetBootstrapBrokersResponse (Prelude.Maybe Prelude.Text)
getBootstrapBrokersResponse_bootstrapBrokerStringTls = Lens.lens (\GetBootstrapBrokersResponse' {bootstrapBrokerStringTls} -> bootstrapBrokerStringTls) (\s@GetBootstrapBrokersResponse' {} a -> s {bootstrapBrokerStringTls = a} :: GetBootstrapBrokersResponse)

-- | A string that contains one or more DNS names (or IP addresses) and SASL
-- IAM port pairs.
getBootstrapBrokersResponse_bootstrapBrokerStringSaslIam :: Lens.Lens' GetBootstrapBrokersResponse (Prelude.Maybe Prelude.Text)
getBootstrapBrokersResponse_bootstrapBrokerStringSaslIam = Lens.lens (\GetBootstrapBrokersResponse' {bootstrapBrokerStringSaslIam} -> bootstrapBrokerStringSaslIam) (\s@GetBootstrapBrokersResponse' {} a -> s {bootstrapBrokerStringSaslIam = a} :: GetBootstrapBrokersResponse)

-- | The response's http status code.
getBootstrapBrokersResponse_httpStatus :: Lens.Lens' GetBootstrapBrokersResponse Prelude.Int
getBootstrapBrokersResponse_httpStatus = Lens.lens (\GetBootstrapBrokersResponse' {httpStatus} -> httpStatus) (\s@GetBootstrapBrokersResponse' {} a -> s {httpStatus = a} :: GetBootstrapBrokersResponse)

instance Prelude.NFData GetBootstrapBrokersResponse
