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
-- Module      : Network.AWS.Kafka.Types.KafkaVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.KafkaVersion where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.KafkaVersionStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newKafkaVersion' smart constructor.
data KafkaVersion = KafkaVersion'
  { status :: Prelude.Maybe KafkaVersionStatus,
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KafkaVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'kafkaVersion_status' - Undocumented member.
--
-- 'version', 'kafkaVersion_version' - Undocumented member.
newKafkaVersion ::
  KafkaVersion
newKafkaVersion =
  KafkaVersion'
    { status = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | Undocumented member.
kafkaVersion_status :: Lens.Lens' KafkaVersion (Prelude.Maybe KafkaVersionStatus)
kafkaVersion_status = Lens.lens (\KafkaVersion' {status} -> status) (\s@KafkaVersion' {} a -> s {status = a} :: KafkaVersion)

-- | Undocumented member.
kafkaVersion_version :: Lens.Lens' KafkaVersion (Prelude.Maybe Prelude.Text)
kafkaVersion_version = Lens.lens (\KafkaVersion' {version} -> version) (\s@KafkaVersion' {} a -> s {version = a} :: KafkaVersion)

instance Core.FromJSON KafkaVersion where
  parseJSON =
    Core.withObject
      "KafkaVersion"
      ( \x ->
          KafkaVersion'
            Prelude.<$> (x Core..:? "status")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable KafkaVersion

instance Prelude.NFData KafkaVersion
