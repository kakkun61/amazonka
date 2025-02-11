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
-- Module      : Network.AWS.IoTSiteWise.Types.Greengrass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.Greengrass where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains details for a gateway that runs on IoT Greengrass. To create a
-- gateway that runs on IoT Greengrass, you must add the IoT SiteWise
-- connector to a Greengrass group and deploy it. Your Greengrass group
-- must also have permissions to upload data to IoT SiteWise. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html Ingesting data using a gateway>
-- in the /IoT SiteWise User Guide/.
--
-- /See:/ 'newGreengrass' smart constructor.
data Greengrass = Greengrass'
  { -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the Greengrass group. For more information about how to find a
    -- group\'s ARN, see
    -- <https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html ListGroups>
    -- and
    -- <https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html GetGroup>
    -- in the /IoT Greengrass API Reference/.
    groupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Greengrass' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupArn', 'greengrass_groupArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Greengrass group. For more information about how to find a
-- group\'s ARN, see
-- <https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html ListGroups>
-- and
-- <https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html GetGroup>
-- in the /IoT Greengrass API Reference/.
newGreengrass ::
  -- | 'groupArn'
  Prelude.Text ->
  Greengrass
newGreengrass pGroupArn_ =
  Greengrass' {groupArn = pGroupArn_}

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Greengrass group. For more information about how to find a
-- group\'s ARN, see
-- <https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html ListGroups>
-- and
-- <https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html GetGroup>
-- in the /IoT Greengrass API Reference/.
greengrass_groupArn :: Lens.Lens' Greengrass Prelude.Text
greengrass_groupArn = Lens.lens (\Greengrass' {groupArn} -> groupArn) (\s@Greengrass' {} a -> s {groupArn = a} :: Greengrass)

instance Core.FromJSON Greengrass where
  parseJSON =
    Core.withObject
      "Greengrass"
      ( \x ->
          Greengrass' Prelude.<$> (x Core..: "groupArn")
      )

instance Prelude.Hashable Greengrass

instance Prelude.NFData Greengrass

instance Core.ToJSON Greengrass where
  toJSON Greengrass' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("groupArn" Core..= groupArn)]
      )
