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
-- Module      : Network.AWS.MediaConvert.Types.FileSourceTimeDeltaUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.FileSourceTimeDeltaUnits
  ( FileSourceTimeDeltaUnits
      ( ..,
        FileSourceTimeDeltaUnits_MILLISECONDS,
        FileSourceTimeDeltaUnits_SECONDS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | When you use the setting Time delta (TimeDelta) to adjust the sync
-- between your sidecar captions and your video, use this setting to
-- specify the units for the delta that you specify. When you don\'t
-- specify a value for Time delta units (TimeDeltaUnits), MediaConvert uses
-- seconds by default.
newtype FileSourceTimeDeltaUnits = FileSourceTimeDeltaUnits'
  { fromFileSourceTimeDeltaUnits ::
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

pattern FileSourceTimeDeltaUnits_MILLISECONDS :: FileSourceTimeDeltaUnits
pattern FileSourceTimeDeltaUnits_MILLISECONDS = FileSourceTimeDeltaUnits' "MILLISECONDS"

pattern FileSourceTimeDeltaUnits_SECONDS :: FileSourceTimeDeltaUnits
pattern FileSourceTimeDeltaUnits_SECONDS = FileSourceTimeDeltaUnits' "SECONDS"

{-# COMPLETE
  FileSourceTimeDeltaUnits_MILLISECONDS,
  FileSourceTimeDeltaUnits_SECONDS,
  FileSourceTimeDeltaUnits'
  #-}
