{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.ListDomainNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name of all Elasticsearch domains owned by the current
-- user\'s account.
module Network.AWS.ElasticSearch.ListDomainNames
  ( -- * Creating a Request
    ListDomainNames (..),
    newListDomainNames,

    -- * Request Lenses
    listDomainNames_engineType,

    -- * Destructuring the Response
    ListDomainNamesResponse (..),
    newListDomainNamesResponse,

    -- * Response Lenses
    listDomainNamesResponse_domainNames,
    listDomainNamesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ListDomainNames@ operation.
--
-- /See:/ 'newListDomainNames' smart constructor.
data ListDomainNames = ListDomainNames'
  { -- | Optional parameter to filter the output by domain engine type.
    -- Acceptable values are \'Elasticsearch\' and \'OpenSearch\'.
    engineType :: Prelude.Maybe EngineType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDomainNames' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineType', 'listDomainNames_engineType' - Optional parameter to filter the output by domain engine type.
-- Acceptable values are \'Elasticsearch\' and \'OpenSearch\'.
newListDomainNames ::
  ListDomainNames
newListDomainNames =
  ListDomainNames' {engineType = Prelude.Nothing}

-- | Optional parameter to filter the output by domain engine type.
-- Acceptable values are \'Elasticsearch\' and \'OpenSearch\'.
listDomainNames_engineType :: Lens.Lens' ListDomainNames (Prelude.Maybe EngineType)
listDomainNames_engineType = Lens.lens (\ListDomainNames' {engineType} -> engineType) (\s@ListDomainNames' {} a -> s {engineType = a} :: ListDomainNames)

instance Core.AWSRequest ListDomainNames where
  type
    AWSResponse ListDomainNames =
      ListDomainNamesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDomainNamesResponse'
            Prelude.<$> (x Core..?> "DomainNames" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDomainNames

instance Prelude.NFData ListDomainNames

instance Core.ToHeaders ListDomainNames where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListDomainNames where
  toPath = Prelude.const "/2015-01-01/domain"

instance Core.ToQuery ListDomainNames where
  toQuery ListDomainNames' {..} =
    Prelude.mconcat ["engineType" Core.=: engineType]

-- | The result of a @ListDomainNames@ operation. Contains the names of all
-- domains owned by this account and their respective engine types.
--
-- /See:/ 'newListDomainNamesResponse' smart constructor.
data ListDomainNamesResponse = ListDomainNamesResponse'
  { -- | List of domain names and respective engine types.
    domainNames :: Prelude.Maybe [DomainInfo],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDomainNamesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNames', 'listDomainNamesResponse_domainNames' - List of domain names and respective engine types.
--
-- 'httpStatus', 'listDomainNamesResponse_httpStatus' - The response's http status code.
newListDomainNamesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDomainNamesResponse
newListDomainNamesResponse pHttpStatus_ =
  ListDomainNamesResponse'
    { domainNames =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of domain names and respective engine types.
listDomainNamesResponse_domainNames :: Lens.Lens' ListDomainNamesResponse (Prelude.Maybe [DomainInfo])
listDomainNamesResponse_domainNames = Lens.lens (\ListDomainNamesResponse' {domainNames} -> domainNames) (\s@ListDomainNamesResponse' {} a -> s {domainNames = a} :: ListDomainNamesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDomainNamesResponse_httpStatus :: Lens.Lens' ListDomainNamesResponse Prelude.Int
listDomainNamesResponse_httpStatus = Lens.lens (\ListDomainNamesResponse' {httpStatus} -> httpStatus) (\s@ListDomainNamesResponse' {} a -> s {httpStatus = a} :: ListDomainNamesResponse)

instance Prelude.NFData ListDomainNamesResponse
