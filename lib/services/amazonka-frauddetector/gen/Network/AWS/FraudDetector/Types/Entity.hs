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
-- Module      : Network.AWS.FraudDetector.Types.Entity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.Entity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The entity details.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity'
  { -- | The entity type.
    entityType :: Prelude.Text,
    -- | The entity ID. If you do not know the @entityId@, you can pass
    -- @unknown@, which is areserved string literal.
    entityId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Entity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entityType', 'entity_entityType' - The entity type.
--
-- 'entityId', 'entity_entityId' - The entity ID. If you do not know the @entityId@, you can pass
-- @unknown@, which is areserved string literal.
newEntity ::
  -- | 'entityType'
  Prelude.Text ->
  -- | 'entityId'
  Prelude.Text ->
  Entity
newEntity pEntityType_ pEntityId_ =
  Entity'
    { entityType = pEntityType_,
      entityId = pEntityId_
    }

-- | The entity type.
entity_entityType :: Lens.Lens' Entity Prelude.Text
entity_entityType = Lens.lens (\Entity' {entityType} -> entityType) (\s@Entity' {} a -> s {entityType = a} :: Entity)

-- | The entity ID. If you do not know the @entityId@, you can pass
-- @unknown@, which is areserved string literal.
entity_entityId :: Lens.Lens' Entity Prelude.Text
entity_entityId = Lens.lens (\Entity' {entityId} -> entityId) (\s@Entity' {} a -> s {entityId = a} :: Entity)

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \x ->
          Entity'
            Prelude.<$> (x Core..: "entityType")
            Prelude.<*> (x Core..: "entityId")
      )

instance Prelude.Hashable Entity

instance Prelude.NFData Entity

instance Core.ToJSON Entity where
  toJSON Entity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("entityType" Core..= entityType),
            Prelude.Just ("entityId" Core..= entityId)
          ]
      )
