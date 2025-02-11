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
-- Module      : Network.AWS.MediaConnect.Types.ScanMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.ScanMode
  ( ScanMode
      ( ..,
        ScanMode_Interlace,
        ScanMode_Progressive,
        ScanMode_Progressive_segmented_frame
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ScanMode = ScanMode'
  { fromScanMode ::
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

pattern ScanMode_Interlace :: ScanMode
pattern ScanMode_Interlace = ScanMode' "interlace"

pattern ScanMode_Progressive :: ScanMode
pattern ScanMode_Progressive = ScanMode' "progressive"

pattern ScanMode_Progressive_segmented_frame :: ScanMode
pattern ScanMode_Progressive_segmented_frame = ScanMode' "progressive-segmented-frame"

{-# COMPLETE
  ScanMode_Interlace,
  ScanMode_Progressive,
  ScanMode_Progressive_segmented_frame,
  ScanMode'
  #-}
