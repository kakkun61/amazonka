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
-- Module      : Network.AWS.Proton.Types.EnvironmentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Proton.Types.EnvironmentTemplate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types.Provisioning

-- | The environment template data.
--
-- /See:/ 'newEnvironmentTemplate' smart constructor.
data EnvironmentTemplate = EnvironmentTemplate'
  { -- | When included, indicates that the environment template is for customer
    -- provisioned and managed infrastructure.
    provisioning :: Prelude.Maybe Provisioning,
    -- | The ID of the recommended version of the environment template.
    recommendedVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the environment template as displayed in the developer
    -- interface.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The customer provided encryption key for the environment template.
    encryptionKey :: Prelude.Maybe Prelude.Text,
    -- | A description of the environment template.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The Amazon Resource Name (ARN) of the environment template.
    arn :: Prelude.Text,
    -- | The time when the environment template was created.
    createdAt :: Core.POSIX,
    -- | The time when the environment template was last modified.
    lastModifiedAt :: Core.POSIX,
    -- | The name of the environment template.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'provisioning', 'environmentTemplate_provisioning' - When included, indicates that the environment template is for customer
-- provisioned and managed infrastructure.
--
-- 'recommendedVersion', 'environmentTemplate_recommendedVersion' - The ID of the recommended version of the environment template.
--
-- 'displayName', 'environmentTemplate_displayName' - The name of the environment template as displayed in the developer
-- interface.
--
-- 'encryptionKey', 'environmentTemplate_encryptionKey' - The customer provided encryption key for the environment template.
--
-- 'description', 'environmentTemplate_description' - A description of the environment template.
--
-- 'arn', 'environmentTemplate_arn' - The Amazon Resource Name (ARN) of the environment template.
--
-- 'createdAt', 'environmentTemplate_createdAt' - The time when the environment template was created.
--
-- 'lastModifiedAt', 'environmentTemplate_lastModifiedAt' - The time when the environment template was last modified.
--
-- 'name', 'environmentTemplate_name' - The name of the environment template.
newEnvironmentTemplate ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'lastModifiedAt'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  EnvironmentTemplate
newEnvironmentTemplate
  pArn_
  pCreatedAt_
  pLastModifiedAt_
  pName_ =
    EnvironmentTemplate'
      { provisioning =
          Prelude.Nothing,
        recommendedVersion = Prelude.Nothing,
        displayName = Prelude.Nothing,
        encryptionKey = Prelude.Nothing,
        description = Prelude.Nothing,
        arn = pArn_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        lastModifiedAt = Core._Time Lens.# pLastModifiedAt_,
        name = pName_
      }

-- | When included, indicates that the environment template is for customer
-- provisioned and managed infrastructure.
environmentTemplate_provisioning :: Lens.Lens' EnvironmentTemplate (Prelude.Maybe Provisioning)
environmentTemplate_provisioning = Lens.lens (\EnvironmentTemplate' {provisioning} -> provisioning) (\s@EnvironmentTemplate' {} a -> s {provisioning = a} :: EnvironmentTemplate)

-- | The ID of the recommended version of the environment template.
environmentTemplate_recommendedVersion :: Lens.Lens' EnvironmentTemplate (Prelude.Maybe Prelude.Text)
environmentTemplate_recommendedVersion = Lens.lens (\EnvironmentTemplate' {recommendedVersion} -> recommendedVersion) (\s@EnvironmentTemplate' {} a -> s {recommendedVersion = a} :: EnvironmentTemplate)

-- | The name of the environment template as displayed in the developer
-- interface.
environmentTemplate_displayName :: Lens.Lens' EnvironmentTemplate (Prelude.Maybe Prelude.Text)
environmentTemplate_displayName = Lens.lens (\EnvironmentTemplate' {displayName} -> displayName) (\s@EnvironmentTemplate' {} a -> s {displayName = a} :: EnvironmentTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | The customer provided encryption key for the environment template.
environmentTemplate_encryptionKey :: Lens.Lens' EnvironmentTemplate (Prelude.Maybe Prelude.Text)
environmentTemplate_encryptionKey = Lens.lens (\EnvironmentTemplate' {encryptionKey} -> encryptionKey) (\s@EnvironmentTemplate' {} a -> s {encryptionKey = a} :: EnvironmentTemplate)

-- | A description of the environment template.
environmentTemplate_description :: Lens.Lens' EnvironmentTemplate (Prelude.Maybe Prelude.Text)
environmentTemplate_description = Lens.lens (\EnvironmentTemplate' {description} -> description) (\s@EnvironmentTemplate' {} a -> s {description = a} :: EnvironmentTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | The Amazon Resource Name (ARN) of the environment template.
environmentTemplate_arn :: Lens.Lens' EnvironmentTemplate Prelude.Text
environmentTemplate_arn = Lens.lens (\EnvironmentTemplate' {arn} -> arn) (\s@EnvironmentTemplate' {} a -> s {arn = a} :: EnvironmentTemplate)

-- | The time when the environment template was created.
environmentTemplate_createdAt :: Lens.Lens' EnvironmentTemplate Prelude.UTCTime
environmentTemplate_createdAt = Lens.lens (\EnvironmentTemplate' {createdAt} -> createdAt) (\s@EnvironmentTemplate' {} a -> s {createdAt = a} :: EnvironmentTemplate) Prelude.. Core._Time

-- | The time when the environment template was last modified.
environmentTemplate_lastModifiedAt :: Lens.Lens' EnvironmentTemplate Prelude.UTCTime
environmentTemplate_lastModifiedAt = Lens.lens (\EnvironmentTemplate' {lastModifiedAt} -> lastModifiedAt) (\s@EnvironmentTemplate' {} a -> s {lastModifiedAt = a} :: EnvironmentTemplate) Prelude.. Core._Time

-- | The name of the environment template.
environmentTemplate_name :: Lens.Lens' EnvironmentTemplate Prelude.Text
environmentTemplate_name = Lens.lens (\EnvironmentTemplate' {name} -> name) (\s@EnvironmentTemplate' {} a -> s {name = a} :: EnvironmentTemplate)

instance Core.FromJSON EnvironmentTemplate where
  parseJSON =
    Core.withObject
      "EnvironmentTemplate"
      ( \x ->
          EnvironmentTemplate'
            Prelude.<$> (x Core..:? "provisioning")
            Prelude.<*> (x Core..:? "recommendedVersion")
            Prelude.<*> (x Core..:? "displayName")
            Prelude.<*> (x Core..:? "encryptionKey")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "lastModifiedAt")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable EnvironmentTemplate

instance Prelude.NFData EnvironmentTemplate
