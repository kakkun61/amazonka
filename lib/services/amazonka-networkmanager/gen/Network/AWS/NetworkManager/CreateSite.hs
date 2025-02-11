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
-- Module      : Network.AWS.NetworkManager.CreateSite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new site in a global network.
module Network.AWS.NetworkManager.CreateSite
  ( -- * Creating a Request
    CreateSite (..),
    newCreateSite,

    -- * Request Lenses
    createSite_location,
    createSite_description,
    createSite_tags,
    createSite_globalNetworkId,

    -- * Destructuring the Response
    CreateSiteResponse (..),
    newCreateSiteResponse,

    -- * Response Lenses
    createSiteResponse_site,
    createSiteResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateSite' smart constructor.
data CreateSite = CreateSite'
  { -- | The site location. This information is used for visualization in the
    -- Network Manager console. If you specify the address, the latitude and
    -- longitude are automatically calculated.
    --
    -- -   @Address@: The physical address of the site.
    --
    -- -   @Latitude@: The latitude of the site.
    --
    -- -   @Longitude@: The longitude of the site.
    location :: Prelude.Maybe (Core.Sensitive Location),
    -- | A description of your site.
    --
    -- Length Constraints: Maximum length of 256 characters.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags to apply to the resource during creation.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'location', 'createSite_location' - The site location. This information is used for visualization in the
-- Network Manager console. If you specify the address, the latitude and
-- longitude are automatically calculated.
--
-- -   @Address@: The physical address of the site.
--
-- -   @Latitude@: The latitude of the site.
--
-- -   @Longitude@: The longitude of the site.
--
-- 'description', 'createSite_description' - A description of your site.
--
-- Length Constraints: Maximum length of 256 characters.
--
-- 'tags', 'createSite_tags' - The tags to apply to the resource during creation.
--
-- 'globalNetworkId', 'createSite_globalNetworkId' - The ID of the global network.
newCreateSite ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  CreateSite
newCreateSite pGlobalNetworkId_ =
  CreateSite'
    { location = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_
    }

-- | The site location. This information is used for visualization in the
-- Network Manager console. If you specify the address, the latitude and
-- longitude are automatically calculated.
--
-- -   @Address@: The physical address of the site.
--
-- -   @Latitude@: The latitude of the site.
--
-- -   @Longitude@: The longitude of the site.
createSite_location :: Lens.Lens' CreateSite (Prelude.Maybe Location)
createSite_location = Lens.lens (\CreateSite' {location} -> location) (\s@CreateSite' {} a -> s {location = a} :: CreateSite) Prelude.. Lens.mapping Core._Sensitive

-- | A description of your site.
--
-- Length Constraints: Maximum length of 256 characters.
createSite_description :: Lens.Lens' CreateSite (Prelude.Maybe Prelude.Text)
createSite_description = Lens.lens (\CreateSite' {description} -> description) (\s@CreateSite' {} a -> s {description = a} :: CreateSite)

-- | The tags to apply to the resource during creation.
createSite_tags :: Lens.Lens' CreateSite (Prelude.Maybe [Tag])
createSite_tags = Lens.lens (\CreateSite' {tags} -> tags) (\s@CreateSite' {} a -> s {tags = a} :: CreateSite) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the global network.
createSite_globalNetworkId :: Lens.Lens' CreateSite Prelude.Text
createSite_globalNetworkId = Lens.lens (\CreateSite' {globalNetworkId} -> globalNetworkId) (\s@CreateSite' {} a -> s {globalNetworkId = a} :: CreateSite)

instance Core.AWSRequest CreateSite where
  type AWSResponse CreateSite = CreateSiteResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSiteResponse'
            Prelude.<$> (x Core..?> "Site")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSite

instance Prelude.NFData CreateSite

instance Core.ToHeaders CreateSite where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSite where
  toJSON CreateSite' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Location" Core..=) Prelude.<$> location,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags
          ]
      )

instance Core.ToPath CreateSite where
  toPath CreateSite' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/sites"
      ]

instance Core.ToQuery CreateSite where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSiteResponse' smart constructor.
data CreateSiteResponse = CreateSiteResponse'
  { -- | Information about the site.
    site :: Prelude.Maybe Site,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSiteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'site', 'createSiteResponse_site' - Information about the site.
--
-- 'httpStatus', 'createSiteResponse_httpStatus' - The response's http status code.
newCreateSiteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSiteResponse
newCreateSiteResponse pHttpStatus_ =
  CreateSiteResponse'
    { site = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the site.
createSiteResponse_site :: Lens.Lens' CreateSiteResponse (Prelude.Maybe Site)
createSiteResponse_site = Lens.lens (\CreateSiteResponse' {site} -> site) (\s@CreateSiteResponse' {} a -> s {site = a} :: CreateSiteResponse)

-- | The response's http status code.
createSiteResponse_httpStatus :: Lens.Lens' CreateSiteResponse Prelude.Int
createSiteResponse_httpStatus = Lens.lens (\CreateSiteResponse' {httpStatus} -> httpStatus) (\s@CreateSiteResponse' {} a -> s {httpStatus = a} :: CreateSiteResponse)

instance Prelude.NFData CreateSiteResponse
