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
-- Module      : Network.AWS.CustomerProfiles.Types.ListProfileObjectsItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.ListProfileObjectsItem where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A ProfileObject in a list of ProfileObjects.
--
-- /See:/ 'newListProfileObjectsItem' smart constructor.
data ListProfileObjectsItem = ListProfileObjectsItem'
  { -- | The unique identifier of the ProfileObject generated by the service.
    profileObjectUniqueKey :: Prelude.Maybe Prelude.Text,
    -- | Specifies the kind of object being added to a profile, such as
    -- \"Salesforce-Account.\"
    objectTypeName :: Prelude.Maybe Prelude.Text,
    -- | A JSON representation of a ProfileObject that belongs to a profile.
    object' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProfileObjectsItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileObjectUniqueKey', 'listProfileObjectsItem_profileObjectUniqueKey' - The unique identifier of the ProfileObject generated by the service.
--
-- 'objectTypeName', 'listProfileObjectsItem_objectTypeName' - Specifies the kind of object being added to a profile, such as
-- \"Salesforce-Account.\"
--
-- 'object'', 'listProfileObjectsItem_object' - A JSON representation of a ProfileObject that belongs to a profile.
newListProfileObjectsItem ::
  ListProfileObjectsItem
newListProfileObjectsItem =
  ListProfileObjectsItem'
    { profileObjectUniqueKey =
        Prelude.Nothing,
      objectTypeName = Prelude.Nothing,
      object' = Prelude.Nothing
    }

-- | The unique identifier of the ProfileObject generated by the service.
listProfileObjectsItem_profileObjectUniqueKey :: Lens.Lens' ListProfileObjectsItem (Prelude.Maybe Prelude.Text)
listProfileObjectsItem_profileObjectUniqueKey = Lens.lens (\ListProfileObjectsItem' {profileObjectUniqueKey} -> profileObjectUniqueKey) (\s@ListProfileObjectsItem' {} a -> s {profileObjectUniqueKey = a} :: ListProfileObjectsItem)

-- | Specifies the kind of object being added to a profile, such as
-- \"Salesforce-Account.\"
listProfileObjectsItem_objectTypeName :: Lens.Lens' ListProfileObjectsItem (Prelude.Maybe Prelude.Text)
listProfileObjectsItem_objectTypeName = Lens.lens (\ListProfileObjectsItem' {objectTypeName} -> objectTypeName) (\s@ListProfileObjectsItem' {} a -> s {objectTypeName = a} :: ListProfileObjectsItem)

-- | A JSON representation of a ProfileObject that belongs to a profile.
listProfileObjectsItem_object :: Lens.Lens' ListProfileObjectsItem (Prelude.Maybe Prelude.Text)
listProfileObjectsItem_object = Lens.lens (\ListProfileObjectsItem' {object'} -> object') (\s@ListProfileObjectsItem' {} a -> s {object' = a} :: ListProfileObjectsItem)

instance Core.FromJSON ListProfileObjectsItem where
  parseJSON =
    Core.withObject
      "ListProfileObjectsItem"
      ( \x ->
          ListProfileObjectsItem'
            Prelude.<$> (x Core..:? "ProfileObjectUniqueKey")
            Prelude.<*> (x Core..:? "ObjectTypeName")
            Prelude.<*> (x Core..:? "Object")
      )

instance Prelude.Hashable ListProfileObjectsItem

instance Prelude.NFData ListProfileObjectsItem
