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
-- Module      : Network.AWS.PersonalizeEvents.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.PersonalizeEvents.Types.User where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents user metadata added to a Users dataset using the @PutUsers@
-- API. For more information see
-- <https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html Importing Users Incrementally>.
--
-- /See:/ 'newUser' smart constructor.
data User = User'
  { -- | A string map of user-specific metadata. Each element in the map consists
    -- of a key-value pair. For example, @{\"numberOfVideosWatched\": \"45\"}@.
    --
    -- The keys use camel case names that match the fields in the schema for
    -- the Users dataset. In the previous example, the @numberOfVideosWatched@
    -- matches the \'NUMBER_OF_VIDEOS_WATCHED\' field defined in the Users
    -- schema. For categorical string data, to include multiple categories for
    -- a single user, separate each category with a pipe separator (@|@). For
    -- example, @\\\"Member|Frequent shopper\\\"@.
    properties :: Prelude.Maybe Prelude.Text,
    -- | The ID associated with the user.
    userId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'User' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'properties', 'user_properties' - A string map of user-specific metadata. Each element in the map consists
-- of a key-value pair. For example, @{\"numberOfVideosWatched\": \"45\"}@.
--
-- The keys use camel case names that match the fields in the schema for
-- the Users dataset. In the previous example, the @numberOfVideosWatched@
-- matches the \'NUMBER_OF_VIDEOS_WATCHED\' field defined in the Users
-- schema. For categorical string data, to include multiple categories for
-- a single user, separate each category with a pipe separator (@|@). For
-- example, @\\\"Member|Frequent shopper\\\"@.
--
-- 'userId', 'user_userId' - The ID associated with the user.
newUser ::
  -- | 'userId'
  Prelude.Text ->
  User
newUser pUserId_ =
  User'
    { properties = Prelude.Nothing,
      userId = pUserId_
    }

-- | A string map of user-specific metadata. Each element in the map consists
-- of a key-value pair. For example, @{\"numberOfVideosWatched\": \"45\"}@.
--
-- The keys use camel case names that match the fields in the schema for
-- the Users dataset. In the previous example, the @numberOfVideosWatched@
-- matches the \'NUMBER_OF_VIDEOS_WATCHED\' field defined in the Users
-- schema. For categorical string data, to include multiple categories for
-- a single user, separate each category with a pipe separator (@|@). For
-- example, @\\\"Member|Frequent shopper\\\"@.
user_properties :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_properties = Lens.lens (\User' {properties} -> properties) (\s@User' {} a -> s {properties = a} :: User)

-- | The ID associated with the user.
user_userId :: Lens.Lens' User Prelude.Text
user_userId = Lens.lens (\User' {userId} -> userId) (\s@User' {} a -> s {userId = a} :: User)

instance Prelude.Hashable User

instance Prelude.NFData User

instance Core.ToJSON User where
  toJSON User' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("properties" Core..=) Prelude.<$> properties,
            Prelude.Just ("userId" Core..= userId)
          ]
      )
