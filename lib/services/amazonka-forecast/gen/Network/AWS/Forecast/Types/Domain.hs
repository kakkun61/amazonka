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
-- Module      : Network.AWS.Forecast.Types.Domain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.Domain
  ( Domain
      ( ..,
        Domain_CUSTOM,
        Domain_EC2_CAPACITY,
        Domain_INVENTORY_PLANNING,
        Domain_METRICS,
        Domain_RETAIL,
        Domain_WEB_TRAFFIC,
        Domain_WORK_FORCE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Domain = Domain' {fromDomain :: Core.Text}
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

pattern Domain_CUSTOM :: Domain
pattern Domain_CUSTOM = Domain' "CUSTOM"

pattern Domain_EC2_CAPACITY :: Domain
pattern Domain_EC2_CAPACITY = Domain' "EC2_CAPACITY"

pattern Domain_INVENTORY_PLANNING :: Domain
pattern Domain_INVENTORY_PLANNING = Domain' "INVENTORY_PLANNING"

pattern Domain_METRICS :: Domain
pattern Domain_METRICS = Domain' "METRICS"

pattern Domain_RETAIL :: Domain
pattern Domain_RETAIL = Domain' "RETAIL"

pattern Domain_WEB_TRAFFIC :: Domain
pattern Domain_WEB_TRAFFIC = Domain' "WEB_TRAFFIC"

pattern Domain_WORK_FORCE :: Domain
pattern Domain_WORK_FORCE = Domain' "WORK_FORCE"

{-# COMPLETE
  Domain_CUSTOM,
  Domain_EC2_CAPACITY,
  Domain_INVENTORY_PLANNING,
  Domain_METRICS,
  Domain_RETAIL,
  Domain_WEB_TRAFFIC,
  Domain_WORK_FORCE,
  Domain'
  #-}
