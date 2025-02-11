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
-- Module      : Network.AWS.MediaConnect.Types.MediaStreamAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.MediaStreamAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.Fmtp
import qualified Network.AWS.Prelude as Prelude

-- | Attributes that are related to the media stream.
--
-- /See:/ 'newMediaStreamAttributes' smart constructor.
data MediaStreamAttributes = MediaStreamAttributes'
  { -- | The audio language, in a format that is recognized by the receiver.
    lang :: Prelude.Maybe Prelude.Text,
    -- | A set of parameters that define the media stream.
    fmtp :: Fmtp
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MediaStreamAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lang', 'mediaStreamAttributes_lang' - The audio language, in a format that is recognized by the receiver.
--
-- 'fmtp', 'mediaStreamAttributes_fmtp' - A set of parameters that define the media stream.
newMediaStreamAttributes ::
  -- | 'fmtp'
  Fmtp ->
  MediaStreamAttributes
newMediaStreamAttributes pFmtp_ =
  MediaStreamAttributes'
    { lang = Prelude.Nothing,
      fmtp = pFmtp_
    }

-- | The audio language, in a format that is recognized by the receiver.
mediaStreamAttributes_lang :: Lens.Lens' MediaStreamAttributes (Prelude.Maybe Prelude.Text)
mediaStreamAttributes_lang = Lens.lens (\MediaStreamAttributes' {lang} -> lang) (\s@MediaStreamAttributes' {} a -> s {lang = a} :: MediaStreamAttributes)

-- | A set of parameters that define the media stream.
mediaStreamAttributes_fmtp :: Lens.Lens' MediaStreamAttributes Fmtp
mediaStreamAttributes_fmtp = Lens.lens (\MediaStreamAttributes' {fmtp} -> fmtp) (\s@MediaStreamAttributes' {} a -> s {fmtp = a} :: MediaStreamAttributes)

instance Core.FromJSON MediaStreamAttributes where
  parseJSON =
    Core.withObject
      "MediaStreamAttributes"
      ( \x ->
          MediaStreamAttributes'
            Prelude.<$> (x Core..:? "lang") Prelude.<*> (x Core..: "fmtp")
      )

instance Prelude.Hashable MediaStreamAttributes

instance Prelude.NFData MediaStreamAttributes
