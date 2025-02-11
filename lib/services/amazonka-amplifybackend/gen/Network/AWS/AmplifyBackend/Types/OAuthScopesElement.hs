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
-- Module      : Network.AWS.AmplifyBackend.Types.OAuthScopesElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.OAuthScopesElement
  ( OAuthScopesElement
      ( ..,
        OAuthScopesElement_AWS_COGNITO_SIGNIN_USER_ADMIN,
        OAuthScopesElement_EMAIL,
        OAuthScopesElement_OPENID,
        OAuthScopesElement_PHONE,
        OAuthScopesElement_PROFILE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype OAuthScopesElement = OAuthScopesElement'
  { fromOAuthScopesElement ::
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

pattern OAuthScopesElement_AWS_COGNITO_SIGNIN_USER_ADMIN :: OAuthScopesElement
pattern OAuthScopesElement_AWS_COGNITO_SIGNIN_USER_ADMIN = OAuthScopesElement' "AWS_COGNITO_SIGNIN_USER_ADMIN"

pattern OAuthScopesElement_EMAIL :: OAuthScopesElement
pattern OAuthScopesElement_EMAIL = OAuthScopesElement' "EMAIL"

pattern OAuthScopesElement_OPENID :: OAuthScopesElement
pattern OAuthScopesElement_OPENID = OAuthScopesElement' "OPENID"

pattern OAuthScopesElement_PHONE :: OAuthScopesElement
pattern OAuthScopesElement_PHONE = OAuthScopesElement' "PHONE"

pattern OAuthScopesElement_PROFILE :: OAuthScopesElement
pattern OAuthScopesElement_PROFILE = OAuthScopesElement' "PROFILE"

{-# COMPLETE
  OAuthScopesElement_AWS_COGNITO_SIGNIN_USER_ADMIN,
  OAuthScopesElement_EMAIL,
  OAuthScopesElement_OPENID,
  OAuthScopesElement_PHONE,
  OAuthScopesElement_PROFILE,
  OAuthScopesElement'
  #-}
