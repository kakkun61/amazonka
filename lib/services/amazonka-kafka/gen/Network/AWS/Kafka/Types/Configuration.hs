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
-- Module      : Network.AWS.Kafka.Types.Configuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.Configuration where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.ConfigurationRevision
import Network.AWS.Kafka.Types.ConfigurationState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents an MSK Configuration.
--
-- /See:/ 'newConfiguration' smart constructor.
data Configuration = Configuration'
  { -- | The description of the configuration.
    description :: Prelude.Text,
    -- | Latest revision of the configuration.
    latestRevision :: ConfigurationRevision,
    -- | The time when the configuration was created.
    creationTime :: Core.POSIX,
    -- | An array of the versions of Apache Kafka with which you can use this MSK
    -- configuration. You can use this configuration for an MSK cluster only if
    -- the Apache Kafka version specified for the cluster appears in this
    -- array.
    kafkaVersions :: [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the configuration.
    arn :: Prelude.Text,
    -- | The name of the configuration.
    name :: Prelude.Text,
    -- | The state of the configuration. The possible states are ACTIVE,
    -- DELETING, and DELETE_FAILED.
    state :: ConfigurationState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Configuration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'configuration_description' - The description of the configuration.
--
-- 'latestRevision', 'configuration_latestRevision' - Latest revision of the configuration.
--
-- 'creationTime', 'configuration_creationTime' - The time when the configuration was created.
--
-- 'kafkaVersions', 'configuration_kafkaVersions' - An array of the versions of Apache Kafka with which you can use this MSK
-- configuration. You can use this configuration for an MSK cluster only if
-- the Apache Kafka version specified for the cluster appears in this
-- array.
--
-- 'arn', 'configuration_arn' - The Amazon Resource Name (ARN) of the configuration.
--
-- 'name', 'configuration_name' - The name of the configuration.
--
-- 'state', 'configuration_state' - The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
newConfiguration ::
  -- | 'description'
  Prelude.Text ->
  -- | 'latestRevision'
  ConfigurationRevision ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'state'
  ConfigurationState ->
  Configuration
newConfiguration
  pDescription_
  pLatestRevision_
  pCreationTime_
  pArn_
  pName_
  pState_ =
    Configuration'
      { description = pDescription_,
        latestRevision = pLatestRevision_,
        creationTime = Core._Time Lens.# pCreationTime_,
        kafkaVersions = Prelude.mempty,
        arn = pArn_,
        name = pName_,
        state = pState_
      }

-- | The description of the configuration.
configuration_description :: Lens.Lens' Configuration Prelude.Text
configuration_description = Lens.lens (\Configuration' {description} -> description) (\s@Configuration' {} a -> s {description = a} :: Configuration)

-- | Latest revision of the configuration.
configuration_latestRevision :: Lens.Lens' Configuration ConfigurationRevision
configuration_latestRevision = Lens.lens (\Configuration' {latestRevision} -> latestRevision) (\s@Configuration' {} a -> s {latestRevision = a} :: Configuration)

-- | The time when the configuration was created.
configuration_creationTime :: Lens.Lens' Configuration Prelude.UTCTime
configuration_creationTime = Lens.lens (\Configuration' {creationTime} -> creationTime) (\s@Configuration' {} a -> s {creationTime = a} :: Configuration) Prelude.. Core._Time

-- | An array of the versions of Apache Kafka with which you can use this MSK
-- configuration. You can use this configuration for an MSK cluster only if
-- the Apache Kafka version specified for the cluster appears in this
-- array.
configuration_kafkaVersions :: Lens.Lens' Configuration [Prelude.Text]
configuration_kafkaVersions = Lens.lens (\Configuration' {kafkaVersions} -> kafkaVersions) (\s@Configuration' {} a -> s {kafkaVersions = a} :: Configuration) Prelude.. Lens.coerced

-- | The Amazon Resource Name (ARN) of the configuration.
configuration_arn :: Lens.Lens' Configuration Prelude.Text
configuration_arn = Lens.lens (\Configuration' {arn} -> arn) (\s@Configuration' {} a -> s {arn = a} :: Configuration)

-- | The name of the configuration.
configuration_name :: Lens.Lens' Configuration Prelude.Text
configuration_name = Lens.lens (\Configuration' {name} -> name) (\s@Configuration' {} a -> s {name = a} :: Configuration)

-- | The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
configuration_state :: Lens.Lens' Configuration ConfigurationState
configuration_state = Lens.lens (\Configuration' {state} -> state) (\s@Configuration' {} a -> s {state = a} :: Configuration)

instance Core.FromJSON Configuration where
  parseJSON =
    Core.withObject
      "Configuration"
      ( \x ->
          Configuration'
            Prelude.<$> (x Core..: "description")
            Prelude.<*> (x Core..: "latestRevision")
            Prelude.<*> (x Core..: "creationTime")
            Prelude.<*> (x Core..:? "kafkaVersions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "state")
      )

instance Prelude.Hashable Configuration

instance Prelude.NFData Configuration
