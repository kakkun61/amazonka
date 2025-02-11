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
-- Module      : Network.AWS.CustomerProfiles.Types.SourceConnectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.SourceConnectorType
  ( SourceConnectorType
      ( ..,
        SourceConnectorType_Marketo,
        SourceConnectorType_S3,
        SourceConnectorType_Salesforce,
        SourceConnectorType_Servicenow,
        SourceConnectorType_Zendesk
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SourceConnectorType = SourceConnectorType'
  { fromSourceConnectorType ::
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

pattern SourceConnectorType_Marketo :: SourceConnectorType
pattern SourceConnectorType_Marketo = SourceConnectorType' "Marketo"

pattern SourceConnectorType_S3 :: SourceConnectorType
pattern SourceConnectorType_S3 = SourceConnectorType' "S3"

pattern SourceConnectorType_Salesforce :: SourceConnectorType
pattern SourceConnectorType_Salesforce = SourceConnectorType' "Salesforce"

pattern SourceConnectorType_Servicenow :: SourceConnectorType
pattern SourceConnectorType_Servicenow = SourceConnectorType' "Servicenow"

pattern SourceConnectorType_Zendesk :: SourceConnectorType
pattern SourceConnectorType_Zendesk = SourceConnectorType' "Zendesk"

{-# COMPLETE
  SourceConnectorType_Marketo,
  SourceConnectorType_S3,
  SourceConnectorType_Salesforce,
  SourceConnectorType_Servicenow,
  SourceConnectorType_Zendesk,
  SourceConnectorType'
  #-}
