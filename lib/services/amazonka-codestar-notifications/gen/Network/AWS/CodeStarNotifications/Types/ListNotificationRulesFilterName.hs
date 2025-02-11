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
-- Module      : Network.AWS.CodeStarNotifications.Types.ListNotificationRulesFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarNotifications.Types.ListNotificationRulesFilterName
  ( ListNotificationRulesFilterName
      ( ..,
        ListNotificationRulesFilterName_CREATED_BY,
        ListNotificationRulesFilterName_EVENT_TYPE_ID,
        ListNotificationRulesFilterName_RESOURCE,
        ListNotificationRulesFilterName_TARGET_ADDRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ListNotificationRulesFilterName = ListNotificationRulesFilterName'
  { fromListNotificationRulesFilterName ::
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

pattern ListNotificationRulesFilterName_CREATED_BY :: ListNotificationRulesFilterName
pattern ListNotificationRulesFilterName_CREATED_BY = ListNotificationRulesFilterName' "CREATED_BY"

pattern ListNotificationRulesFilterName_EVENT_TYPE_ID :: ListNotificationRulesFilterName
pattern ListNotificationRulesFilterName_EVENT_TYPE_ID = ListNotificationRulesFilterName' "EVENT_TYPE_ID"

pattern ListNotificationRulesFilterName_RESOURCE :: ListNotificationRulesFilterName
pattern ListNotificationRulesFilterName_RESOURCE = ListNotificationRulesFilterName' "RESOURCE"

pattern ListNotificationRulesFilterName_TARGET_ADDRESS :: ListNotificationRulesFilterName
pattern ListNotificationRulesFilterName_TARGET_ADDRESS = ListNotificationRulesFilterName' "TARGET_ADDRESS"

{-# COMPLETE
  ListNotificationRulesFilterName_CREATED_BY,
  ListNotificationRulesFilterName_EVENT_TYPE_ID,
  ListNotificationRulesFilterName_RESOURCE,
  ListNotificationRulesFilterName_TARGET_ADDRESS,
  ListNotificationRulesFilterName'
  #-}
