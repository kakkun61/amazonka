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
-- Module      : Network.AWS.HoneyCode.Types.TableDataImportJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.TableDataImportJobStatus
  ( TableDataImportJobStatus
      ( ..,
        TableDataImportJobStatus_COMPLETED,
        TableDataImportJobStatus_FAILED,
        TableDataImportJobStatus_IN_PROGRESS,
        TableDataImportJobStatus_SUBMITTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype TableDataImportJobStatus = TableDataImportJobStatus'
  { fromTableDataImportJobStatus ::
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

pattern TableDataImportJobStatus_COMPLETED :: TableDataImportJobStatus
pattern TableDataImportJobStatus_COMPLETED = TableDataImportJobStatus' "COMPLETED"

pattern TableDataImportJobStatus_FAILED :: TableDataImportJobStatus
pattern TableDataImportJobStatus_FAILED = TableDataImportJobStatus' "FAILED"

pattern TableDataImportJobStatus_IN_PROGRESS :: TableDataImportJobStatus
pattern TableDataImportJobStatus_IN_PROGRESS = TableDataImportJobStatus' "IN_PROGRESS"

pattern TableDataImportJobStatus_SUBMITTED :: TableDataImportJobStatus
pattern TableDataImportJobStatus_SUBMITTED = TableDataImportJobStatus' "SUBMITTED"

{-# COMPLETE
  TableDataImportJobStatus_COMPLETED,
  TableDataImportJobStatus_FAILED,
  TableDataImportJobStatus_IN_PROGRESS,
  TableDataImportJobStatus_SUBMITTED,
  TableDataImportJobStatus'
  #-}
