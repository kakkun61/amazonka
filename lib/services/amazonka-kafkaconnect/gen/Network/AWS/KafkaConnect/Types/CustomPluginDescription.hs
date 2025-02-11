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
-- Module      : Network.AWS.KafkaConnect.Types.CustomPluginDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.CustomPluginDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about a custom plugin.
--
-- /See:/ 'newCustomPluginDescription' smart constructor.
data CustomPluginDescription = CustomPluginDescription'
  { -- | The Amazon Resource Name (ARN) of the custom plugin.
    customPluginArn :: Prelude.Maybe Prelude.Text,
    -- | The revision of the custom plugin.
    revision :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomPluginDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customPluginArn', 'customPluginDescription_customPluginArn' - The Amazon Resource Name (ARN) of the custom plugin.
--
-- 'revision', 'customPluginDescription_revision' - The revision of the custom plugin.
newCustomPluginDescription ::
  CustomPluginDescription
newCustomPluginDescription =
  CustomPluginDescription'
    { customPluginArn =
        Prelude.Nothing,
      revision = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the custom plugin.
customPluginDescription_customPluginArn :: Lens.Lens' CustomPluginDescription (Prelude.Maybe Prelude.Text)
customPluginDescription_customPluginArn = Lens.lens (\CustomPluginDescription' {customPluginArn} -> customPluginArn) (\s@CustomPluginDescription' {} a -> s {customPluginArn = a} :: CustomPluginDescription)

-- | The revision of the custom plugin.
customPluginDescription_revision :: Lens.Lens' CustomPluginDescription (Prelude.Maybe Prelude.Integer)
customPluginDescription_revision = Lens.lens (\CustomPluginDescription' {revision} -> revision) (\s@CustomPluginDescription' {} a -> s {revision = a} :: CustomPluginDescription)

instance Core.FromJSON CustomPluginDescription where
  parseJSON =
    Core.withObject
      "CustomPluginDescription"
      ( \x ->
          CustomPluginDescription'
            Prelude.<$> (x Core..:? "customPluginArn")
            Prelude.<*> (x Core..:? "revision")
      )

instance Prelude.Hashable CustomPluginDescription

instance Prelude.NFData CustomPluginDescription
