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
-- Module      : Network.AWS.Pinpoint.Types.InAppMessageButton
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.InAppMessageButton where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.DefaultButtonConfiguration
import Network.AWS.Pinpoint.Types.OverrideButtonConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | Button Config for an in-app message.
--
-- /See:/ 'newInAppMessageButton' smart constructor.
data InAppMessageButton = InAppMessageButton'
  { -- | Default button content.
    ios :: Prelude.Maybe OverrideButtonConfiguration,
    -- | Default button content.
    defaultConfig :: Prelude.Maybe DefaultButtonConfiguration,
    -- | Default button content.
    web :: Prelude.Maybe OverrideButtonConfiguration,
    -- | Default button content.
    android :: Prelude.Maybe OverrideButtonConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InAppMessageButton' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ios', 'inAppMessageButton_ios' - Default button content.
--
-- 'defaultConfig', 'inAppMessageButton_defaultConfig' - Default button content.
--
-- 'web', 'inAppMessageButton_web' - Default button content.
--
-- 'android', 'inAppMessageButton_android' - Default button content.
newInAppMessageButton ::
  InAppMessageButton
newInAppMessageButton =
  InAppMessageButton'
    { ios = Prelude.Nothing,
      defaultConfig = Prelude.Nothing,
      web = Prelude.Nothing,
      android = Prelude.Nothing
    }

-- | Default button content.
inAppMessageButton_ios :: Lens.Lens' InAppMessageButton (Prelude.Maybe OverrideButtonConfiguration)
inAppMessageButton_ios = Lens.lens (\InAppMessageButton' {ios} -> ios) (\s@InAppMessageButton' {} a -> s {ios = a} :: InAppMessageButton)

-- | Default button content.
inAppMessageButton_defaultConfig :: Lens.Lens' InAppMessageButton (Prelude.Maybe DefaultButtonConfiguration)
inAppMessageButton_defaultConfig = Lens.lens (\InAppMessageButton' {defaultConfig} -> defaultConfig) (\s@InAppMessageButton' {} a -> s {defaultConfig = a} :: InAppMessageButton)

-- | Default button content.
inAppMessageButton_web :: Lens.Lens' InAppMessageButton (Prelude.Maybe OverrideButtonConfiguration)
inAppMessageButton_web = Lens.lens (\InAppMessageButton' {web} -> web) (\s@InAppMessageButton' {} a -> s {web = a} :: InAppMessageButton)

-- | Default button content.
inAppMessageButton_android :: Lens.Lens' InAppMessageButton (Prelude.Maybe OverrideButtonConfiguration)
inAppMessageButton_android = Lens.lens (\InAppMessageButton' {android} -> android) (\s@InAppMessageButton' {} a -> s {android = a} :: InAppMessageButton)

instance Core.FromJSON InAppMessageButton where
  parseJSON =
    Core.withObject
      "InAppMessageButton"
      ( \x ->
          InAppMessageButton'
            Prelude.<$> (x Core..:? "IOS")
            Prelude.<*> (x Core..:? "DefaultConfig")
            Prelude.<*> (x Core..:? "Web")
            Prelude.<*> (x Core..:? "Android")
      )

instance Prelude.Hashable InAppMessageButton

instance Prelude.NFData InAppMessageButton

instance Core.ToJSON InAppMessageButton where
  toJSON InAppMessageButton' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IOS" Core..=) Prelude.<$> ios,
            ("DefaultConfig" Core..=) Prelude.<$> defaultConfig,
            ("Web" Core..=) Prelude.<$> web,
            ("Android" Core..=) Prelude.<$> android
          ]
      )
