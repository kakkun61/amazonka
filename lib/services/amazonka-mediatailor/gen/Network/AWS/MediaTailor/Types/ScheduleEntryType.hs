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
-- Module      : Network.AWS.MediaTailor.Types.ScheduleEntryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.ScheduleEntryType
  ( ScheduleEntryType
      ( ..,
        ScheduleEntryType_FILLER_SLATE,
        ScheduleEntryType_PROGRAM
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ScheduleEntryType = ScheduleEntryType'
  { fromScheduleEntryType ::
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

pattern ScheduleEntryType_FILLER_SLATE :: ScheduleEntryType
pattern ScheduleEntryType_FILLER_SLATE = ScheduleEntryType' "FILLER_SLATE"

pattern ScheduleEntryType_PROGRAM :: ScheduleEntryType
pattern ScheduleEntryType_PROGRAM = ScheduleEntryType' "PROGRAM"

{-# COMPLETE
  ScheduleEntryType_FILLER_SLATE,
  ScheduleEntryType_PROGRAM,
  ScheduleEntryType'
  #-}
