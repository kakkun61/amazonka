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
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.NamespaceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53AutoNaming.Types.DnsProperties
import Network.AWS.Route53AutoNaming.Types.HttpProperties

-- | A complex type that contains information that\'s specific to the
-- namespace type.
--
-- /See:/ 'newNamespaceProperties' smart constructor.
data NamespaceProperties = NamespaceProperties'
  { -- | A complex type that contains the ID for the Route 53 hosted zone that
    -- Cloud Map creates when you create a namespace.
    dnsProperties :: Prelude.Maybe DnsProperties,
    -- | A complex type that contains the name of an HTTP namespace.
    httpProperties :: Prelude.Maybe HttpProperties
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NamespaceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnsProperties', 'namespaceProperties_dnsProperties' - A complex type that contains the ID for the Route 53 hosted zone that
-- Cloud Map creates when you create a namespace.
--
-- 'httpProperties', 'namespaceProperties_httpProperties' - A complex type that contains the name of an HTTP namespace.
newNamespaceProperties ::
  NamespaceProperties
newNamespaceProperties =
  NamespaceProperties'
    { dnsProperties =
        Prelude.Nothing,
      httpProperties = Prelude.Nothing
    }

-- | A complex type that contains the ID for the Route 53 hosted zone that
-- Cloud Map creates when you create a namespace.
namespaceProperties_dnsProperties :: Lens.Lens' NamespaceProperties (Prelude.Maybe DnsProperties)
namespaceProperties_dnsProperties = Lens.lens (\NamespaceProperties' {dnsProperties} -> dnsProperties) (\s@NamespaceProperties' {} a -> s {dnsProperties = a} :: NamespaceProperties)

-- | A complex type that contains the name of an HTTP namespace.
namespaceProperties_httpProperties :: Lens.Lens' NamespaceProperties (Prelude.Maybe HttpProperties)
namespaceProperties_httpProperties = Lens.lens (\NamespaceProperties' {httpProperties} -> httpProperties) (\s@NamespaceProperties' {} a -> s {httpProperties = a} :: NamespaceProperties)

instance Core.FromJSON NamespaceProperties where
  parseJSON =
    Core.withObject
      "NamespaceProperties"
      ( \x ->
          NamespaceProperties'
            Prelude.<$> (x Core..:? "DnsProperties")
            Prelude.<*> (x Core..:? "HttpProperties")
      )

instance Prelude.Hashable NamespaceProperties

instance Prelude.NFData NamespaceProperties
