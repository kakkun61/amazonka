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
-- Module      : Network.AWS.OpenSearch.Types.InboundConnectionStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.InboundConnectionStatusCode
  ( InboundConnectionStatusCode
      ( ..,
        InboundConnectionStatusCode_ACTIVE,
        InboundConnectionStatusCode_APPROVED,
        InboundConnectionStatusCode_DELETED,
        InboundConnectionStatusCode_DELETING,
        InboundConnectionStatusCode_PENDING_ACCEPTANCE,
        InboundConnectionStatusCode_PROVISIONING,
        InboundConnectionStatusCode_REJECTED,
        InboundConnectionStatusCode_REJECTING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InboundConnectionStatusCode = InboundConnectionStatusCode'
  { fromInboundConnectionStatusCode ::
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

pattern InboundConnectionStatusCode_ACTIVE :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_ACTIVE = InboundConnectionStatusCode' "ACTIVE"

pattern InboundConnectionStatusCode_APPROVED :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_APPROVED = InboundConnectionStatusCode' "APPROVED"

pattern InboundConnectionStatusCode_DELETED :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_DELETED = InboundConnectionStatusCode' "DELETED"

pattern InboundConnectionStatusCode_DELETING :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_DELETING = InboundConnectionStatusCode' "DELETING"

pattern InboundConnectionStatusCode_PENDING_ACCEPTANCE :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_PENDING_ACCEPTANCE = InboundConnectionStatusCode' "PENDING_ACCEPTANCE"

pattern InboundConnectionStatusCode_PROVISIONING :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_PROVISIONING = InboundConnectionStatusCode' "PROVISIONING"

pattern InboundConnectionStatusCode_REJECTED :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_REJECTED = InboundConnectionStatusCode' "REJECTED"

pattern InboundConnectionStatusCode_REJECTING :: InboundConnectionStatusCode
pattern InboundConnectionStatusCode_REJECTING = InboundConnectionStatusCode' "REJECTING"

{-# COMPLETE
  InboundConnectionStatusCode_ACTIVE,
  InboundConnectionStatusCode_APPROVED,
  InboundConnectionStatusCode_DELETED,
  InboundConnectionStatusCode_DELETING,
  InboundConnectionStatusCode_PENDING_ACCEPTANCE,
  InboundConnectionStatusCode_PROVISIONING,
  InboundConnectionStatusCode_REJECTED,
  InboundConnectionStatusCode_REJECTING,
  InboundConnectionStatusCode'
  #-}
