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
-- Module      : Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransit where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransitType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details of encryption in transit to the Apache Kafka cluster.
--
-- /See:/ 'newKafkaClusterEncryptionInTransit' smart constructor.
data KafkaClusterEncryptionInTransit = KafkaClusterEncryptionInTransit'
  { -- | The type of encryption in transit to the Apache Kafka cluster.
    encryptionType :: KafkaClusterEncryptionInTransitType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KafkaClusterEncryptionInTransit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionType', 'kafkaClusterEncryptionInTransit_encryptionType' - The type of encryption in transit to the Apache Kafka cluster.
newKafkaClusterEncryptionInTransit ::
  -- | 'encryptionType'
  KafkaClusterEncryptionInTransitType ->
  KafkaClusterEncryptionInTransit
newKafkaClusterEncryptionInTransit pEncryptionType_ =
  KafkaClusterEncryptionInTransit'
    { encryptionType =
        pEncryptionType_
    }

-- | The type of encryption in transit to the Apache Kafka cluster.
kafkaClusterEncryptionInTransit_encryptionType :: Lens.Lens' KafkaClusterEncryptionInTransit KafkaClusterEncryptionInTransitType
kafkaClusterEncryptionInTransit_encryptionType = Lens.lens (\KafkaClusterEncryptionInTransit' {encryptionType} -> encryptionType) (\s@KafkaClusterEncryptionInTransit' {} a -> s {encryptionType = a} :: KafkaClusterEncryptionInTransit)

instance
  Prelude.Hashable
    KafkaClusterEncryptionInTransit

instance
  Prelude.NFData
    KafkaClusterEncryptionInTransit

instance Core.ToJSON KafkaClusterEncryptionInTransit where
  toJSON KafkaClusterEncryptionInTransit' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("encryptionType" Core..= encryptionType)
          ]
      )
