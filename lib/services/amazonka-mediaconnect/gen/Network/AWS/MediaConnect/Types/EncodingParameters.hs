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
-- Module      : Network.AWS.MediaConnect.Types.EncodingParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.EncodingParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.EncoderProfile
import qualified Network.AWS.Prelude as Prelude

-- | A collection of parameters that determine how MediaConnect will convert
-- the content. These fields only apply to outputs on flows that have a CDI
-- source.
--
-- /See:/ 'newEncodingParameters' smart constructor.
data EncodingParameters = EncodingParameters'
  { -- | A setting on the encoder that drives compression settings. This property
    -- only applies to video media streams associated with outputs that use the
    -- ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.
    encoderProfile :: EncoderProfile,
    -- | A value that is used to calculate compression for an output. The bitrate
    -- of the output is calculated as follows: Output bitrate = (1 \/
    -- compressionFactor) * (source bitrate) This property only applies to
    -- outputs that use the ST 2110 JPEG XS protocol, with a flow source that
    -- uses the CDI protocol. Valid values are floating point numbers in the
    -- range of 3.0 to 10.0, inclusive.
    compressionFactor :: Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncodingParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encoderProfile', 'encodingParameters_encoderProfile' - A setting on the encoder that drives compression settings. This property
-- only applies to video media streams associated with outputs that use the
-- ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.
--
-- 'compressionFactor', 'encodingParameters_compressionFactor' - A value that is used to calculate compression for an output. The bitrate
-- of the output is calculated as follows: Output bitrate = (1 \/
-- compressionFactor) * (source bitrate) This property only applies to
-- outputs that use the ST 2110 JPEG XS protocol, with a flow source that
-- uses the CDI protocol. Valid values are floating point numbers in the
-- range of 3.0 to 10.0, inclusive.
newEncodingParameters ::
  -- | 'encoderProfile'
  EncoderProfile ->
  -- | 'compressionFactor'
  Prelude.Double ->
  EncodingParameters
newEncodingParameters
  pEncoderProfile_
  pCompressionFactor_ =
    EncodingParameters'
      { encoderProfile =
          pEncoderProfile_,
        compressionFactor = pCompressionFactor_
      }

-- | A setting on the encoder that drives compression settings. This property
-- only applies to video media streams associated with outputs that use the
-- ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.
encodingParameters_encoderProfile :: Lens.Lens' EncodingParameters EncoderProfile
encodingParameters_encoderProfile = Lens.lens (\EncodingParameters' {encoderProfile} -> encoderProfile) (\s@EncodingParameters' {} a -> s {encoderProfile = a} :: EncodingParameters)

-- | A value that is used to calculate compression for an output. The bitrate
-- of the output is calculated as follows: Output bitrate = (1 \/
-- compressionFactor) * (source bitrate) This property only applies to
-- outputs that use the ST 2110 JPEG XS protocol, with a flow source that
-- uses the CDI protocol. Valid values are floating point numbers in the
-- range of 3.0 to 10.0, inclusive.
encodingParameters_compressionFactor :: Lens.Lens' EncodingParameters Prelude.Double
encodingParameters_compressionFactor = Lens.lens (\EncodingParameters' {compressionFactor} -> compressionFactor) (\s@EncodingParameters' {} a -> s {compressionFactor = a} :: EncodingParameters)

instance Core.FromJSON EncodingParameters where
  parseJSON =
    Core.withObject
      "EncodingParameters"
      ( \x ->
          EncodingParameters'
            Prelude.<$> (x Core..: "encoderProfile")
            Prelude.<*> (x Core..: "compressionFactor")
      )

instance Prelude.Hashable EncodingParameters

instance Prelude.NFData EncodingParameters
