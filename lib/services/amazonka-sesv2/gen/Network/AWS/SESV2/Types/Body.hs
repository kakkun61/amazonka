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
-- Module      : Network.AWS.SESV2.Types.Body
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SESV2.Types.Body where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SESV2.Types.Content

-- | Represents the body of the email message.
--
-- /See:/ 'newBody' smart constructor.
data Body = Body'
  { -- | An object that represents the version of the message that is displayed
    -- in email clients that don\'t support HTML, or clients where the
    -- recipient has disabled HTML rendering.
    text :: Prelude.Maybe Content,
    -- | An object that represents the version of the message that is displayed
    -- in email clients that support HTML. HTML messages can include formatted
    -- text, hyperlinks, images, and more.
    html :: Prelude.Maybe Content
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Body' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'body_text' - An object that represents the version of the message that is displayed
-- in email clients that don\'t support HTML, or clients where the
-- recipient has disabled HTML rendering.
--
-- 'html', 'body_html' - An object that represents the version of the message that is displayed
-- in email clients that support HTML. HTML messages can include formatted
-- text, hyperlinks, images, and more.
newBody ::
  Body
newBody =
  Body'
    { text = Prelude.Nothing,
      html = Prelude.Nothing
    }

-- | An object that represents the version of the message that is displayed
-- in email clients that don\'t support HTML, or clients where the
-- recipient has disabled HTML rendering.
body_text :: Lens.Lens' Body (Prelude.Maybe Content)
body_text = Lens.lens (\Body' {text} -> text) (\s@Body' {} a -> s {text = a} :: Body)

-- | An object that represents the version of the message that is displayed
-- in email clients that support HTML. HTML messages can include formatted
-- text, hyperlinks, images, and more.
body_html :: Lens.Lens' Body (Prelude.Maybe Content)
body_html = Lens.lens (\Body' {html} -> html) (\s@Body' {} a -> s {html = a} :: Body)

instance Prelude.Hashable Body

instance Prelude.NFData Body

instance Core.ToJSON Body where
  toJSON Body' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Text" Core..=) Prelude.<$> text,
            ("Html" Core..=) Prelude.<$> html
          ]
      )
