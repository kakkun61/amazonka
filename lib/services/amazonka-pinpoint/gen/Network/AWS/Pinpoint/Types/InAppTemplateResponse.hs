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
-- Module      : Network.AWS.Pinpoint.Types.InAppTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.InAppTemplateResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.InAppMessageContent
import Network.AWS.Pinpoint.Types.Layout
import Network.AWS.Pinpoint.Types.TemplateType
import qualified Network.AWS.Prelude as Prelude

-- | In-App Template Response.
--
-- /See:/ 'newInAppTemplateResponse' smart constructor.
data InAppTemplateResponse = InAppTemplateResponse'
  { -- | The layout of the message.
    layout :: Prelude.Maybe Layout,
    -- | The resource arn of the template.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The description of the template.
    templateDescription :: Prelude.Maybe Prelude.Text,
    -- | The content of the message, can include up to 5 modals. Each modal must
    -- contain a message, a header, and background color. ImageUrl and buttons
    -- are optional.
    content :: Prelude.Maybe [InAppMessageContent],
    -- | Custom config to be sent to client.
    customConfig :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The version id of the template.
    version :: Prelude.Maybe Prelude.Text,
    -- | A string-to-string map of key-value pairs that defines the tags to
    -- associate with the message template. Each tag consists of a required tag
    -- key and an associated tag value.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The last modified date of the template.
    lastModifiedDate :: Prelude.Text,
    -- | The creation date of the template.
    creationDate :: Prelude.Text,
    -- | The name of the template.
    templateName :: Prelude.Text,
    -- | The type of the template.
    templateType :: TemplateType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InAppTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'layout', 'inAppTemplateResponse_layout' - The layout of the message.
--
-- 'arn', 'inAppTemplateResponse_arn' - The resource arn of the template.
--
-- 'templateDescription', 'inAppTemplateResponse_templateDescription' - The description of the template.
--
-- 'content', 'inAppTemplateResponse_content' - The content of the message, can include up to 5 modals. Each modal must
-- contain a message, a header, and background color. ImageUrl and buttons
-- are optional.
--
-- 'customConfig', 'inAppTemplateResponse_customConfig' - Custom config to be sent to client.
--
-- 'version', 'inAppTemplateResponse_version' - The version id of the template.
--
-- 'tags', 'inAppTemplateResponse_tags' - A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
--
-- 'lastModifiedDate', 'inAppTemplateResponse_lastModifiedDate' - The last modified date of the template.
--
-- 'creationDate', 'inAppTemplateResponse_creationDate' - The creation date of the template.
--
-- 'templateName', 'inAppTemplateResponse_templateName' - The name of the template.
--
-- 'templateType', 'inAppTemplateResponse_templateType' - The type of the template.
newInAppTemplateResponse ::
  -- | 'lastModifiedDate'
  Prelude.Text ->
  -- | 'creationDate'
  Prelude.Text ->
  -- | 'templateName'
  Prelude.Text ->
  -- | 'templateType'
  TemplateType ->
  InAppTemplateResponse
newInAppTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateName_
  pTemplateType_ =
    InAppTemplateResponse'
      { layout = Prelude.Nothing,
        arn = Prelude.Nothing,
        templateDescription = Prelude.Nothing,
        content = Prelude.Nothing,
        customConfig = Prelude.Nothing,
        version = Prelude.Nothing,
        tags = Prelude.Nothing,
        lastModifiedDate = pLastModifiedDate_,
        creationDate = pCreationDate_,
        templateName = pTemplateName_,
        templateType = pTemplateType_
      }

-- | The layout of the message.
inAppTemplateResponse_layout :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe Layout)
inAppTemplateResponse_layout = Lens.lens (\InAppTemplateResponse' {layout} -> layout) (\s@InAppTemplateResponse' {} a -> s {layout = a} :: InAppTemplateResponse)

