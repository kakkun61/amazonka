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
-- Module      : Network.AWS.GameLift.Types.Alias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.Alias where

import qualified Network.AWS.Core as Core
import Network.AWS.GameLift.Types.RoutingStrategy
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Properties that describe an alias resource.
--
-- __Related actions__
--
-- CreateAlias | ListAliases | DescribeAlias | UpdateAlias | DeleteAlias |
-- ResolveAlias |
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets All APIs by task>
--
-- /See:/ 'newAlias' smart constructor.
data Alias = Alias'
  { -- | A time stamp indicating when this data object was created. Format is a
    -- number expressed in Unix time as milliseconds (for example
    -- @\"1469498468.057\"@).
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The time that this data object was last modified. Format is a number
    -- expressed in Unix time as milliseconds (for example
    -- @\"1469498468.057\"@).
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | A unique identifier for the alias. Alias IDs are unique within a Region.
    aliasId :: Prelude.Maybe Prelude.Text,
    -- | The routing configuration, including routing type and fleet target, for
    -- the alias.
    routingStrategy :: Prelude.Maybe RoutingStrategy,
    -- | A descriptive label that is associated with an alias. Alias names do not
    -- need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
    -- that is assigned to a GameLift alias resource and uniquely identifies
    -- it. ARNs are unique across all Regions. Format is
    -- @arn:aws:gamelift:\<region>::alias\/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
    -- In a GameLift alias ARN, the resource ID matches the alias ID value.
    aliasArn :: Prelude.Maybe Prelude.Text,
    -- | A human-readable description of an alias.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Alias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'alias_creationTime' - A time stamp indicating when this data object was created. Format is a
-- number expressed in Unix time as milliseconds (for example
-- @\"1469498468.057\"@).
--
-- 'lastUpdatedTime', 'alias_lastUpdatedTime' - The time that this data object was last modified. Format is a number
-- expressed in Unix time as milliseconds (for example
-- @\"1469498468.057\"@).
--
-- 'aliasId', 'alias_aliasId' - A unique identifier for the alias. Alias IDs are unique within a Region.
--
-- 'routingStrategy', 'alias_routingStrategy' - The routing configuration, including routing type and fleet target, for
-- the alias.
--
-- 'name', 'alias_name' - A descriptive label that is associated with an alias. Alias names do not
-- need to be unique.
--
-- 'aliasArn', 'alias_aliasArn' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift alias resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::alias\/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
-- In a GameLift alias ARN, the resource ID matches the alias ID value.
--
-- 'description', 'alias_description' - A human-readable description of an alias.
newAlias ::
  Alias
newAlias =
  Alias'
    { creationTime = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      aliasId = Prelude.Nothing,
      routingStrategy = Prelude.Nothing,
      name = Prelude.Nothing,
      aliasArn = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | A time stamp indicating when this data object was created. Format is a
-- number expressed in Unix time as milliseconds (for example
-- @\"1469498468.057\"@).
alias_creationTime :: Lens.Lens' Alias (Prelude.Maybe Prelude.UTCTime)
alias_creationTime = Lens.lens (\Alias' {creationTime} -> creationTime) (\s@Alias' {} a -> s {creationTime = a} :: Alias) Prelude.. Lens.mapping Core._Time

-- | The time that this data object was last modified. Format is a number
-- expressed in Unix time as milliseconds (for example
-- @\"1469498468.057\"@).
alias_lastUpdatedTime :: Lens.Lens' Alias (Prelude.Maybe Prelude.UTCTime)
alias_lastUpdatedTime = Lens.lens (\Alias' {lastUpdatedTime} -> lastUpdatedTime) (\s@Alias' {} a -> s {lastUpdatedTime = a} :: Alias) Prelude.. Lens.mapping Core._Time

-- | A unique identifier for the alias. Alias IDs are unique within a Region.
alias_aliasId :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_aliasId = Lens.lens (\Alias' {aliasId} -> aliasId) (\s@Alias' {} a -> s {aliasId = a} :: Alias)

-- | The routing configuration, including routing type and fleet target, for
-- the alias.
alias_routingStrategy :: Lens.Lens' Alias (Prelude.Maybe RoutingStrategy)
alias_routingStrategy = Lens.lens (\Alias' {routingStrategy} -> routingStrategy) (\s@Alias' {} a -> s {routingStrategy = a} :: Alias)

-- | A descriptive label that is associated with an alias. Alias names do not
-- need to be unique.
alias_name :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_name = Lens.lens (\Alias' {name} -> name) (\s@Alias' {} a -> s {name = a} :: Alias)

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift alias resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::alias\/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
-- In a GameLift alias ARN, the resource ID matches the alias ID value.
alias_aliasArn :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_aliasArn = Lens.lens (\Alias' {aliasArn} -> aliasArn) (\s@Alias' {} a -> s {aliasArn = a} :: Alias)

-- | A human-readable description of an alias.
alias_description :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_description = Lens.lens (\Alias' {description} -> description) (\s@Alias' {} a -> s {description = a} :: Alias)

instance Core.FromJSON Alias where
  parseJSON =
    Core.withObject
      "Alias"
      ( \x ->
          Alias'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "LastUpdatedTime")
            Prelude.<*> (x Core..:? "AliasId")
            Prelude.<*> (x Core..:? "RoutingStrategy")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "AliasArn")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable Alias

instance Prelude.NFData Alias
