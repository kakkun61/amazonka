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
-- Module      : Network.AWS.AppRunner.Types.ImageRepositoryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.ImageRepositoryType
  ( ImageRepositoryType
      ( ..,
        ImageRepositoryType_ECR,
        ImageRepositoryType_ECR_PUBLIC
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ImageRepositoryType = ImageRepositoryType'
  { fromImageRepositoryType ::
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

pattern ImageRepositoryType_ECR :: ImageRepositoryType
pattern ImageRepositoryType_ECR = ImageRepositoryType' "ECR"

pattern ImageRepositoryType_ECR_PUBLIC :: ImageRepositoryType
pattern ImageRepositoryType_ECR_PUBLIC = ImageRepositoryType' "ECR_PUBLIC"

{-# COMPLETE
  ImageRepositoryType_ECR,
  ImageRepositoryType_ECR_PUBLIC,
  ImageRepositoryType'
  #-}
