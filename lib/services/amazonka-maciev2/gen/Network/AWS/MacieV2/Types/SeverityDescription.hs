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
-- Module      : Network.AWS.MacieV2.Types.SeverityDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SeverityDescription
  ( SeverityDescription
      ( ..,
        SeverityDescription_High,
        SeverityDescription_Low,
        SeverityDescription_Medium
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The qualitative representation of the finding\'s severity. Possible
-- values are:
newtype SeverityDescription = SeverityDescription'
  { fromSeverityDescription ::
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

pattern SeverityDescription_High :: SeverityDescription
pattern SeverityDescription_High = SeverityDescription' "High"

pattern SeverityDescription_Low :: SeverityDescription
pattern SeverityDescription_Low = SeverityDescription' "Low"

pattern SeverityDescription_Medium :: SeverityDescription
pattern SeverityDescription_Medium = SeverityDescription' "Medium"

{-# COMPLETE
  SeverityDescription_High,
  SeverityDescription_Low,
  SeverityDescription_Medium,
  SeverityDescription'
  #-}
