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
-- Module      : Network.AWS.Chime.Types.AccountType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.AccountType
  ( AccountType
      ( ..,
        AccountType_EnterpriseDirectory,
        AccountType_EnterpriseLWA,
        AccountType_EnterpriseOIDC,
        AccountType_Team
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AccountType = AccountType'
  { fromAccountType ::
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

pattern AccountType_EnterpriseDirectory :: AccountType
pattern AccountType_EnterpriseDirectory = AccountType' "EnterpriseDirectory"

pattern AccountType_EnterpriseLWA :: AccountType
pattern AccountType_EnterpriseLWA = AccountType' "EnterpriseLWA"

pattern AccountType_EnterpriseOIDC :: AccountType
pattern AccountType_EnterpriseOIDC = AccountType' "EnterpriseOIDC"

pattern AccountType_Team :: AccountType
pattern AccountType_Team = AccountType' "Team"

{-# COMPLETE
  AccountType_EnterpriseDirectory,
  AccountType_EnterpriseLWA,
  AccountType_EnterpriseOIDC,
  AccountType_Team,
  AccountType'
  #-}
