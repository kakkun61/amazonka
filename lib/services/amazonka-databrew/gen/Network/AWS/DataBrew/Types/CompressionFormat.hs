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
-- Module      : Network.AWS.DataBrew.Types.CompressionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.CompressionFormat
  ( CompressionFormat
      ( ..,
        CompressionFormat_BROTLI,
        CompressionFormat_BZIP2,
        CompressionFormat_DEFLATE,
        CompressionFormat_GZIP,
        CompressionFormat_LZ4,
        CompressionFormat_LZO,
        CompressionFormat_SNAPPY,
        CompressionFormat_ZLIB,
        CompressionFormat_ZSTD
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype CompressionFormat = CompressionFormat'
  { fromCompressionFormat ::
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

pattern CompressionFormat_BROTLI :: CompressionFormat
pattern CompressionFormat_BROTLI = CompressionFormat' "BROTLI"

pattern CompressionFormat_BZIP2 :: CompressionFormat
pattern CompressionFormat_BZIP2 = CompressionFormat' "BZIP2"

pattern CompressionFormat_DEFLATE :: CompressionFormat
pattern CompressionFormat_DEFLATE = CompressionFormat' "DEFLATE"

pattern CompressionFormat_GZIP :: CompressionFormat
pattern CompressionFormat_GZIP = CompressionFormat' "GZIP"

pattern CompressionFormat_LZ4 :: CompressionFormat
pattern CompressionFormat_LZ4 = CompressionFormat' "LZ4"

pattern CompressionFormat_LZO :: CompressionFormat
pattern CompressionFormat_LZO = CompressionFormat' "LZO"

pattern CompressionFormat_SNAPPY :: CompressionFormat
pattern CompressionFormat_SNAPPY = CompressionFormat' "SNAPPY"

pattern CompressionFormat_ZLIB :: CompressionFormat
pattern CompressionFormat_ZLIB = CompressionFormat' "ZLIB"

pattern CompressionFormat_ZSTD :: CompressionFormat
pattern CompressionFormat_ZSTD = CompressionFormat' "ZSTD"

{-# COMPLETE
  CompressionFormat_BROTLI,
  CompressionFormat_BZIP2,
  CompressionFormat_DEFLATE,
  CompressionFormat_GZIP,
  CompressionFormat_LZ4,
  CompressionFormat_LZO,
  CompressionFormat_SNAPPY,
  CompressionFormat_ZLIB,
  CompressionFormat_ZSTD,
  CompressionFormat'
  #-}
