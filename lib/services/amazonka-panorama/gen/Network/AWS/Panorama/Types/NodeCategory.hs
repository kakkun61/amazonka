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
-- Module      : Network.AWS.Panorama.Types.NodeCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.NodeCategory
  ( NodeCategory
      ( ..,
        NodeCategory_BUSINESS_LOGIC,
        NodeCategory_MEDIA_SINK,
        NodeCategory_MEDIA_SOURCE,
        NodeCategory_ML_MODEL
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype NodeCategory = NodeCategory'
  { fromNodeCategory ::
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

pattern NodeCategory_BUSINESS_LOGIC :: NodeCategory
pattern NodeCategory_BUSINESS_LOGIC = NodeCategory' "BUSINESS_LOGIC"

pattern NodeCategory_MEDIA_SINK :: NodeCategory
pattern NodeCategory_MEDIA_SINK = NodeCategory' "MEDIA_SINK"

pattern NodeCategory_MEDIA_SOURCE :: NodeCategory
pattern NodeCategory_MEDIA_SOURCE = NodeCategory' "MEDIA_SOURCE"

pattern NodeCategory_ML_MODEL :: NodeCategory
pattern NodeCategory_ML_MODEL = NodeCategory' "ML_MODEL"

{-# COMPLETE
  NodeCategory_BUSINESS_LOGIC,
  NodeCategory_MEDIA_SINK,
  NodeCategory_MEDIA_SOURCE,
  NodeCategory_ML_MODEL,
  NodeCategory'
  #-}
