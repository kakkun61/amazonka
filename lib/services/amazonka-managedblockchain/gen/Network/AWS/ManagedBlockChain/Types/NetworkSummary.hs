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
-- Module      : Network.AWS.ManagedBlockChain.Types.NetworkSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.NetworkSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.Framework
import Network.AWS.ManagedBlockChain.Types.NetworkStatus
import qualified Network.AWS.Prelude as Prelude

-- | A summary of network configuration properties.
--
-- /See:/ 'newNetworkSummary' smart constructor.
data NetworkSummary = NetworkSummary'
  { -- | The current status of the network.
    status :: Prelude.Maybe NetworkStatus,
    -- | The blockchain framework that the network uses.
    framework :: Prelude.Maybe Framework,
    -- | The Amazon Resource Name (ARN) of the network. For more information
    -- about ARNs and their format, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The version of the blockchain framework that the network uses.
    frameworkVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the network.
    name :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the network.
    id :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the network was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | An optional description of the network.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'networkSummary_status' - The current status of the network.
--
-- 'framework', 'networkSummary_framework' - The blockchain framework that the network uses.
--
-- 'arn', 'networkSummary_arn' - The Amazon Resource Name (ARN) of the network. For more information
-- about ARNs and their format, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'frameworkVersion', 'networkSummary_frameworkVersion' - The version of the blockchain framework that the network uses.
--
-- 'name', 'networkSummary_name' - The name of the network.
--
-- 'id', 'networkSummary_id' - The unique identifier of the network.
--
-- 'creationDate', 'networkSummary_creationDate' - The date and time that the network was created.
--
-- 'description', 'networkSummary_description' - An optional description of the network.
newNetworkSummary ::
  NetworkSummary
newNetworkSummary =
  NetworkSummary'
    { status = Prelude.Nothing,
      framework = Prelude.Nothing,
      arn = Prelude.Nothing,
      frameworkVersion = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The current status of the network.
networkSummary_status :: Lens.Lens' NetworkSummary (Prelude.Maybe NetworkStatus)
networkSummary_status = Lens.lens (\NetworkSummary' {status} -> status) (\s@NetworkSummary' {} a -> s {status = a} :: NetworkSummary)

-- | The blockchain framework that the network uses.
networkSummary_framework :: Lens.Lens' NetworkSummary (Prelude.Maybe Framework)
networkSummary_framework = Lens.lens (\NetworkSummary' {framework} -> framework) (\s@NetworkSummary' {} a -> s {framework = a} :: NetworkSummary)

-- | The Amazon Resource Name (ARN) of the network. For more information
-- about ARNs and their format, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
networkSummary_arn :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.Text)
networkSummary_arn = Lens.lens (\NetworkSummary' {arn} -> arn) (\s@NetworkSummary' {} a -> s {arn = a} :: NetworkSummary)

-- | The version of the blockchain framework that the network uses.
networkSummary_frameworkVersion :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.Text)
networkSummary_frameworkVersion = Lens.lens (\NetworkSummary' {frameworkVersion} -> frameworkVersion) (\s@NetworkSummary' {} a -> s {frameworkVersion = a} :: NetworkSummary)

-- | The name of the network.
networkSummary_name :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.Text)
networkSummary_name = Lens.lens (\NetworkSummary' {name} -> name) (\s@NetworkSummary' {} a -> s {name = a} :: NetworkSummary)

-- | The unique identifier of the network.
networkSummary_id :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.Text)
networkSummary_id = Lens.lens (\NetworkSummary' {id} -> id) (\s@NetworkSummary' {} a -> s {id = a} :: NetworkSummary)

-- | The date and time that the network was created.
networkSummary_creationDate :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.UTCTime)
networkSummary_creationDate = Lens.lens (\NetworkSummary' {creationDate} -> creationDate) (\s@NetworkSummary' {} a -> s {creationDate = a} :: NetworkSummary) Prelude.. Lens.mapping Core._Time

-- | An optional description of the network.
networkSummary_description :: Lens.Lens' NetworkSummary (Prelude.Maybe Prelude.Text)
networkSummary_description = Lens.lens (\NetworkSummary' {description} -> description) (\s@NetworkSummary' {} a -> s {description = a} :: NetworkSummary)

instance Core.FromJSON NetworkSummary where
  parseJSON =
    Core.withObject
      "NetworkSummary"
      ( \x ->
          NetworkSummary'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Framework")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "FrameworkVersion")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "CreationDate")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable NetworkSummary

instance Prelude.NFData NetworkSummary
