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
-- Module      : Network.AWS.ImageBuilder.Types.InstanceMetadataOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ImageBuilder.Types.InstanceMetadataOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The instance metadata options that apply to the HTTP requests that
-- pipeline builds use to launch EC2 build and test instances. For more
-- information about instance metadata options, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html Configure the instance metadata options>
-- in the //Amazon EC2 User Guide// for Linux instances, or
-- <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html Configure the instance metadata options>
-- in the //Amazon EC2 Windows Guide// for Windows instances.
--
-- /See:/ 'newInstanceMetadataOptions' smart constructor.
data InstanceMetadataOptions = InstanceMetadataOptions'
  { -- | Limit the number of hops that an instance metadata request can traverse
    -- to reach its destination.
    httpPutResponseHopLimit :: Prelude.Maybe Prelude.Natural,
    -- | Indicates whether a signed token header is required for instance
    -- metadata retrieval requests. The values affect the response as follows:
    --
    -- -   __required__ – When you retrieve the IAM role credentials, version
    --     2.0 credentials are returned in all cases.
    --
    -- -   __optional__ – You can include a signed token header in your request
    --     to retrieve instance metadata, or you can leave it out. If you
    --     include it, version 2.0 credentials are returned for the IAM role.
    --     Otherwise, version 1.0 credentials are returned.
    --
    -- The default setting is __optional__.
    httpTokens :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceMetadataOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpPutResponseHopLimit', 'instanceMetadataOptions_httpPutResponseHopLimit' - Limit the number of hops that an instance metadata request can traverse
-- to reach its destination.
--
-- 'httpTokens', 'instanceMetadataOptions_httpTokens' - Indicates whether a signed token header is required for instance
-- metadata retrieval requests. The values affect the response as follows:
--
-- -   __required__ – When you retrieve the IAM role credentials, version
--     2.0 credentials are returned in all cases.
--
-- -   __optional__ – You can include a signed token header in your request
--     to retrieve instance metadata, or you can leave it out. If you
--     include it, version 2.0 credentials are returned for the IAM role.
--     Otherwise, version 1.0 credentials are returned.
--
-- The default setting is __optional__.
newInstanceMetadataOptions ::
  InstanceMetadataOptions
newInstanceMetadataOptions =
  InstanceMetadataOptions'
    { httpPutResponseHopLimit =
        Prelude.Nothing,
      httpTokens = Prelude.Nothing
    }

-- | Limit the number of hops that an instance metadata request can traverse
-- to reach its destination.
instanceMetadataOptions_httpPutResponseHopLimit :: Lens.Lens' InstanceMetadataOptions (Prelude.Maybe Prelude.Natural)
instanceMetadataOptions_httpPutResponseHopLimit = Lens.lens (\InstanceMetadataOptions' {httpPutResponseHopLimit} -> httpPutResponseHopLimit) (\s@InstanceMetadataOptions' {} a -> s {httpPutResponseHopLimit = a} :: InstanceMetadataOptions)

-- | Indicates whether a signed token header is required for instance
-- metadata retrieval requests. The values affect the response as follows:
--
-- -   __required__ – When you retrieve the IAM role credentials, version
--     2.0 credentials are returned in all cases.
--
-- -   __optional__ – You can include a signed token header in your request
--     to retrieve instance metadata, or you can leave it out. If you
--     include it, version 2.0 credentials are returned for the IAM role.
--     Otherwise, version 1.0 credentials are returned.
--
-- The default setting is __optional__.
instanceMetadataOptions_httpTokens :: Lens.Lens' InstanceMetadataOptions (Prelude.Maybe Prelude.Text)
instanceMetadataOptions_httpTokens = Lens.lens (\InstanceMetadataOptions' {httpTokens} -> httpTokens) (\s@InstanceMetadataOptions' {} a -> s {httpTokens = a} :: InstanceMetadataOptions)

instance Core.FromJSON InstanceMetadataOptions where
  parseJSON =
    Core.withObject
      "InstanceMetadataOptions"
      ( \x ->
          InstanceMetadataOptions'
            Prelude.<$> (x Core..:? "httpPutResponseHopLimit")
            Prelude.<*> (x Core..:? "httpTokens")
      )

instance Prelude.Hashable InstanceMetadataOptions

instance Prelude.NFData InstanceMetadataOptions

instance Core.ToJSON InstanceMetadataOptions where
  toJSON InstanceMetadataOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("httpPutResponseHopLimit" Core..=)
              Prelude.<$> httpPutResponseHopLimit,
            ("httpTokens" Core..=) Prelude.<$> httpTokens
          ]
      )
