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
-- Module      : Network.AWS.MacieV2.Types.FindingsFilterAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.FindingsFilterAction
  ( FindingsFilterAction
      ( ..,
        FindingsFilterAction_ARCHIVE,
        FindingsFilterAction_NOOP
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The action to perform on findings that meet the filter criteria. To
-- suppress (automatically archive) findings that meet the criteria, set
-- this value to ARCHIVE. Valid values are:
newtype FindingsFilterAction = FindingsFilterAction'
  { fromFindingsFilterAction ::
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

pattern FindingsFilterAction_ARCHIVE :: FindingsFilterAction
pattern FindingsFilterAction_ARCHIVE = FindingsFilterAction' "ARCHIVE"

pattern FindingsFilterAction_NOOP :: FindingsFilterAction
pattern FindingsFilterAction_NOOP = FindingsFilterAction' "NOOP"

{-# COMPLETE
  FindingsFilterAction_ARCHIVE,
  FindingsFilterAction_NOOP,
  FindingsFilterAction'
  #-}
