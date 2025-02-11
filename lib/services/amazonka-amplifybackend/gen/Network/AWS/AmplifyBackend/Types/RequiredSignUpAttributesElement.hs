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
-- Module      : Network.AWS.AmplifyBackend.Types.RequiredSignUpAttributesElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.RequiredSignUpAttributesElement
  ( RequiredSignUpAttributesElement
      ( ..,
        RequiredSignUpAttributesElement_ADDRESS,
        RequiredSignUpAttributesElement_BIRTHDATE,
        RequiredSignUpAttributesElement_EMAIL,
        RequiredSignUpAttributesElement_FAMILY_NAME,
        RequiredSignUpAttributesElement_GENDER,
        RequiredSignUpAttributesElement_GIVEN_NAME,
        RequiredSignUpAttributesElement_LOCALE,
        RequiredSignUpAttributesElement_MIDDLE_NAME,
        RequiredSignUpAttributesElement_NAME,
        RequiredSignUpAttributesElement_NICKNAME,
        RequiredSignUpAttributesElement_PHONE_NUMBER,
        RequiredSignUpAttributesElement_PICTURE,
        RequiredSignUpAttributesElement_PREFERRED_USERNAME,
        RequiredSignUpAttributesElement_PROFILE,
        RequiredSignUpAttributesElement_UPDATED_AT,
        RequiredSignUpAttributesElement_WEBSITE,
        RequiredSignUpAttributesElement_ZONE_INFO
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype RequiredSignUpAttributesElement = RequiredSignUpAttributesElement'
  { fromRequiredSignUpAttributesElement ::
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

pattern RequiredSignUpAttributesElement_ADDRESS :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_ADDRESS = RequiredSignUpAttributesElement' "ADDRESS"

pattern RequiredSignUpAttributesElement_BIRTHDATE :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_BIRTHDATE = RequiredSignUpAttributesElement' "BIRTHDATE"

pattern RequiredSignUpAttributesElement_EMAIL :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_EMAIL = RequiredSignUpAttributesElement' "EMAIL"

pattern RequiredSignUpAttributesElement_FAMILY_NAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_FAMILY_NAME = RequiredSignUpAttributesElement' "FAMILY_NAME"

pattern RequiredSignUpAttributesElement_GENDER :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_GENDER = RequiredSignUpAttributesElement' "GENDER"

pattern RequiredSignUpAttributesElement_GIVEN_NAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_GIVEN_NAME = RequiredSignUpAttributesElement' "GIVEN_NAME"

pattern RequiredSignUpAttributesElement_LOCALE :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_LOCALE = RequiredSignUpAttributesElement' "LOCALE"

pattern RequiredSignUpAttributesElement_MIDDLE_NAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_MIDDLE_NAME = RequiredSignUpAttributesElement' "MIDDLE_NAME"

pattern RequiredSignUpAttributesElement_NAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_NAME = RequiredSignUpAttributesElement' "NAME"

pattern RequiredSignUpAttributesElement_NICKNAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_NICKNAME = RequiredSignUpAttributesElement' "NICKNAME"

pattern RequiredSignUpAttributesElement_PHONE_NUMBER :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_PHONE_NUMBER = RequiredSignUpAttributesElement' "PHONE_NUMBER"

pattern RequiredSignUpAttributesElement_PICTURE :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_PICTURE = RequiredSignUpAttributesElement' "PICTURE"

pattern RequiredSignUpAttributesElement_PREFERRED_USERNAME :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_PREFERRED_USERNAME = RequiredSignUpAttributesElement' "PREFERRED_USERNAME"

pattern RequiredSignUpAttributesElement_PROFILE :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_PROFILE = RequiredSignUpAttributesElement' "PROFILE"

pattern RequiredSignUpAttributesElement_UPDATED_AT :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_UPDATED_AT = RequiredSignUpAttributesElement' "UPDATED_AT"

pattern RequiredSignUpAttributesElement_WEBSITE :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_WEBSITE = RequiredSignUpAttributesElement' "WEBSITE"

pattern RequiredSignUpAttributesElement_ZONE_INFO :: RequiredSignUpAttributesElement
pattern RequiredSignUpAttributesElement_ZONE_INFO = RequiredSignUpAttributesElement' "ZONE_INFO"

{-# COMPLETE
  RequiredSignUpAttributesElement_ADDRESS,
  RequiredSignUpAttributesElement_BIRTHDATE,
  RequiredSignUpAttributesElement_EMAIL,
  RequiredSignUpAttributesElement_FAMILY_NAME,
  RequiredSignUpAttributesElement_GENDER,
  RequiredSignUpAttributesElement_GIVEN_NAME,
  RequiredSignUpAttributesElement_LOCALE,
  RequiredSignUpAttributesElement_MIDDLE_NAME,
  RequiredSignUpAttributesElement_NAME,
  RequiredSignUpAttributesElement_NICKNAME,
  RequiredSignUpAttributesElement_PHONE_NUMBER,
  RequiredSignUpAttributesElement_PICTURE,
  RequiredSignUpAttributesElement_PREFERRED_USERNAME,
  RequiredSignUpAttributesElement_PROFILE,
  RequiredSignUpAttributesElement_UPDATED_AT,
  RequiredSignUpAttributesElement_WEBSITE,
  RequiredSignUpAttributesElement_ZONE_INFO,
  RequiredSignUpAttributesElement'
  #-}
