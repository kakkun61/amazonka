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
-- Module      : Network.AWS.Kafka.Types.StateInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.StateInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newStateInfo' smart constructor.
data StateInfo = StateInfo'
  { code :: Prelude.Maybe Prelude.Text,
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StateInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'code', 'stateInfo_code' - Undocumented member.
--
-- 'message', 'stateInfo_message' - Undocumented member.
newStateInfo ::
  StateInfo
newStateInfo =
  StateInfo'
    { code = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | Undocumented member.
stateInfo_code :: Lens.Lens' StateInfo (Prelude.Maybe Prelude.Text)
stateInfo_code = Lens.lens (\StateInfo' {code} -> code) (\s@StateInfo' {} a -> s {code = a} :: StateInfo)

-- | Undocumented member.
stateInfo_message :: Lens.Lens' StateInfo (Prelude.Maybe Prelude.Text)
stateInfo_message = Lens.lens (\StateInfo' {message} -> message) (\s@StateInfo' {} a -> s {message = a} :: StateInfo)

instance Core.FromJSON StateInfo where
  parseJSON =
    Core.withObject
      "StateInfo"
      ( \x ->
          StateInfo'
            Prelude.<$> (x Core..:? "code")
            Prelude.<*> (x Core..:? "message")
      )

instance Prelude.Hashable StateInfo

instance Prelude.NFData StateInfo
