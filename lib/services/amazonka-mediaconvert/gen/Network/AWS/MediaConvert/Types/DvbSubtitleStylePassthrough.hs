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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleStylePassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleStylePassthrough
  ( DvbSubtitleStylePassthrough
      ( ..,
        DvbSubtitleStylePassthrough_DISABLED,
        DvbSubtitleStylePassthrough_ENABLED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Set Style passthrough (StylePassthrough) to ENABLED to use the available
-- style, color, and position information from your input captions.
-- MediaConvert uses default settings for any missing style and position
-- information in your input captions. Set Style passthrough to DISABLED,
-- or leave blank, to ignore the style and position information from your
-- input captions and use default settings: white text with black
-- outlining, bottom-center positioning, and automatic sizing. Whether you
-- set Style passthrough to enabled or not, you can also choose to manually
-- override any of the individual style and position settings.
newtype DvbSubtitleStylePassthrough = DvbSubtitleStylePassthrough'
  { fromDvbSubtitleStylePassthrough ::
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

pattern DvbSubtitleStylePassthrough_DISABLED :: DvbSubtitleStylePassthrough
pattern DvbSubtitleStylePassthrough_DISABLED = DvbSubtitleStylePassthrough' "DISABLED"

pattern DvbSubtitleStylePassthrough_ENABLED :: DvbSubtitleStylePassthrough
pattern DvbSubtitleStylePassthrough_ENABLED = DvbSubtitleStylePassthrough' "ENABLED"

{-# COMPLETE
  DvbSubtitleStylePassthrough_DISABLED,
  DvbSubtitleStylePassthrough_ENABLED,
  DvbSubtitleStylePassthrough'
  #-}
