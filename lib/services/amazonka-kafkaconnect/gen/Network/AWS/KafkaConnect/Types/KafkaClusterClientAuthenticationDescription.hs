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
-- Module      : Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The client authentication information used in order to authenticate with
-- the Apache Kafka cluster.
--
-- /See:/ 'newKafkaClusterClientAuthenticationDescription' smart constructor.
data KafkaClusterClientAuthenticationDescription = KafkaClusterClientAuthenticationDescription'
  { -- | The type of client authentication used to connect to the Apache Kafka
    -- cluster. Value NONE means that no client authentication is used.
    authenticationType :: Prelude.Maybe KafkaClusterClientAuthenticationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KafkaClusterClientAuthenticationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationType', 'kafkaClusterClientAuthenticationDescription_authenticationType' - The type of client authentication used to connect to the Apache Kafka
-- cluster. Value NONE means that no client authentication is used.
newKafkaClusterClientAuthenticationDescription ::
  KafkaClusterClientAuthenticationDescription
newKafkaClusterClientAuthenticationDescription =
  KafkaClusterClientAuthenticationDescription'
    { authenticationType =
        Prelude.Nothing
    }

-- | The type of client authentication used to connect to the Apache Kafka
-- cluster. Value NONE means that no client authentication is used.
kafkaClusterClientAuthenticationDescription_authenticationType :: Lens.Lens' KafkaClusterClientAuthenticationDescription (Prelude.Maybe KafkaClusterClientAuthenticationType)
kafkaClusterClientAuthenticationDescription_authenticationType = Lens.lens (\KafkaClusterClientAuthenticationDescription' {authenticationType} -> authenticationType) (\s@KafkaClusterClientAuthenticationDescription' {} a -> s {authenticationType = a} :: KafkaClusterClientAuthenticationDescription)

instance
  Core.FromJSON
    KafkaClusterClientAuthenticationDescription
  where
  parseJSON =
    Core.withObject
      "KafkaClusterClientAuthenticationDescription"
      ( \x ->
          KafkaClusterClientAuthenticationDescription'
            Prelude.<$> (x Core..:? "authenticationType")
      )

instance
  Prelude.Hashable
    KafkaClusterClientAuthenticationDescription

instance
  Prelude.NFData
    KafkaClusterClientAuthenticationDescription
