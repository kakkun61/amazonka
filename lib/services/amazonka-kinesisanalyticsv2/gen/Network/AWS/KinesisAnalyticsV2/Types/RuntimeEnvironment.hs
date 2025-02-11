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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.RuntimeEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.RuntimeEnvironment
  ( RuntimeEnvironment
      ( ..,
        RuntimeEnvironment_FLINK_1_11,
        RuntimeEnvironment_FLINK_1_13,
        RuntimeEnvironment_FLINK_1_6,
        RuntimeEnvironment_FLINK_1_8,
        RuntimeEnvironment_SQL_1_0,
        RuntimeEnvironment_ZEPPELIN_FLINK_1_0,
        RuntimeEnvironment_ZEPPELIN_FLINK_2_0
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype RuntimeEnvironment = RuntimeEnvironment'
  { fromRuntimeEnvironment ::
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

pattern RuntimeEnvironment_FLINK_1_11 :: RuntimeEnvironment
pattern RuntimeEnvironment_FLINK_1_11 = RuntimeEnvironment' "FLINK-1_11"

pattern RuntimeEnvironment_FLINK_1_13 :: RuntimeEnvironment
pattern RuntimeEnvironment_FLINK_1_13 = RuntimeEnvironment' "FLINK-1_13"

pattern RuntimeEnvironment_FLINK_1_6 :: RuntimeEnvironment
pattern RuntimeEnvironment_FLINK_1_6 = RuntimeEnvironment' "FLINK-1_6"

pattern RuntimeEnvironment_FLINK_1_8 :: RuntimeEnvironment
pattern RuntimeEnvironment_FLINK_1_8 = RuntimeEnvironment' "FLINK-1_8"

pattern RuntimeEnvironment_SQL_1_0 :: RuntimeEnvironment
pattern RuntimeEnvironment_SQL_1_0 = RuntimeEnvironment' "SQL-1_0"

pattern RuntimeEnvironment_ZEPPELIN_FLINK_1_0 :: RuntimeEnvironment
pattern RuntimeEnvironment_ZEPPELIN_FLINK_1_0 = RuntimeEnvironment' "ZEPPELIN-FLINK-1_0"

pattern RuntimeEnvironment_ZEPPELIN_FLINK_2_0 :: RuntimeEnvironment
pattern RuntimeEnvironment_ZEPPELIN_FLINK_2_0 = RuntimeEnvironment' "ZEPPELIN-FLINK-2_0"

{-# COMPLETE
  RuntimeEnvironment_FLINK_1_11,
  RuntimeEnvironment_FLINK_1_13,
  RuntimeEnvironment_FLINK_1_6,
  RuntimeEnvironment_FLINK_1_8,
  RuntimeEnvironment_SQL_1_0,
  RuntimeEnvironment_ZEPPELIN_FLINK_1_0,
  RuntimeEnvironment_ZEPPELIN_FLINK_2_0,
  RuntimeEnvironment'
  #-}
