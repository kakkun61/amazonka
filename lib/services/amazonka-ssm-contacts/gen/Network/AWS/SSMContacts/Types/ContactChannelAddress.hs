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
-- Module      : Network.AWS.SSMContacts.Types.ContactChannelAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMContacts.Types.ContactChannelAddress where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details that Incident Manager uses when trying to engage the contact
-- channel.
--
-- /See:/ 'newContactChannelAddress' smart constructor.
data ContactChannelAddress = ContactChannelAddress'
  { -- | The format is dependent on the type of the contact channel. The
    -- following are the expected formats:
    --
    -- -   SMS - \'+\' followed by the country code and phone number
    --
    -- -   VOICE - \'+\' followed by the country code and phone number
    --
    -- -   EMAIL - any standard email format
    simpleAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContactChannelAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'simpleAddress', 'contactChannelAddress_simpleAddress' - The format is dependent on the type of the contact channel. The
-- following are the expected formats:
--
-- -   SMS - \'+\' followed by the country code and phone number
--
-- -   VOICE - \'+\' followed by the country code and phone number
--
-- -   EMAIL - any standard email format
newContactChannelAddress ::
  ContactChannelAddress
newContactChannelAddress =
  ContactChannelAddress'
    { simpleAddress =
        Prelude.Nothing
    }

-- | The format is dependent on the type of the contact channel. The
-- following are the expected formats:
--
-- -   SMS - \'+\' followed by the country code and phone number
--
-- -   VOICE - \'+\' followed by the country code and phone number
--
-- -   EMAIL - any standard email format
contactChannelAddress_simpleAddress :: Lens.Lens' ContactChannelAddress (Prelude.Maybe Prelude.Text)
contactChannelAddress_simpleAddress = Lens.lens (\ContactChannelAddress' {simpleAddress} -> simpleAddress) (\s@ContactChannelAddress' {} a -> s {simpleAddress = a} :: ContactChannelAddress)

instance Core.FromJSON ContactChannelAddress where
  parseJSON =
    Core.withObject
      "ContactChannelAddress"
      ( \x ->
          ContactChannelAddress'
            Prelude.<$> (x Core..:? "SimpleAddress")
      )

instance Prelude.Hashable ContactChannelAddress

instance Prelude.NFData ContactChannelAddress

instance Core.ToJSON ContactChannelAddress where
  toJSON ContactChannelAddress' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SimpleAddress" Core..=)
              Prelude.<$> simpleAddress
          ]
      )
