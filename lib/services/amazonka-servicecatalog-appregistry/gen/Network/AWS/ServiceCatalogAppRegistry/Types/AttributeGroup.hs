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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.Types.AttributeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalogAppRegistry.Types.AttributeGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a Amazon Web Services Service Catalog AppRegistry attribute
-- group that is rich metadata which describes an application and its
-- components.
--
-- /See:/ 'newAttributeGroup' smart constructor.
data AttributeGroup = AttributeGroup'
  { -- | The ISO-8601 formatted timestamp of the moment the attribute group was
    -- created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon resource name (ARN) that specifies the attribute group across
    -- services.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the attribute group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The globally unique attribute group identifier of the attribute group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The ISO-8601 formatted timestamp of the moment the attribute group was
    -- last updated. This time is the same as the creationTime for a newly
    -- created attribute group.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | The description of the attribute group that the user provides.
    description :: Prelude.Maybe Prelude.Text,
    -- | Key-value pairs you can use to associate with the attribute group.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AttributeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'attributeGroup_creationTime' - The ISO-8601 formatted timestamp of the moment the attribute group was
-- created.
--
-- 'arn', 'attributeGroup_arn' - The Amazon resource name (ARN) that specifies the attribute group across
-- services.
--
-- 'name', 'attributeGroup_name' - The name of the attribute group.
--
-- 'id', 'attributeGroup_id' - The globally unique attribute group identifier of the attribute group.
--
-- 'lastUpdateTime', 'attributeGroup_lastUpdateTime' - The ISO-8601 formatted timestamp of the moment the attribute group was
-- last updated. This time is the same as the creationTime for a newly
-- created attribute group.
--
-- 'description', 'attributeGroup_description' - The description of the attribute group that the user provides.
--
-- 'tags', 'attributeGroup_tags' - Key-value pairs you can use to associate with the attribute group.
newAttributeGroup ::
  AttributeGroup
newAttributeGroup =
  AttributeGroup'
    { creationTime = Prelude.Nothing,
      arn = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The ISO-8601 formatted timestamp of the moment the attribute group was
-- created.
attributeGroup_creationTime :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.UTCTime)
attributeGroup_creationTime = Lens.lens (\AttributeGroup' {creationTime} -> creationTime) (\s@AttributeGroup' {} a -> s {creationTime = a} :: AttributeGroup) Prelude.. Lens.mapping Core._Time

-- | The Amazon resource name (ARN) that specifies the attribute group across
-- services.
attributeGroup_arn :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.Text)
attributeGroup_arn = Lens.lens (\AttributeGroup' {arn} -> arn) (\s@AttributeGroup' {} a -> s {arn = a} :: AttributeGroup)

-- | The name of the attribute group.
attributeGroup_name :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.Text)
attributeGroup_name = Lens.lens (\AttributeGroup' {name} -> name) (\s@AttributeGroup' {} a -> s {name = a} :: AttributeGroup)

-- | The globally unique attribute group identifier of the attribute group.
attributeGroup_id :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.Text)
attributeGroup_id = Lens.lens (\AttributeGroup' {id} -> id) (\s@AttributeGroup' {} a -> s {id = a} :: AttributeGroup)

-- | The ISO-8601 formatted timestamp of the moment the attribute group was
-- last updated. This time is the same as the creationTime for a newly
-- created attribute group.
attributeGroup_lastUpdateTime :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.UTCTime)
attributeGroup_lastUpdateTime = Lens.lens (\AttributeGroup' {lastUpdateTime} -> lastUpdateTime) (\s@AttributeGroup' {} a -> s {lastUpdateTime = a} :: AttributeGroup) Prelude.. Lens.mapping Core._Time

-- | The description of the attribute group that the user provides.
attributeGroup_description :: Lens.Lens' AttributeGroup (Prelude.Maybe Prelude.Text)
attributeGroup_description = Lens.lens (\AttributeGroup' {description} -> description) (\s@AttributeGroup' {} a -> s {description = a} :: AttributeGroup)

-- | Key-value pairs you can use to associate with the attribute group.
attributeGroup_tags :: Lens.Lens' AttributeGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
attributeGroup_tags = Lens.lens (\AttributeGroup' {tags} -> tags) (\s@AttributeGroup' {} a -> s {tags = a} :: AttributeGroup) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AttributeGroup where
  parseJSON =
    Core.withObject
      "AttributeGroup"
      ( \x ->
          AttributeGroup'
            Prelude.<$> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "lastUpdateTime")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AttributeGroup

instance Prelude.NFData AttributeGroup
