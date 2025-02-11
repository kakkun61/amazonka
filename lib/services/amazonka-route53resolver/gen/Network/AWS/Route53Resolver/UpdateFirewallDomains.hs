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
-- Module      : Network.AWS.Route53Resolver.UpdateFirewallDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the firewall domain list from an array of domain specifications.
module Network.AWS.Route53Resolver.UpdateFirewallDomains
  ( -- * Creating a Request
    UpdateFirewallDomains (..),
    newUpdateFirewallDomains,

    -- * Request Lenses
    updateFirewallDomains_firewallDomainListId,
    updateFirewallDomains_operation,
    updateFirewallDomains_domains,

    -- * Destructuring the Response
    UpdateFirewallDomainsResponse (..),
    newUpdateFirewallDomainsResponse,

    -- * Response Lenses
    updateFirewallDomainsResponse_status,
    updateFirewallDomainsResponse_statusMessage,
    updateFirewallDomainsResponse_name,
    updateFirewallDomainsResponse_id,
    updateFirewallDomainsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newUpdateFirewallDomains' smart constructor.
data UpdateFirewallDomains = UpdateFirewallDomains'
  { -- | The ID of the domain list whose domains you want to update.
    firewallDomainListId :: Prelude.Text,
    -- | What you want DNS Firewall to do with the domains that you are
    -- providing:
    --
    -- -   @ADD@ - Add the domains to the ones that are already in the domain
    --     list.
    --
    -- -   @REMOVE@ - Search the domain list for the domains and remove them
    --     from the list.
    --
    -- -   @REPLACE@ - Update the domain list to exactly match the list that
    --     you are providing.
    operation :: FirewallDomainUpdateOperation,
    -- | A list of domains to use in the update operation.
    --
    -- Each domain specification in your domain list must satisfy the following
    -- requirements:
    --
    -- -   It can optionally start with @*@ (asterisk).
    --
    -- -   With the exception of the optional starting asterisk, it must only
    --     contain the following characters: @A-Z@, @a-z@, @0-9@, @-@ (hyphen).
    --
    -- -   It must be from 1-255 characters in length.
    domains :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallDomains' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallDomainListId', 'updateFirewallDomains_firewallDomainListId' - The ID of the domain list whose domains you want to update.
--
-- 'operation', 'updateFirewallDomains_operation' - What you want DNS Firewall to do with the domains that you are
-- providing:
--
-- -   @ADD@ - Add the domains to the ones that are already in the domain
--     list.
--
-- -   @REMOVE@ - Search the domain list for the domains and remove them
--     from the list.
--
-- -   @REPLACE@ - Update the domain list to exactly match the list that
--     you are providing.
--
-- 'domains', 'updateFirewallDomains_domains' - A list of domains to use in the update operation.
--
-- Each domain specification in your domain list must satisfy the following
-- requirements:
--
-- -   It can optionally start with @*@ (asterisk).
--
-- -   With the exception of the optional starting asterisk, it must only
--     contain the following characters: @A-Z@, @a-z@, @0-9@, @-@ (hyphen).
--
-- -   It must be from 1-255 characters in length.
newUpdateFirewallDomains ::
  -- | 'firewallDomainListId'
  Prelude.Text ->
  -- | 'operation'
  FirewallDomainUpdateOperation ->
  UpdateFirewallDomains
newUpdateFirewallDomains
  pFirewallDomainListId_
  pOperation_ =
    UpdateFirewallDomains'
      { firewallDomainListId =
          pFirewallDomainListId_,
        operation = pOperation_,
        domains = Prelude.mempty
      }

-- | The ID of the domain list whose domains you want to update.
updateFirewallDomains_firewallDomainListId :: Lens.Lens' UpdateFirewallDomains Prelude.Text
updateFirewallDomains_firewallDomainListId = Lens.lens (\UpdateFirewallDomains' {firewallDomainListId} -> firewallDomainListId) (\s@UpdateFirewallDomains' {} a -> s {firewallDomainListId = a} :: UpdateFirewallDomains)

-- | What you want DNS Firewall to do with the domains that you are
-- providing:
--
-- -   @ADD@ - Add the domains to the ones that are already in the domain
--     list.
--
-- -   @REMOVE@ - Search the domain list for the domains and remove them
--     from the list.
--
-- -   @REPLACE@ - Update the domain list to exactly match the list that
--     you are providing.
updateFirewallDomains_operation :: Lens.Lens' UpdateFirewallDomains FirewallDomainUpdateOperation
updateFirewallDomains_operation = Lens.lens (\UpdateFirewallDomains' {operation} -> operation) (\s@UpdateFirewallDomains' {} a -> s {operation = a} :: UpdateFirewallDomains)

-- | A list of domains to use in the update operation.
--
-- Each domain specification in your domain list must satisfy the following
-- requirements:
--
-- -   It can optionally start with @*@ (asterisk).
--
-- -   With the exception of the optional starting asterisk, it must only
--     contain the following characters: @A-Z@, @a-z@, @0-9@, @-@ (hyphen).
--
-- -   It must be from 1-255 characters in length.
updateFirewallDomains_domains :: Lens.Lens' UpdateFirewallDomains [Prelude.Text]
updateFirewallDomains_domains = Lens.lens (\UpdateFirewallDomains' {domains} -> domains) (\s@UpdateFirewallDomains' {} a -> s {domains = a} :: UpdateFirewallDomains) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateFirewallDomains where
  type
    AWSResponse UpdateFirewallDomains =
      UpdateFirewallDomainsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFirewallDomainsResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "StatusMessage")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFirewallDomains

instance Prelude.NFData UpdateFirewallDomains

instance Core.ToHeaders UpdateFirewallDomains where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.UpdateFirewallDomains" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFirewallDomains where
  toJSON UpdateFirewallDomains' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "FirewallDomainListId"
                  Core..= firewallDomainListId
              ),
            Prelude.Just ("Operation" Core..= operation),
            Prelude.Just ("Domains" Core..= domains)
          ]
      )

