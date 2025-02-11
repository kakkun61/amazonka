{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
  ( DvbSubtitleFontColor
      ( ..,
        DvbSubtitleFontColor_AUTO,
        DvbSubtitleFontColor_BLACK,
        DvbSubtitleFontColor_BLUE,
        DvbSubtitleFontColor_GREEN,
        DvbSubtitleFontColor_HEX,
        DvbSubtitleFontColor_RED,
        DvbSubtitleFontColor_WHITE,
        DvbSubtitleFontColor_YELLOW
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Specify the color of the captions text. Leave Font color (FontColor)
-- blank and set Style passthrough (StylePassthrough) to enabled to use the
-- font color data from your input captions, if present. Within your job
-- settings, all of your DVB-Sub settings must be identical.
newtype DvbSubtitleFontColor = DvbSubtitleFontColor'
  { fromDvbSubtitleFontColor ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern DvbSubtitleFontColor_AUTO :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_AUTO = DvbSubtitleFontColor' "AUTO"

pattern DvbSubtitleFontColor_BLACK :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_BLACK = DvbSubtitleFontColor' "BLACK"

pattern DvbSubtitleFontColor_BLUE :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_BLUE = DvbSubtitleFontColor' "BLUE"

pattern DvbSubtitleFontColor_GREEN :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_GREEN = DvbSubtitleFontColor' "GREEN"

pattern DvbSubtitleFontColor_HEX :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_HEX = DvbSubtitleFontColor' "HEX"

pattern DvbSubtitleFontColor_RED :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_RED = DvbSubtitleFontColor' "RED"

pattern DvbSubtitleFontColor_WHITE :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_WHITE = DvbSubtitleFontColor' "WHITE"

pattern DvbSubtitleFontColor_YELLOW :: DvbSubtitleFontColor
pattern DvbSubtitleFontColor_YELLOW = DvbSubtitleFontColor' "YELLOW"

{-# COMPLETE
  DvbSubtitleFontColor_AUTO,
  DvbSubtitleFontColor_BLACK,
  DvbSubtitleFontColor_BLUE,
  DvbSubtitleFontColor_GREEN,
  DvbSubtitleFontColor_HEX,
  DvbSubtitleFontColor_RED,
  DvbSubtitleFontColor_WHITE,
  DvbSubtitleFontColor_YELLOW,
  DvbSubtitleFontColor'
  #-}
