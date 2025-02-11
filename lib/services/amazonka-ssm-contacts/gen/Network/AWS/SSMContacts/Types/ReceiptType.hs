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
-- Module      : Network.AWS.SSMContacts.Types.ReceiptType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMContacts.Types.ReceiptType
  ( ReceiptType
      ( ..,
        ReceiptType_DELIVERED,
        ReceiptType_ERROR,
        ReceiptType_READ,
        ReceiptType_SENT,
        ReceiptType_STOP
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ReceiptType = ReceiptType'
  { fromReceiptType ::
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

pattern ReceiptType_DELIVERED :: ReceiptType
pattern ReceiptType_DELIVERED = ReceiptType' "DELIVERED"

pattern ReceiptType_ERROR :: ReceiptType
pattern ReceiptType_ERROR = ReceiptType' "ERROR"

pattern ReceiptType_READ :: ReceiptType
pattern ReceiptType_READ = ReceiptType' "READ"

pattern ReceiptType_SENT :: ReceiptType
pattern ReceiptType_SENT = ReceiptType' "SENT"

pattern ReceiptType_STOP :: ReceiptType
pattern ReceiptType_STOP = ReceiptType' "STOP"

{-# COMPLETE
  ReceiptType_DELIVERED,
  ReceiptType_ERROR,
  ReceiptType_READ,
  ReceiptType_SENT,
  ReceiptType_STOP,
  ReceiptType'
  #-}
