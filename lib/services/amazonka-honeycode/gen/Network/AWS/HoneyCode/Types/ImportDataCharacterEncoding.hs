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
-- Module      : Network.AWS.HoneyCode.Types.ImportDataCharacterEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.ImportDataCharacterEncoding
  ( ImportDataCharacterEncoding
      ( ..,
        ImportDataCharacterEncoding_ISO_8859_1,
        ImportDataCharacterEncoding_US_ASCII,
        ImportDataCharacterEncoding_UTF_16,
        ImportDataCharacterEncoding_UTF_16BE,
        ImportDataCharacterEncoding_UTF_16LE,
        ImportDataCharacterEncoding_UTF_8
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ImportDataCharacterEncoding = ImportDataCharacterEncoding'
  { fromImportDataCharacterEncoding ::
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

pattern ImportDataCharacterEncoding_ISO_8859_1 :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_ISO_8859_1 = ImportDataCharacterEncoding' "ISO-8859-1"

pattern ImportDataCharacterEncoding_US_ASCII :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_US_ASCII = ImportDataCharacterEncoding' "US-ASCII"

pattern ImportDataCharacterEncoding_UTF_16 :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_UTF_16 = ImportDataCharacterEncoding' "UTF-16"

pattern ImportDataCharacterEncoding_UTF_16BE :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_UTF_16BE = ImportDataCharacterEncoding' "UTF-16BE"

pattern ImportDataCharacterEncoding_UTF_16LE :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_UTF_16LE = ImportDataCharacterEncoding' "UTF-16LE"

pattern ImportDataCharacterEncoding_UTF_8 :: ImportDataCharacterEncoding
pattern ImportDataCharacterEncoding_UTF_8 = ImportDataCharacterEncoding' "UTF-8"

{-# COMPLETE
  ImportDataCharacterEncoding_ISO_8859_1,
  ImportDataCharacterEncoding_US_ASCII,
  ImportDataCharacterEncoding_UTF_16,
  ImportDataCharacterEncoding_UTF_16BE,
  ImportDataCharacterEncoding_UTF_16LE,
  ImportDataCharacterEncoding_UTF_8,
  ImportDataCharacterEncoding'
  #-}
