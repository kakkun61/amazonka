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
-- Module      : Network.AWS.Signer.Types.SigningImageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Signer.Types.SigningImageFormat where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Signer.Types.ImageFormat

-- | The image format of a code signing platform or profile.
--
-- /See:/ 'newSigningImageFormat' smart constructor.
data SigningImageFormat = SigningImageFormat'
  { -- | The supported formats of a code signing image.
    supportedFormats :: [ImageFormat],
    -- | The default format of a code signing image.
    defaultFormat :: ImageFormat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SigningImageFormat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportedFormats', 'signingImageFormat_supportedFormats' - The supported formats of a code signing image.
--
-- 'defaultFormat', 'signingImageFormat_defaultFormat' - The default format of a code signing image.
newSigningImageFormat ::
  -- | 'defaultFormat'
  ImageFormat ->
  SigningImageFormat
newSigningImageFormat pDefaultFormat_ =
  SigningImageFormat'
    { supportedFormats =
        Prelude.mempty,
      defaultFormat = pDefaultFormat_
    }

-- | The supported formats of a code signing image.
signingImageFormat_supportedFormats :: Lens.Lens' SigningImageFormat [ImageFormat]
signingImageFormat_supportedFormats = Lens.lens (\SigningImageFormat' {supportedFormats} -> supportedFormats) (\s@SigningImageFormat' {} a -> s {supportedFormats = a} :: SigningImageFormat) Prelude.. Lens.coerced

-- | The default format of a code signing image.
signingImageFormat_defaultFormat :: Lens.Lens' SigningImageFormat ImageFormat
signingImageFormat_defaultFormat = Lens.lens (\SigningImageFormat' {defaultFormat} -> defaultFormat) (\s@SigningImageFormat' {} a -> s {defaultFormat = a} :: SigningImageFormat)

instance Core.FromJSON SigningImageFormat where
  parseJSON =
    Core.withObject
      "SigningImageFormat"
      ( \x ->
          SigningImageFormat'
            Prelude.<$> ( x Core..:? "supportedFormats"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "defaultFormat")
      )

instance Prelude.Hashable SigningImageFormat

instance Prelude.NFData SigningImageFormat
