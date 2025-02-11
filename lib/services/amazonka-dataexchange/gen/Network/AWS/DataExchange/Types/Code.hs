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
-- Module      : Network.AWS.DataExchange.Types.Code
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.Code
  ( Code
      ( ..,
        Code_ACCESS_DENIED_EXCEPTION,
        Code_INTERNAL_SERVER_EXCEPTION,
        Code_MALWARE_DETECTED,
        Code_MALWARE_SCAN_ENCRYPTED_FILE,
        Code_RESOURCE_NOT_FOUND_EXCEPTION,
        Code_SERVICE_QUOTA_EXCEEDED_EXCEPTION,
        Code_VALIDATION_EXCEPTION
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Code = Code' {fromCode :: Core.Text}
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

pattern Code_ACCESS_DENIED_EXCEPTION :: Code
pattern Code_ACCESS_DENIED_EXCEPTION = Code' "ACCESS_DENIED_EXCEPTION"

pattern Code_INTERNAL_SERVER_EXCEPTION :: Code
pattern Code_INTERNAL_SERVER_EXCEPTION = Code' "INTERNAL_SERVER_EXCEPTION"

pattern Code_MALWARE_DETECTED :: Code
pattern Code_MALWARE_DETECTED = Code' "MALWARE_DETECTED"

pattern Code_MALWARE_SCAN_ENCRYPTED_FILE :: Code
pattern Code_MALWARE_SCAN_ENCRYPTED_FILE = Code' "MALWARE_SCAN_ENCRYPTED_FILE"

pattern Code_RESOURCE_NOT_FOUND_EXCEPTION :: Code
pattern Code_RESOURCE_NOT_FOUND_EXCEPTION = Code' "RESOURCE_NOT_FOUND_EXCEPTION"

pattern Code_SERVICE_QUOTA_EXCEEDED_EXCEPTION :: Code
pattern Code_SERVICE_QUOTA_EXCEEDED_EXCEPTION = Code' "SERVICE_QUOTA_EXCEEDED_EXCEPTION"

pattern Code_VALIDATION_EXCEPTION :: Code
pattern Code_VALIDATION_EXCEPTION = Code' "VALIDATION_EXCEPTION"

{-# COMPLETE
  Code_ACCESS_DENIED_EXCEPTION,
  Code_INTERNAL_SERVER_EXCEPTION,
  Code_MALWARE_DETECTED,
  Code_MALWARE_SCAN_ENCRYPTED_FILE,
  Code_RESOURCE_NOT_FOUND_EXCEPTION,
  Code_SERVICE_QUOTA_EXCEEDED_EXCEPTION,
  Code_VALIDATION_EXCEPTION,
  Code'
  #-}
