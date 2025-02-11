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
-- Module      : Network.AWS.RDSData.Types.TypeHint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDSData.Types.TypeHint
  ( TypeHint
      ( ..,
        TypeHint_DATE,
        TypeHint_DECIMAL,
        TypeHint_JSON,
        TypeHint_TIME,
        TypeHint_TIMESTAMP,
        TypeHint_UUID
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype TypeHint = TypeHint'
  { fromTypeHint ::
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

pattern TypeHint_DATE :: TypeHint
pattern TypeHint_DATE = TypeHint' "DATE"

pattern TypeHint_DECIMAL :: TypeHint
pattern TypeHint_DECIMAL = TypeHint' "DECIMAL"

pattern TypeHint_JSON :: TypeHint
pattern TypeHint_JSON = TypeHint' "JSON"

pattern TypeHint_TIME :: TypeHint
pattern TypeHint_TIME = TypeHint' "TIME"

pattern TypeHint_TIMESTAMP :: TypeHint
pattern TypeHint_TIMESTAMP = TypeHint' "TIMESTAMP"

pattern TypeHint_UUID :: TypeHint
pattern TypeHint_UUID = TypeHint' "UUID"

{-# COMPLETE
  TypeHint_DATE,
  TypeHint_DECIMAL,
  TypeHint_JSON,
  TypeHint_TIME,
  TypeHint_TIMESTAMP,
  TypeHint_UUID,
  TypeHint'
  #-}
