{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBV2.Types.HttpRequestMethodConditionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBV2.Types.HttpRequestMethodConditionConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an HTTP method condition.
--
-- HTTP defines a set of request methods, also referred to as HTTP verbs.
-- For more information, see the
-- <https://www.iana.org/assignments/http-methods/http-methods.xhtml HTTP Method Registry>.
-- You can also define custom HTTP methods.
--
-- /See:/ 'newHttpRequestMethodConditionConfig' smart constructor.
data HttpRequestMethodConditionConfig = HttpRequestMethodConditionConfig'
  { -- | The name of the request method. The maximum size is 40 characters. The
    -- allowed characters are A-Z, hyphen (-), and underscore (_). The
    -- comparison is case sensitive. Wildcards are not supported; therefore,
    -- the method name must be an exact match.
    --
    -- If you specify multiple strings, the condition is satisfied if one of
    -- the strings matches the HTTP request method. We recommend that you route
    -- GET and HEAD requests in the same way, because the response to a HEAD
    -- request may be cached.
    values :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HttpRequestMethodConditionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'httpRequestMethodConditionConfig_values' - The name of the request method. The maximum size is 40 characters. The
-- allowed characters are A-Z, hyphen (-), and underscore (_). The
-- comparison is case sensitive. Wildcards are not supported; therefore,
-- the method name must be an exact match.
--
-- If you specify multiple strings, the condition is satisfied if one of
-- the strings matches the HTTP request method. We recommend that you route
-- GET and HEAD requests in the same way, because the response to a HEAD
-- request may be cached.
newHttpRequestMethodConditionConfig ::
  HttpRequestMethodConditionConfig
newHttpRequestMethodConditionConfig =
  HttpRequestMethodConditionConfig'
    { values =
        Prelude.Nothing
    }

-- | The name of the request method. The maximum size is 40 characters. The
-- allowed characters are A-Z, hyphen (-), and underscore (_). The
-- comparison is case sensitive. Wildcards are not supported; therefore,
-- the method name must be an exact match.
--
-- If you specify multiple strings, the condition is satisfied if one of
-- the strings matches the HTTP request method. We recommend that you route
-- GET and HEAD requests in the same way, because the response to a HEAD
-- request may be cached.
httpRequestMethodConditionConfig_values :: Lens.Lens' HttpRequestMethodConditionConfig (Prelude.Maybe [Prelude.Text])
httpRequestMethodConditionConfig_values = Lens.lens (\HttpRequestMethodConditionConfig' {values} -> values) (\s@HttpRequestMethodConditionConfig' {} a -> s {values = a} :: HttpRequestMethodConditionConfig) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromXML
    HttpRequestMethodConditionConfig
  where
  parseXML x =
    HttpRequestMethodConditionConfig'
      Prelude.<$> ( x Core..@? "Values" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )

instance
  Prelude.Hashable
    HttpRequestMethodConditionConfig

instance
  Prelude.NFData
    HttpRequestMethodConditionConfig

instance
  Core.ToQuery
    HttpRequestMethodConditionConfig
  where
  toQuery HttpRequestMethodConditionConfig' {..} =
    Prelude.mconcat
      [ "Values"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> values)
      ]
