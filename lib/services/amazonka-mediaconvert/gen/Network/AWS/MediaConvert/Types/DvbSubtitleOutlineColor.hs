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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
  ( DvbSubtitleOutlineColor
      ( ..,
        DvbSubtitleOutlineColor_AUTO,
        DvbSubtitleOutlineColor_BLACK,
        DvbSubtitleOutlineColor_BLUE,
        DvbSubtitleOutlineColor_GREEN,
        DvbSubtitleOutlineColor_RED,
        DvbSubtitleOutlineColor_WHITE,
        DvbSubtitleOutlineColor_YELLOW
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Specify font outline color. Leave Outline color (OutlineColor) blank and
-- set Style passthrough (StylePassthrough) to enabled to use the font
-- outline color data from your input captions, if present. Within your job
-- settings, all of your DVB-Sub settings must be identical.
newtype DvbSubtitleOutlineColor = DvbSubtitleOutlineColor'
  { fromDvbSubtitleOutlineColor ::
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

pattern DvbSubtitleOutlineColor_AUTO :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_AUTO = DvbSubtitleOutlineColor' "AUTO"

pattern DvbSubtitleOutlineColor_BLACK :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_BLACK = DvbSubtitleOutlineColor' "BLACK"

pattern DvbSubtitleOutlineColor_BLUE :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_BLUE = DvbSubtitleOutlineColor' "BLUE"

pattern DvbSubtitleOutlineColor_GREEN :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_GREEN = DvbSubtitleOutlineColor' "GREEN"

pattern DvbSubtitleOutlineColor_RED :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_RED = DvbSubtitleOutlineColor' "RED"

pattern DvbSubtitleOutlineColor_WHITE :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_WHITE = DvbSubtitleOutlineColor' "WHITE"

pattern DvbSubtitleOutlineColor_YELLOW :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColor_YELLOW = DvbSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  DvbSubtitleOutlineColor_AUTO,
  DvbSubtitleOutlineColor_BLACK,
  DvbSubtitleOutlineColor_BLUE,
  DvbSubtitleOutlineColor_GREEN,
  DvbSubtitleOutlineColor_RED,
  DvbSubtitleOutlineColor_WHITE,
  DvbSubtitleOutlineColor_YELLOW,
  DvbSubtitleOutlineColor'
  #-}
