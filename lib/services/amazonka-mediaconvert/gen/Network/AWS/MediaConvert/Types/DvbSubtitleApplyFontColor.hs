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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleApplyFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleApplyFontColor
  ( DvbSubtitleApplyFontColor
      ( ..,
        DvbSubtitleApplyFontColor_ALL_TEXT,
        DvbSubtitleApplyFontColor_WHITE_TEXT_ONLY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless Style Passthrough (StylePassthrough) is set
-- to Enabled and Font color (FontColor) set to Black, Yellow, Red, Green,
-- Blue, or Hex. Use Apply font color (ApplyFontColor) for additional font
-- color controls. When you choose White text only (WHITE_TEXT_ONLY), or
-- leave blank, your font color setting only applies to white text in your
-- input captions. For example, if your font color setting is Yellow, and
-- your input captions have red and white text, your output captions will
-- have red and yellow text. When you choose ALL_TEXT, your font color
-- setting applies to all of your output captions text.
newtype DvbSubtitleApplyFontColor = DvbSubtitleApplyFontColor'
  { fromDvbSubtitleApplyFontColor ::
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

pattern DvbSubtitleApplyFontColor_ALL_TEXT :: DvbSubtitleApplyFontColor
pattern DvbSubtitleApplyFontColor_ALL_TEXT = DvbSubtitleApplyFontColor' "ALL_TEXT"

pattern DvbSubtitleApplyFontColor_WHITE_TEXT_ONLY :: DvbSubtitleApplyFontColor
pattern DvbSubtitleApplyFontColor_WHITE_TEXT_ONLY = DvbSubtitleApplyFontColor' "WHITE_TEXT_ONLY"

{-# COMPLETE
  DvbSubtitleApplyFontColor_ALL_TEXT,
  DvbSubtitleApplyFontColor_WHITE_TEXT_ONLY,
  DvbSubtitleApplyFontColor'
  #-}
