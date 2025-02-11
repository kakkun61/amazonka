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
-- Module      : Network.AWS.MediaPackageVOD.Types.SpekeKeyProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackageVOD.Types.SpekeKeyProvider where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A configuration for accessing an external Secure Packager and Encoder
-- Key Exchange (SPEKE) service that will provide encryption keys.
--
-- /See:/ 'newSpekeKeyProvider' smart constructor.
data SpekeKeyProvider = SpekeKeyProvider'
  { -- | The system IDs to include in key requests.
    systemIds :: [Prelude.Text],
    -- | The URL of the external key provider service.
    url :: Prelude.Text,
    -- | An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
    -- MediaPackage will assume when accessing the key provider service.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SpekeKeyProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'systemIds', 'spekeKeyProvider_systemIds' - The system IDs to include in key requests.
--
-- 'url', 'spekeKeyProvider_url' - The URL of the external key provider service.
--
-- 'roleArn', 'spekeKeyProvider_roleArn' - An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
-- MediaPackage will assume when accessing the key provider service.
newSpekeKeyProvider ::
  -- | 'url'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  SpekeKeyProvider
newSpekeKeyProvider pUrl_ pRoleArn_ =
  SpekeKeyProvider'
    { systemIds = Prelude.mempty,
      url = pUrl_,
      roleArn = pRoleArn_
    }

-- | The system IDs to include in key requests.
spekeKeyProvider_systemIds :: Lens.Lens' SpekeKeyProvider [Prelude.Text]
spekeKeyProvider_systemIds = Lens.lens (\SpekeKeyProvider' {systemIds} -> systemIds) (\s@SpekeKeyProvider' {} a -> s {systemIds = a} :: SpekeKeyProvider) Prelude.. Lens.coerced

-- | The URL of the external key provider service.
spekeKeyProvider_url :: Lens.Lens' SpekeKeyProvider Prelude.Text
spekeKeyProvider_url = Lens.lens (\SpekeKeyProvider' {url} -> url) (\s@SpekeKeyProvider' {} a -> s {url = a} :: SpekeKeyProvider)

-- | An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
-- MediaPackage will assume when accessing the key provider service.
spekeKeyProvider_roleArn :: Lens.Lens' SpekeKeyProvider Prelude.Text
spekeKeyProvider_roleArn = Lens.lens (\SpekeKeyProvider' {roleArn} -> roleArn) (\s@SpekeKeyProvider' {} a -> s {roleArn = a} :: SpekeKeyProvider)

instance Core.FromJSON SpekeKeyProvider where
  parseJSON =
    Core.withObject
      "SpekeKeyProvider"
      ( \x ->
          SpekeKeyProvider'
            Prelude.<$> (x Core..:? "systemIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "url")
            Prelude.<*> (x Core..: "roleArn")
      )

instance Prelude.Hashable SpekeKeyProvider

instance Prelude.NFData SpekeKeyProvider

instance Core.ToJSON SpekeKeyProvider where
  toJSON SpekeKeyProvider' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("systemIds" Core..= systemIds),
            Prelude.Just ("url" Core..= url),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )
