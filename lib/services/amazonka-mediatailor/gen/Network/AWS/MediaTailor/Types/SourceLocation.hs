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
-- Module      : Network.AWS.MediaTailor.Types.SourceLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.SourceLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types.AccessConfiguration
import Network.AWS.MediaTailor.Types.DefaultSegmentDeliveryConfiguration
import Network.AWS.MediaTailor.Types.HttpConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | This response includes only the \"type\" : \"object\" property.
--
-- /See:/ 'newSourceLocation' smart constructor.
data SourceLocation = SourceLocation'
  { -- | The timestamp that indicates when the source location was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The timestamp that indicates when the source location was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The access configuration for the source location.
    accessConfiguration :: Prelude.Maybe AccessConfiguration,
    -- | The default segment delivery configuration.
    defaultSegmentDeliveryConfiguration :: Prelude.Maybe DefaultSegmentDeliveryConfiguration,
    -- | The tags assigned to the source location.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the source location.
    sourceLocationName :: Prelude.Text,
    -- | The HTTP configuration for the source location.
    httpConfiguration :: HttpConfiguration,
    -- | The ARN of the SourceLocation.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'sourceLocation_creationTime' - The timestamp that indicates when the source location was created.
--
-- 'lastModifiedTime', 'sourceLocation_lastModifiedTime' - The timestamp that indicates when the source location was last modified.
--
-- 'accessConfiguration', 'sourceLocation_accessConfiguration' - The access configuration for the source location.
--
-- 'defaultSegmentDeliveryConfiguration', 'sourceLocation_defaultSegmentDeliveryConfiguration' - The default segment delivery configuration.
--
-- 'tags', 'sourceLocation_tags' - The tags assigned to the source location.
--
-- 'sourceLocationName', 'sourceLocation_sourceLocationName' - The name of the source location.
--
-- 'httpConfiguration', 'sourceLocation_httpConfiguration' - The HTTP configuration for the source location.
--
-- 'arn', 'sourceLocation_arn' - The ARN of the SourceLocation.
newSourceLocation ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  -- | 'httpConfiguration'
  HttpConfiguration ->
  -- | 'arn'
  Prelude.Text ->
  SourceLocation
newSourceLocation
  pSourceLocationName_
  pHttpConfiguration_
  pArn_ =
    SourceLocation'
      { creationTime = Prelude.Nothing,
        lastModifiedTime = Prelude.Nothing,
        accessConfiguration = Prelude.Nothing,
        defaultSegmentDeliveryConfiguration =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        sourceLocationName = pSourceLocationName_,
        httpConfiguration = pHttpConfiguration_,
        arn = pArn_
      }

-- | The timestamp that indicates when the source location was created.
sourceLocation_creationTime :: Lens.Lens' SourceLocation (Prelude.Maybe Prelude.UTCTime)
sourceLocation_creationTime = Lens.lens (\SourceLocation' {creationTime} -> creationTime) (\s@SourceLocation' {} a -> s {creationTime = a} :: SourceLocation) Prelude.. Lens.mapping Core._Time

-- | The timestamp that indicates when the source location was last modified.
sourceLocation_lastModifiedTime :: Lens.Lens' SourceLocation (Prelude.Maybe Prelude.UTCTime)
sourceLocation_lastModifiedTime = Lens.lens (\SourceLocation' {lastModifiedTime} -> lastModifiedTime) (\s@SourceLocation' {} a -> s {lastModifiedTime = a} :: SourceLocation) Prelude.. Lens.mapping Core._Time

-- | The access configuration for the source location.
sourceLocation_accessConfiguration :: Lens.Lens' SourceLocation (Prelude.Maybe AccessConfiguration)
sourceLocation_accessConfiguration = Lens.lens (\SourceLocation' {accessConfiguration} -> accessConfiguration) (\s@SourceLocation' {} a -> s {accessConfiguration = a} :: SourceLocation)

-- | The default segment delivery configuration.
sourceLocation_defaultSegmentDeliveryConfiguration :: Lens.Lens' SourceLocation (Prelude.Maybe DefaultSegmentDeliveryConfiguration)
sourceLocation_defaultSegmentDeliveryConfiguration = Lens.lens (\SourceLocation' {defaultSegmentDeliveryConfiguration} -> defaultSegmentDeliveryConfiguration) (\s@SourceLocation' {} a -> s {defaultSegmentDeliveryConfiguration = a} :: SourceLocation)

-- | The tags assigned to the source location.
sourceLocation_tags :: Lens.Lens' SourceLocation (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
sourceLocation_tags = Lens.lens (\SourceLocation' {tags} -> tags) (\s@SourceLocation' {} a -> s {tags = a} :: SourceLocation) Prelude.. Lens.mapping Lens.coerced

-- | The name of the source location.
sourceLocation_sourceLocationName :: Lens.Lens' SourceLocation Prelude.Text
sourceLocation_sourceLocationName = Lens.lens (\SourceLocation' {sourceLocationName} -> sourceLocationName) (\s@SourceLocation' {} a -> s {sourceLocationName = a} :: SourceLocation)

-- | The HTTP configuration for the source location.
sourceLocation_httpConfiguration :: Lens.Lens' SourceLocation HttpConfiguration
sourceLocation_httpConfiguration = Lens.lens (\SourceLocation' {httpConfiguration} -> httpConfiguration) (\s@SourceLocation' {} a -> s {httpConfiguration = a} :: SourceLocation)

-- | The ARN of the SourceLocation.
sourceLocation_arn :: Lens.Lens' SourceLocation Prelude.Text
sourceLocation_arn = Lens.lens (\SourceLocation' {arn} -> arn) (\s@SourceLocation' {} a -> s {arn = a} :: SourceLocation)

instance Core.FromJSON SourceLocation where
  parseJSON =
    Core.withObject
      "SourceLocation"
      ( \x ->
          SourceLocation'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "LastModifiedTime")
            Prelude.<*> (x Core..:? "AccessConfiguration")
            Prelude.<*> (x Core..:? "DefaultSegmentDeliveryConfiguration")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "SourceLocationName")
            Prelude.<*> (x Core..: "HttpConfiguration")
            Prelude.<*> (x Core..: "Arn")
      )

instance Prelude.Hashable SourceLocation

instance Prelude.NFData SourceLocation
