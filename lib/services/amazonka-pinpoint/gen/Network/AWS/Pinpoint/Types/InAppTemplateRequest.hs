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
-- Module      : Network.AWS.Pinpoint.Types.InAppTemplateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.InAppTemplateRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.InAppMessageContent
import Network.AWS.Pinpoint.Types.Layout
import qualified Network.AWS.Prelude as Prelude

-- | InApp Template Request.
--
-- /See:/ 'newInAppTemplateRequest' smart constructor.
data InAppTemplateRequest = InAppTemplateRequest'
  { -- | The layout of the message.
    layout :: Prelude.Maybe Layout,
    -- | The description of the template.
    templateDescription :: Prelude.Maybe Prelude.Text,
    -- | The content of the message, can include up to 5 modals. Each modal must
    -- contain a message, a header, and background color. ImageUrl and buttons
    -- are optional.
    content :: Prelude.Maybe [InAppMessageContent],
    -- | Custom config to be sent to client.
    customConfig :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A string-to-string map of key-value pairs that defines the tags to
    -- associate with the message template. Each tag consists of a required tag
    -- key and an associated tag value.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InAppTemplateRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'layout', 'inAppTemplateRequest_layout' - The layout of the message.
--
-- 'templateDescription', 'inAppTemplateRequest_templateDescription' - The description of the template.
--
-- 'content', 'inAppTemplateRequest_content' - The content of the message, can include up to 5 modals. Each modal must
-- contain a message, a header, and background color. ImageUrl and buttons
-- are optional.
--
-- 'customConfig', 'inAppTemplateRequest_customConfig' - Custom config to be sent to client.
--
-- 'tags', 'inAppTemplateRequest_tags' - A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
newInAppTemplateRequest ::
  InAppTemplateRequest
newInAppTemplateRequest =
  InAppTemplateRequest'
    { layout = Prelude.Nothing,
      templateDescription = Prelude.Nothing,
      content = Prelude.Nothing,
      customConfig = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The layout of the message.
inAppTemplateRequest_layout :: Lens.Lens' InAppTemplateRequest (Prelude.Maybe Layout)
inAppTemplateRequest_layout = Lens.lens (\InAppTemplateRequest' {layout} -> layout) (\s@InAppTemplateRequest' {} a -> s {layout = a} :: InAppTemplateRequest)

-- | The description of the template.
inAppTemplateRequest_templateDescription :: Lens.Lens' InAppTemplateRequest (Prelude.Maybe Prelude.Text)
inAppTemplateRequest_templateDescription = Lens.lens (\InAppTemplateRequest' {templateDescription} -> templateDescription) (\s@InAppTemplateRequest' {} a -> s {templateDescription = a} :: InAppTemplateRequest)

-- | The content of the message, can include up to 5 modals. Each modal must
-- contain a message, a header, and background color. ImageUrl and buttons
-- are optional.
inAppTemplateRequest_content :: Lens.Lens' InAppTemplateRequest (Prelude.Maybe [InAppMessageContent])
inAppTemplateRequest_content = Lens.lens (\InAppTemplateRequest' {content} -> content) (\s@InAppTemplateRequest' {} a -> s {content = a} :: InAppTemplateRequest) Prelude.. Lens.mapping Lens.coerced

-- | Custom config to be sent to client.
inAppTemplateRequest_customConfig :: Lens.Lens' InAppTemplateRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
inAppTemplateRequest_customConfig = Lens.lens (\InAppTemplateRequest' {customConfig} -> customConfig) (\s@InAppTemplateRequest' {} a -> s {customConfig = a} :: InAppTemplateRequest) Prelude.. Lens.mapping Lens.coerced

-- | A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
inAppTemplateRequest_tags :: Lens.Lens' InAppTemplateRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
inAppTemplateRequest_tags = Lens.lens (\InAppTemplateRequest' {tags} -> tags) (\s@InAppTemplateRequest' {} a -> s {tags = a} :: InAppTemplateRequest) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable InAppTemplateRequest

instance Prelude.NFData InAppTemplateRequest

instance Core.ToJSON InAppTemplateRequest where
  toJSON InAppTemplateRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Layout" Core..=) Prelude.<$> layout,
            ("TemplateDescription" Core..=)
              Prelude.<$> templateDescription,
            ("Content" Core..=) Prelude.<$> content,
            ("CustomConfig" Core..=) Prelude.<$> customConfig,
            ("tags" Core..=) Prelude.<$> tags
          ]
      )
