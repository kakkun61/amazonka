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
-- Module      : Network.AWS.FraudDetector.Types.ModelEndpointDataBlob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.ModelEndpointDataBlob where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A pre-formed Amazon SageMaker model input you can include if your
-- detector version includes an imported Amazon SageMaker model endpoint
-- with pass-through input configuration.
--
-- /See:/ 'newModelEndpointDataBlob' smart constructor.
data ModelEndpointDataBlob = ModelEndpointDataBlob'
  { -- | The byte buffer of the Amazon SageMaker model endpoint input data blob.
    byteBuffer :: Prelude.Maybe Core.Base64,
    -- | The content type of the Amazon SageMaker model endpoint input data blob.
    contentType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelEndpointDataBlob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'byteBuffer', 'modelEndpointDataBlob_byteBuffer' - The byte buffer of the Amazon SageMaker model endpoint input data blob.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'contentType', 'modelEndpointDataBlob_contentType' - The content type of the Amazon SageMaker model endpoint input data blob.
newModelEndpointDataBlob ::
  ModelEndpointDataBlob
newModelEndpointDataBlob =
  ModelEndpointDataBlob'
    { byteBuffer =
        Prelude.Nothing,
      contentType = Prelude.Nothing
    }

-- | The byte buffer of the Amazon SageMaker model endpoint input data blob.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
modelEndpointDataBlob_byteBuffer :: Lens.Lens' ModelEndpointDataBlob (Prelude.Maybe Prelude.ByteString)
modelEndpointDataBlob_byteBuffer = Lens.lens (\ModelEndpointDataBlob' {byteBuffer} -> byteBuffer) (\s@ModelEndpointDataBlob' {} a -> s {byteBuffer = a} :: ModelEndpointDataBlob) Prelude.. Lens.mapping Core._Base64

-- | The content type of the Amazon SageMaker model endpoint input data blob.
modelEndpointDataBlob_contentType :: Lens.Lens' ModelEndpointDataBlob (Prelude.Maybe Prelude.Text)
modelEndpointDataBlob_contentType = Lens.lens (\ModelEndpointDataBlob' {contentType} -> contentType) (\s@ModelEndpointDataBlob' {} a -> s {contentType = a} :: ModelEndpointDataBlob)

instance Prelude.Hashable ModelEndpointDataBlob

instance Prelude.NFData ModelEndpointDataBlob

instance Core.ToJSON ModelEndpointDataBlob where
  toJSON ModelEndpointDataBlob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("byteBuffer" Core..=) Prelude.<$> byteBuffer,
            ("contentType" Core..=) Prelude.<$> contentType
          ]
      )
