{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.AuthorizeDataShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- From a data producer account, authorizes the sharing of a datashare with
-- one or more consumer accounts. To authorize a datashare for a data
-- consumer, the producer account must have the correct access privileges.
module Network.AWS.Redshift.AuthorizeDataShare
  ( -- * Creating a Request
    AuthorizeDataShare (..),
    newAuthorizeDataShare,

    -- * Request Lenses
    authorizeDataShare_dataShareArn,
    authorizeDataShare_consumerIdentifier,

    -- * Destructuring the Response
    DataShare (..),
    newDataShare,

    -- * Response Lenses
    dataShare_producerArn,
    dataShare_dataShareAssociations,
    dataShare_dataShareArn,
    dataShare_allowPubliclyAccessibleConsumers,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAuthorizeDataShare' smart constructor.
data AuthorizeDataShare = AuthorizeDataShare'
  { -- | The Amazon Resource Name (ARN) of the datashare that producers are to
    -- authorize sharing for.
    dataShareArn :: Prelude.Text,
    -- | The identifier of the data consumer that is authorized to access the
    -- datashare. This identifier is an AWS account ID.
    consumerIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthorizeDataShare' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataShareArn', 'authorizeDataShare_dataShareArn' - The Amazon Resource Name (ARN) of the datashare that producers are to
-- authorize sharing for.
--
-- 'consumerIdentifier', 'authorizeDataShare_consumerIdentifier' - The identifier of the data consumer that is authorized to access the
-- datashare. This identifier is an AWS account ID.
newAuthorizeDataShare ::
  -- | 'dataShareArn'
  Prelude.Text ->
  -- | 'consumerIdentifier'
  Prelude.Text ->
  AuthorizeDataShare
newAuthorizeDataShare
  pDataShareArn_
  pConsumerIdentifier_ =
    AuthorizeDataShare'
      { dataShareArn = pDataShareArn_,
        consumerIdentifier = pConsumerIdentifier_
      }

-- | The Amazon Resource Name (ARN) of the datashare that producers are to
-- authorize sharing for.
authorizeDataShare_dataShareArn :: Lens.Lens' AuthorizeDataShare Prelude.Text
authorizeDataShare_dataShareArn = Lens.lens (\AuthorizeDataShare' {dataShareArn} -> dataShareArn) (\s@AuthorizeDataShare' {} a -> s {dataShareArn = a} :: AuthorizeDataShare)

-- | The identifier of the data consumer that is authorized to access the
-- datashare. This identifier is an AWS account ID.
authorizeDataShare_consumerIdentifier :: Lens.Lens' AuthorizeDataShare Prelude.Text
authorizeDataShare_consumerIdentifier = Lens.lens (\AuthorizeDataShare' {consumerIdentifier} -> consumerIdentifier) (\s@AuthorizeDataShare' {} a -> s {consumerIdentifier = a} :: AuthorizeDataShare)

instance Core.AWSRequest AuthorizeDataShare where
  type AWSResponse AuthorizeDataShare = DataShare
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "AuthorizeDataShareResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable AuthorizeDataShare

instance Prelude.NFData AuthorizeDataShare

instance Core.ToHeaders AuthorizeDataShare where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath AuthorizeDataShare where
  toPath = Prelude.const "/"

instance Core.ToQuery AuthorizeDataShare where
  toQuery AuthorizeDataShare' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("AuthorizeDataShare" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "DataShareArn" Core.=: dataShareArn,
        "ConsumerIdentifier" Core.=: consumerIdentifier
      ]
