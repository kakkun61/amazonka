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
-- Module      : Network.AWS.RedshiftData.Types.StatusString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RedshiftData.Types.StatusString
  ( StatusString
      ( ..,
        StatusString_ABORTED,
        StatusString_ALL,
        StatusString_FAILED,
        StatusString_FINISHED,
        StatusString_PICKED,
        StatusString_STARTED,
        StatusString_SUBMITTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype StatusString = StatusString'
  { fromStatusString ::
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

pattern StatusString_ABORTED :: StatusString
pattern StatusString_ABORTED = StatusString' "ABORTED"

pattern StatusString_ALL :: StatusString
pattern StatusString_ALL = StatusString' "ALL"

pattern StatusString_FAILED :: StatusString
pattern StatusString_FAILED = StatusString' "FAILED"

pattern StatusString_FINISHED :: StatusString
pattern StatusString_FINISHED = StatusString' "FINISHED"

pattern StatusString_PICKED :: StatusString
pattern StatusString_PICKED = StatusString' "PICKED"

pattern StatusString_STARTED :: StatusString
pattern StatusString_STARTED = StatusString' "STARTED"

pattern StatusString_SUBMITTED :: StatusString
pattern StatusString_SUBMITTED = StatusString' "SUBMITTED"

{-# COMPLETE
  StatusString_ABORTED,
  StatusString_ALL,
  StatusString_FAILED,
  StatusString_FINISHED,
  StatusString_PICKED,
  StatusString_STARTED,
  StatusString_SUBMITTED,
  StatusString'
  #-}
