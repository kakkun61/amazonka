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
-- Module      : Network.AWS.MediaTailor.Types.DefaultSegmentDeliveryConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.DefaultSegmentDeliveryConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The optional configuration for a server that serves segments. Use this
-- if you want the segment delivery server to be different from the source
-- location server. For example, you can configure your source location
-- server to be an origination server, such as MediaPackage, and the
-- segment delivery server to be a content delivery network (CDN), such as
-- CloudFront. If you don\'t specify a segment delivery server, then the
-- source location server is used.
--
-- /See:/ 'newDefaultSegmentDeliveryConfiguration' smart constructor.
data DefaultSegmentDeliveryConfiguration = DefaultSegmentDeliveryConfiguration'
  { -- | The hostname of the server that will be used to serve segments. This
    -- string must include the protocol, such as __https:\/\/__.
    baseUrl :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DefaultSegmentDeliveryConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'baseUrl', 'defaultSegmentDeliveryConfiguration_baseUrl' - The hostname of the server that will be used to serve segments. This
-- string must include the protocol, such as __https:\/\/__.
newDefaultSegmentDeliveryConfiguration ::
  DefaultSegmentDeliveryConfiguration
newDefaultSegmentDeliveryConfiguration =
  DefaultSegmentDeliveryConfiguration'
    { baseUrl =
        Prelude.Nothing
    }

-- | The hostname of the server that will be used to serve segments. This
-- string must include the protocol, such as __https:\/\/__.
defaultSegmentDeliveryConfiguration_baseUrl :: Lens.Lens' DefaultSegmentDeliveryConfiguration (Prelude.Maybe Prelude.Text)
defaultSegmentDeliveryConfiguration_baseUrl = Lens.lens (\DefaultSegmentDeliveryConfiguration' {baseUrl} -> baseUrl) (\s@DefaultSegmentDeliveryConfiguration' {} a -> s {baseUrl = a} :: DefaultSegmentDeliveryConfiguration)

instance
  Core.FromJSON
    DefaultSegmentDeliveryConfiguration
  where
  parseJSON =
    Core.withObject
      "DefaultSegmentDeliveryConfiguration"
      ( \x ->
          DefaultSegmentDeliveryConfiguration'
            Prelude.<$> (x Core..:? "BaseUrl")
      )

instance
  Prelude.Hashable
    DefaultSegmentDeliveryConfiguration

instance
  Prelude.NFData
    DefaultSegmentDeliveryConfiguration

instance
  Core.ToJSON
    DefaultSegmentDeliveryConfiguration
  where
  toJSON DefaultSegmentDeliveryConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("BaseUrl" Core..=) Prelude.<$> baseUrl]
      )