instance Core.ToPath UpdateFirewallDomains where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFirewallDomains where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFirewallDomainsResponse' smart constructor.
data UpdateFirewallDomainsResponse = UpdateFirewallDomainsResponse'
  { status :: Prelude.Maybe FirewallDomainListStatus,
    -- | Additional information about the status of the list, if available.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The name of the domain list.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the firewall domain list that DNS Firewall just updated.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallDomainsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'updateFirewallDomainsResponse_status' -
--
-- 'statusMessage', 'updateFirewallDomainsResponse_statusMessage' - Additional information about the status of the list, if available.
--
-- 'name', 'updateFirewallDomainsResponse_name' - The name of the domain list.
--
-- 'id', 'updateFirewallDomainsResponse_id' - The ID of the firewall domain list that DNS Firewall just updated.
--
-- 'httpStatus', 'updateFirewallDomainsResponse_httpStatus' - The response's http status code.
newUpdateFirewallDomainsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFirewallDomainsResponse
newUpdateFirewallDomainsResponse pHttpStatus_ =
  UpdateFirewallDomainsResponse'
    { status =
        Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
updateFirewallDomainsResponse_status :: Lens.Lens' UpdateFirewallDomainsResponse (Prelude.Maybe FirewallDomainListStatus)
updateFirewallDomainsResponse_status = Lens.lens (\UpdateFirewallDomainsResponse' {status} -> status) (\s@UpdateFirewallDomainsResponse' {} a -> s {status = a} :: UpdateFirewallDomainsResponse)

-- | Additional information about the status of the list, if available.
updateFirewallDomainsResponse_statusMessage :: Lens.Lens' UpdateFirewallDomainsResponse (Prelude.Maybe Prelude.Text)
updateFirewallDomainsResponse_statusMessage = Lens.lens (\UpdateFirewallDomainsResponse' {statusMessage} -> statusMessage) (\s@UpdateFirewallDomainsResponse' {} a -> s {statusMessage = a} :: UpdateFirewallDomainsResponse)

-- | The name of the domain list.
updateFirewallDomainsResponse_name :: Lens.Lens' UpdateFirewallDomainsResponse (Prelude.Maybe Prelude.Text)
updateFirewallDomainsResponse_name = Lens.lens (\UpdateFirewallDomainsResponse' {name} -> name) (\s@UpdateFirewallDomainsResponse' {} a -> s {name = a} :: UpdateFirewallDomainsResponse)

-- | The ID of the firewall domain list that DNS Firewall just updated.
updateFirewallDomainsResponse_id :: Lens.Lens' UpdateFirewallDomainsResponse (Prelude.Maybe Prelude.Text)
updateFirewallDomainsResponse_id = Lens.lens (\UpdateFirewallDomainsResponse' {id} -> id) (\s@UpdateFirewallDomainsResponse' {} a -> s {id = a} :: UpdateFirewallDomainsResponse)

-- | The response's http status code.
updateFirewallDomainsResponse_httpStatus :: Lens.Lens' UpdateFirewallDomainsResponse Prelude.Int
updateFirewallDomainsResponse_httpStatus = Lens.lens (\UpdateFirewallDomainsResponse' {httpStatus} -> httpStatus) (\s@UpdateFirewallDomainsResponse' {} a -> s {httpStatus = a} :: UpdateFirewallDomainsResponse)

instance Prelude.NFData UpdateFirewallDomainsResponse
