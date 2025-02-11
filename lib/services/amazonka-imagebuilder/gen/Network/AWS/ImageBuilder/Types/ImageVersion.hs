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
-- Module      : Network.AWS.ImageBuilder.Types.ImageVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ImageBuilder.Types.ImageVersion where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types.ImageType
import Network.AWS.ImageBuilder.Types.Platform
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The defining characteristics of a specific version of an Image Builder
-- image.
--
-- /See:/ 'newImageVersion' smart constructor.
data ImageVersion = ImageVersion'
  { -- | The platform of the image version, for example \"Windows\" or \"Linux\".
    platform :: Prelude.Maybe Platform,
    -- | The Amazon Resource Name (ARN) of a specific version of an Image Builder
    -- image.
    --
    -- Semantic versioning is included in each object\'s Amazon Resource Name
    -- (ARN), at the level that applies to that object as follows:
    --
    -- 1.  Versionless ARNs and Name ARNs do not include specific values in any
    --     of the nodes. The nodes are either left off entirely, or they are
    --     specified as wildcards, for example: x.x.x.
    --
    -- 2.  Version ARNs have only the first three nodes:
    --     \<major>.\<minor>.\<patch>
    --
    -- 3.  Build version ARNs have all four nodes, and point to a specific
    --     build for a specific version of an object.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The owner of the image version.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The date on which this specific version of the Image Builder image was
    -- created.
    dateCreated :: Prelude.Maybe Prelude.Text,
    -- | The name of this specific version of an Image Builder image.
    name :: Prelude.Maybe Prelude.Text,
    -- | Details for a specific version of an Image Builder image. This version
    -- follows the semantic version syntax.
    --
    -- The semantic version has four nodes:
    -- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
    -- first three, and can filter on all of them.
    --
    -- __Assignment:__ For the first three nodes you can assign any positive
    -- integer value, including zero, with an upper limit of 2^30-1, or
    -- 1073741823 for each node. Image Builder automatically assigns the build
    -- number to the fourth node.
    --
    -- __Patterns:__ You can use any numeric pattern that adheres to the
    -- assignment requirements for the nodes that you can assign. For example,
    -- you might choose a software version pattern, such as 1.0.0, or a date,
    -- such as 2021.01.01.
    --
    -- __Filtering:__ With semantic versioning, you have the flexibility to use
    -- wildcards (x) to specify the most recent versions or nodes when
    -- selecting the base image or components for your recipe. When you use a
    -- wildcard in any node, all nodes to the right of the first wildcard must
    -- also be wildcards.
    version :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether this image is an AMI or a container image.
    type' :: Prelude.Maybe ImageType,
    -- | The operating system version of the Amazon EC2 build instance. For
    -- example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    osVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'platform', 'imageVersion_platform' - The platform of the image version, for example \"Windows\" or \"Linux\".
--
-- 'arn', 'imageVersion_arn' - The Amazon Resource Name (ARN) of a specific version of an Image Builder
-- image.
--
-- Semantic versioning is included in each object\'s Amazon Resource Name
-- (ARN), at the level that applies to that object as follows:
--
-- 1.  Versionless ARNs and Name ARNs do not include specific values in any
--     of the nodes. The nodes are either left off entirely, or they are
--     specified as wildcards, for example: x.x.x.
--
-- 2.  Version ARNs have only the first three nodes:
--     \<major>.\<minor>.\<patch>
--
-- 3.  Build version ARNs have all four nodes, and point to a specific
--     build for a specific version of an object.
--
-- 'owner', 'imageVersion_owner' - The owner of the image version.
--
-- 'dateCreated', 'imageVersion_dateCreated' - The date on which this specific version of the Image Builder image was
-- created.
--
-- 'name', 'imageVersion_name' - The name of this specific version of an Image Builder image.
--
-- 'version', 'imageVersion_version' - Details for a specific version of an Image Builder image. This version
-- follows the semantic version syntax.
--
-- The semantic version has four nodes:
-- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
-- first three, and can filter on all of them.
--
-- __Assignment:__ For the first three nodes you can assign any positive
-- integer value, including zero, with an upper limit of 2^30-1, or
-- 1073741823 for each node. Image Builder automatically assigns the build
-- number to the fourth node.
--
-- __Patterns:__ You can use any numeric pattern that adheres to the
-- assignment requirements for the nodes that you can assign. For example,
-- you might choose a software version pattern, such as 1.0.0, or a date,
-- such as 2021.01.01.
--
-- __Filtering:__ With semantic versioning, you have the flexibility to use
-- wildcards (x) to specify the most recent versions or nodes when
-- selecting the base image or components for your recipe. When you use a
-- wildcard in any node, all nodes to the right of the first wildcard must
-- also be wildcards.
--
-- 'type'', 'imageVersion_type' - Specifies whether this image is an AMI or a container image.
--
-- 'osVersion', 'imageVersion_osVersion' - The operating system version of the Amazon EC2 build instance. For
-- example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
newImageVersion ::
  ImageVersion
newImageVersion =
  ImageVersion'
    { platform = Prelude.Nothing,
      arn = Prelude.Nothing,
      owner = Prelude.Nothing,
      dateCreated = Prelude.Nothing,
      name = Prelude.Nothing,
      version = Prelude.Nothing,
      type' = Prelude.Nothing,
      osVersion = Prelude.Nothing
    }

-- | The platform of the image version, for example \"Windows\" or \"Linux\".
imageVersion_platform :: Lens.Lens' ImageVersion (Prelude.Maybe Platform)
imageVersion_platform = Lens.lens (\ImageVersion' {platform} -> platform) (\s@ImageVersion' {} a -> s {platform = a} :: ImageVersion)

-- | The Amazon Resource Name (ARN) of a specific version of an Image Builder
-- image.
--
-- Semantic versioning is included in each object\'s Amazon Resource Name
-- (ARN), at the level that applies to that object as follows:
--
-- 1.  Versionless ARNs and Name ARNs do not include specific values in any
--     of the nodes. The nodes are either left off entirely, or they are
--     specified as wildcards, for example: x.x.x.
--
-- 2.  Version ARNs have only the first three nodes:
--     \<major>.\<minor>.\<patch>
--
-- 3.  Build version ARNs have all four nodes, and point to a specific
--     build for a specific version of an object.
imageVersion_arn :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_arn = Lens.lens (\ImageVersion' {arn} -> arn) (\s@ImageVersion' {} a -> s {arn = a} :: ImageVersion)

-- | The owner of the image version.
imageVersion_owner :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_owner = Lens.lens (\ImageVersion' {owner} -> owner) (\s@ImageVersion' {} a -> s {owner = a} :: ImageVersion)

-- | The date on which this specific version of the Image Builder image was
-- created.
imageVersion_dateCreated :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_dateCreated = Lens.lens (\ImageVersion' {dateCreated} -> dateCreated) (\s@ImageVersion' {} a -> s {dateCreated = a} :: ImageVersion)

-- | The name of this specific version of an Image Builder image.
imageVersion_name :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_name = Lens.lens (\ImageVersion' {name} -> name) (\s@ImageVersion' {} a -> s {name = a} :: ImageVersion)

-- | Details for a specific version of an Image Builder image. This version
-- follows the semantic version syntax.
--
-- The semantic version has four nodes:
-- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
-- first three, and can filter on all of them.
--
-- __Assignment:__ For the first three nodes you can assign any positive
-- integer value, including zero, with an upper limit of 2^30-1, or
-- 1073741823 for each node. Image Builder automatically assigns the build
-- number to the fourth node.
--
-- __Patterns:__ You can use any numeric pattern that adheres to the
-- assignment requirements for the nodes that you can assign. For example,
-- you might choose a software version pattern, such as 1.0.0, or a date,
-- such as 2021.01.01.
--
-- __Filtering:__ With semantic versioning, you have the flexibility to use
-- wildcards (x) to specify the most recent versions or nodes when
-- selecting the base image or components for your recipe. When you use a
-- wildcard in any node, all nodes to the right of the first wildcard must
-- also be wildcards.
imageVersion_version :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_version = Lens.lens (\ImageVersion' {version} -> version) (\s@ImageVersion' {} a -> s {version = a} :: ImageVersion)

-- | Specifies whether this image is an AMI or a container image.
imageVersion_type :: Lens.Lens' ImageVersion (Prelude.Maybe ImageType)
imageVersion_type = Lens.lens (\ImageVersion' {type'} -> type') (\s@ImageVersion' {} a -> s {type' = a} :: ImageVersion)

-- | The operating system version of the Amazon EC2 build instance. For
-- example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
imageVersion_osVersion :: Lens.Lens' ImageVersion (Prelude.Maybe Prelude.Text)
imageVersion_osVersion = Lens.lens (\ImageVersion' {osVersion} -> osVersion) (\s@ImageVersion' {} a -> s {osVersion = a} :: ImageVersion)

instance Core.FromJSON ImageVersion where
  parseJSON =
    Core.withObject
      "ImageVersion"
      ( \x ->
          ImageVersion'
            Prelude.<$> (x Core..:? "platform")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "owner")
            Prelude.<*> (x Core..:? "dateCreated")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "version")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "osVersion")
      )

instance Prelude.Hashable ImageVersion

instance Prelude.NFData ImageVersion
