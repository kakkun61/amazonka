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
-- Module      : Network.AWS.MGN.Types.SourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.SourceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.CPU
import Network.AWS.MGN.Types.Disk
import Network.AWS.MGN.Types.IdentificationHints
import Network.AWS.MGN.Types.NetworkInterface
import Network.AWS.MGN.Types.OS
import qualified Network.AWS.Prelude as Prelude

-- | Source server properties.
--
-- /See:/ 'newSourceProperties' smart constructor.
data SourceProperties = SourceProperties'
  { -- | Source server identification hints.
    identificationHints :: Prelude.Maybe IdentificationHints,
    -- | Source server network interfaces.
    networkInterfaces :: Prelude.Maybe [NetworkInterface],
    -- | Source server last update date and time.
    lastUpdatedDateTime :: Prelude.Maybe Prelude.Text,
    -- | Source server recommended instance type.
    recommendedInstanceType :: Prelude.Maybe Prelude.Text,
    -- | Source server OS.
    os :: Prelude.Maybe OS,
    -- | Source server RAM in bytes.
    ramBytes :: Prelude.Maybe Prelude.Natural,
    -- | Source Server CPUs.
    cpus :: Prelude.Maybe [CPU],
    -- | Source Server disks.
    disks :: Prelude.Maybe [Disk]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identificationHints', 'sourceProperties_identificationHints' - Source server identification hints.
--
-- 'networkInterfaces', 'sourceProperties_networkInterfaces' - Source server network interfaces.
--
-- 'lastUpdatedDateTime', 'sourceProperties_lastUpdatedDateTime' - Source server last update date and time.
--
-- 'recommendedInstanceType', 'sourceProperties_recommendedInstanceType' - Source server recommended instance type.
--
-- 'os', 'sourceProperties_os' - Source server OS.
--
-- 'ramBytes', 'sourceProperties_ramBytes' - Source server RAM in bytes.
--
-- 'cpus', 'sourceProperties_cpus' - Source Server CPUs.
--
-- 'disks', 'sourceProperties_disks' - Source Server disks.
newSourceProperties ::
  SourceProperties
newSourceProperties =
  SourceProperties'
    { identificationHints =
        Prelude.Nothing,
      networkInterfaces = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      recommendedInstanceType = Prelude.Nothing,
      os = Prelude.Nothing,
      ramBytes = Prelude.Nothing,
      cpus = Prelude.Nothing,
      disks = Prelude.Nothing
    }

-- | Source server identification hints.
sourceProperties_identificationHints :: Lens.Lens' SourceProperties (Prelude.Maybe IdentificationHints)
sourceProperties_identificationHints = Lens.lens (\SourceProperties' {identificationHints} -> identificationHints) (\s@SourceProperties' {} a -> s {identificationHints = a} :: SourceProperties)

-- | Source server network interfaces.
sourceProperties_networkInterfaces :: Lens.Lens' SourceProperties (Prelude.Maybe [NetworkInterface])
sourceProperties_networkInterfaces = Lens.lens (\SourceProperties' {networkInterfaces} -> networkInterfaces) (\s@SourceProperties' {} a -> s {networkInterfaces = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | Source server last update date and time.
sourceProperties_lastUpdatedDateTime :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_lastUpdatedDateTime = Lens.lens (\SourceProperties' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@SourceProperties' {} a -> s {lastUpdatedDateTime = a} :: SourceProperties)

-- | Source server recommended instance type.
sourceProperties_recommendedInstanceType :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_recommendedInstanceType = Lens.lens (\SourceProperties' {recommendedInstanceType} -> recommendedInstanceType) (\s@SourceProperties' {} a -> s {recommendedInstanceType = a} :: SourceProperties)

-- | Source server OS.
sourceProperties_os :: Lens.Lens' SourceProperties (Prelude.Maybe OS)
sourceProperties_os = Lens.lens (\SourceProperties' {os} -> os) (\s@SourceProperties' {} a -> s {os = a} :: SourceProperties)

-- | Source server RAM in bytes.
sourceProperties_ramBytes :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Natural)
sourceProperties_ramBytes = Lens.lens (\SourceProperties' {ramBytes} -> ramBytes) (\s@SourceProperties' {} a -> s {ramBytes = a} :: SourceProperties)

-- | Source Server CPUs.
sourceProperties_cpus :: Lens.Lens' SourceProperties (Prelude.Maybe [CPU])
sourceProperties_cpus = Lens.lens (\SourceProperties' {cpus} -> cpus) (\s@SourceProperties' {} a -> s {cpus = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | Source Server disks.
sourceProperties_disks :: Lens.Lens' SourceProperties (Prelude.Maybe [Disk])
sourceProperties_disks = Lens.lens (\SourceProperties' {disks} -> disks) (\s@SourceProperties' {} a -> s {disks = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SourceProperties where
  parseJSON =
    Core.withObject
      "SourceProperties"
      ( \x ->
          SourceProperties'
            Prelude.<$> (x Core..:? "identificationHints")
            Prelude.<*> ( x Core..:? "networkInterfaces"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> (x Core..:? "recommendedInstanceType")
            Prelude.<*> (x Core..:? "os")
            Prelude.<*> (x Core..:? "ramBytes")
            Prelude.<*> (x Core..:? "cpus" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "disks" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable SourceProperties

instance Prelude.NFData SourceProperties
