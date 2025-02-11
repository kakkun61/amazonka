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
-- Module      : Network.AWS.CustomerProfiles.Types.TaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.TaskType
  ( TaskType
      ( ..,
        TaskType_Arithmetic,
        TaskType_Filter,
        TaskType_Map,
        TaskType_Mask,
        TaskType_Merge,
        TaskType_Truncate,
        TaskType_Validate
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype TaskType = TaskType'
  { fromTaskType ::
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

pattern TaskType_Arithmetic :: TaskType
pattern TaskType_Arithmetic = TaskType' "Arithmetic"

pattern TaskType_Filter :: TaskType
pattern TaskType_Filter = TaskType' "Filter"

pattern TaskType_Map :: TaskType
pattern TaskType_Map = TaskType' "Map"

pattern TaskType_Mask :: TaskType
pattern TaskType_Mask = TaskType' "Mask"

pattern TaskType_Merge :: TaskType
pattern TaskType_Merge = TaskType' "Merge"

pattern TaskType_Truncate :: TaskType
pattern TaskType_Truncate = TaskType' "Truncate"

pattern TaskType_Validate :: TaskType
pattern TaskType_Validate = TaskType' "Validate"

{-# COMPLETE
  TaskType_Arithmetic,
  TaskType_Filter,
  TaskType_Map,
  TaskType_Mask,
  TaskType_Merge,
  TaskType_Truncate,
  TaskType_Validate,
  TaskType'
  #-}