-- | The resource arn of the template.
inAppTemplateResponse_arn :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe Prelude.Text)
inAppTemplateResponse_arn = Lens.lens (\InAppTemplateResponse' {arn} -> arn) (\s@InAppTemplateResponse' {} a -> s {arn = a} :: InAppTemplateResponse)

-- | The description of the template.
inAppTemplateResponse_templateDescription :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe Prelude.Text)
inAppTemplateResponse_templateDescription = Lens.lens (\InAppTemplateResponse' {templateDescription} -> templateDescription) (\s@InAppTemplateResponse' {} a -> s {templateDescription = a} :: InAppTemplateResponse)

-- | The content of the message, can include up to 5 modals. Each modal must
-- contain a message, a header, and background color. ImageUrl and buttons
-- are optional.
inAppTemplateResponse_content :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe [InAppMessageContent])
inAppTemplateResponse_content = Lens.lens (\InAppTemplateResponse' {content} -> content) (\s@InAppTemplateResponse' {} a -> s {content = a} :: InAppTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | Custom config to be sent to client.
inAppTemplateResponse_customConfig :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
inAppTemplateResponse_customConfig = Lens.lens (\InAppTemplateResponse' {customConfig} -> customConfig) (\s@InAppTemplateResponse' {} a -> s {customConfig = a} :: InAppTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The version id of the template.
inAppTemplateResponse_version :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe Prelude.Text)
inAppTemplateResponse_version = Lens.lens (\InAppTemplateResponse' {version} -> version) (\s@InAppTemplateResponse' {} a -> s {version = a} :: InAppTemplateResponse)

-- | A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
inAppTemplateResponse_tags :: Lens.Lens' InAppTemplateResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
inAppTemplateResponse_tags = Lens.lens (\InAppTemplateResponse' {tags} -> tags) (\s@InAppTemplateResponse' {} a -> s {tags = a} :: InAppTemplateResponse) Prelude.. Lens.mapping Lens.coerced

-- | The last modified date of the template.
inAppTemplateResponse_lastModifiedDate :: Lens.Lens' InAppTemplateResponse Prelude.Text
inAppTemplateResponse_lastModifiedDate = Lens.lens (\InAppTemplateResponse' {lastModifiedDate} -> lastModifiedDate) (\s@InAppTemplateResponse' {} a -> s {lastModifiedDate = a} :: InAppTemplateResponse)

-- | The creation date of the template.
inAppTemplateResponse_creationDate :: Lens.Lens' InAppTemplateResponse Prelude.Text
inAppTemplateResponse_creationDate = Lens.lens (\InAppTemplateResponse' {creationDate} -> creationDate) (\s@InAppTemplateResponse' {} a -> s {creationDate = a} :: InAppTemplateResponse)

-- | The name of the template.
inAppTemplateResponse_templateName :: Lens.Lens' InAppTemplateResponse Prelude.Text
inAppTemplateResponse_templateName = Lens.lens (\InAppTemplateResponse' {templateName} -> templateName) (\s@InAppTemplateResponse' {} a -> s {templateName = a} :: InAppTemplateResponse)

-- | The type of the template.
inAppTemplateResponse_templateType :: Lens.Lens' InAppTemplateResponse TemplateType
inAppTemplateResponse_templateType = Lens.lens (\InAppTemplateResponse' {templateType} -> templateType) (\s@InAppTemplateResponse' {} a -> s {templateType = a} :: InAppTemplateResponse)

instance Core.FromJSON InAppTemplateResponse where
  parseJSON =
    Core.withObject
      "InAppTemplateResponse"
      ( \x ->
          InAppTemplateResponse'
            Prelude.<$> (x Core..:? "Layout")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "TemplateDescription")
            Prelude.<*> (x Core..:? "Content" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CustomConfig" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Version")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "LastModifiedDate")
            Prelude.<*> (x Core..: "CreationDate")
            Prelude.<*> (x Core..: "TemplateName")
            Prelude.<*> (x Core..: "TemplateType")
      )

instance Prelude.Hashable InAppTemplateResponse

instance Prelude.NFData InAppTemplateResponse
