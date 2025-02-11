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
-- Module      : Network.AWS.Pinpoint.Types.TemplateCreateMessageBody
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplateCreateMessageBody where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a request to create a message template.
--
-- /See:/ 'newTemplateCreateMessageBody' smart constructor.
data TemplateCreateMessageBody = TemplateCreateMessageBody'
  { -- | The unique identifier for the request to create the message template.
    requestID :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the message template that was created.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The message that\'s returned from the API for the request to create the
    -- message template.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateCreateMessageBody' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestID', 'templateCreateMessageBody_requestID' - The unique identifier for the request to create the message template.
--
-- 'arn', 'templateCreateMessageBody_arn' - The Amazon Resource Name (ARN) of the message template that was created.
--
-- 'message', 'templateCreateMessageBody_message' - The message that\'s returned from the API for the request to create the
-- message template.
newTemplateCreateMessageBody ::
  TemplateCreateMessageBody
newTemplateCreateMessageBody =
  TemplateCreateMessageBody'
    { requestID =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | The unique identifier for the request to create the message template.
templateCreateMessageBody_requestID :: Lens.Lens' TemplateCreateMessageBody (Prelude.Maybe Prelude.Text)
templateCreateMessageBody_requestID = Lens.lens (\TemplateCreateMessageBody' {requestID} -> requestID) (\s@TemplateCreateMessageBody' {} a -> s {requestID = a} :: TemplateCreateMessageBody)

-- | The Amazon Resource Name (ARN) of the message template that was created.
templateCreateMessageBody_arn :: Lens.Lens' TemplateCreateMessageBody (Prelude.Maybe Prelude.Text)
templateCreateMessageBody_arn = Lens.lens (\TemplateCreateMessageBody' {arn} -> arn) (\s@TemplateCreateMessageBody' {} a -> s {arn = a} :: TemplateCreateMessageBody)

-- | The message that\'s returned from the API for the request to create the
-- message template.
templateCreateMessageBody_message :: Lens.Lens' TemplateCreateMessageBody (Prelude.Maybe Prelude.Text)
templateCreateMessageBody_message = Lens.lens (\TemplateCreateMessageBody' {message} -> message) (\s@TemplateCreateMessageBody' {} a -> s {message = a} :: TemplateCreateMessageBody)

instance Core.FromJSON TemplateCreateMessageBody where
  parseJSON =
    Core.withObject
      "TemplateCreateMessageBody"
      ( \x ->
          TemplateCreateMessageBody'
            Prelude.<$> (x Core..:? "RequestID")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Message")
      )

instance Prelude.Hashable TemplateCreateMessageBody

instance Prelude.NFData TemplateCreateMessageBody
