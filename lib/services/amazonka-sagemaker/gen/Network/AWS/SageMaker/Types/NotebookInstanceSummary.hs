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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.InstanceType
import Network.AWS.SageMaker.Types.NotebookInstanceStatus

-- | Provides summary information for an Amazon SageMaker notebook instance.
--
-- /See:/ 'newNotebookInstanceSummary' smart constructor.
data NotebookInstanceSummary = NotebookInstanceSummary'
  { -- | A timestamp that shows when the notebook instance was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | An array of up to three Git repositories associated with the notebook
    -- instance. These can be either the names of Git repositories stored as
    -- resources in your account, or the URL of Git repositories in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
    -- or in any other Git repository. These repositories are cloned at the
    -- same level as the default repository of your notebook instance. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
    additionalCodeRepositories :: Prelude.Maybe [Prelude.Text],
    -- | The URL that you use to connect to the Jupyter instance running in your
    -- notebook instance.
    url :: Prelude.Maybe Prelude.Text,
    -- | A timestamp that shows when the notebook instance was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The type of ML compute instance that the notebook instance is running
    -- on.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The status of the notebook instance.
    notebookInstanceStatus :: Prelude.Maybe NotebookInstanceStatus,
    -- | The Git repository associated with the notebook instance as its default
    -- code repository. This can be either the name of a Git repository stored
    -- as a resource in your account, or the URL of a Git repository in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
    -- or in any other Git repository. When you open a notebook instance, it
    -- opens in the directory that contains this repository. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
    defaultCodeRepository :: Prelude.Maybe Prelude.Text,
    -- | The name of a notebook instance lifecycle configuration associated with
    -- this notebook instance.
    --
    -- For information about notebook instance lifestyle configurations, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>.
    notebookInstanceLifecycleConfigName :: Prelude.Maybe Prelude.Text,
    -- | The name of the notebook instance that you want a summary for.
    notebookInstanceName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the notebook instance.
    notebookInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NotebookInstanceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'notebookInstanceSummary_creationTime' - A timestamp that shows when the notebook instance was created.
--
-- 'additionalCodeRepositories', 'notebookInstanceSummary_additionalCodeRepositories' - An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
--
-- 'url', 'notebookInstanceSummary_url' - The URL that you use to connect to the Jupyter instance running in your
-- notebook instance.
--
-- 'lastModifiedTime', 'notebookInstanceSummary_lastModifiedTime' - A timestamp that shows when the notebook instance was last modified.
--
-- 'instanceType', 'notebookInstanceSummary_instanceType' - The type of ML compute instance that the notebook instance is running
-- on.
--
-- 'notebookInstanceStatus', 'notebookInstanceSummary_notebookInstanceStatus' - The status of the notebook instance.
--
-- 'defaultCodeRepository', 'notebookInstanceSummary_defaultCodeRepository' - The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
--
-- 'notebookInstanceLifecycleConfigName', 'notebookInstanceSummary_notebookInstanceLifecycleConfigName' - The name of a notebook instance lifecycle configuration associated with
-- this notebook instance.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>.
--
-- 'notebookInstanceName', 'notebookInstanceSummary_notebookInstanceName' - The name of the notebook instance that you want a summary for.
--
-- 'notebookInstanceArn', 'notebookInstanceSummary_notebookInstanceArn' - The Amazon Resource Name (ARN) of the notebook instance.
newNotebookInstanceSummary ::
  -- | 'notebookInstanceName'
  Prelude.Text ->
  -- | 'notebookInstanceArn'
  Prelude.Text ->
  NotebookInstanceSummary
newNotebookInstanceSummary
  pNotebookInstanceName_
  pNotebookInstanceArn_ =
    NotebookInstanceSummary'
      { creationTime =
          Prelude.Nothing,
        additionalCodeRepositories = Prelude.Nothing,
        url = Prelude.Nothing,
        lastModifiedTime = Prelude.Nothing,
        instanceType = Prelude.Nothing,
        notebookInstanceStatus = Prelude.Nothing,
        defaultCodeRepository = Prelude.Nothing,
        notebookInstanceLifecycleConfigName =
          Prelude.Nothing,
        notebookInstanceName = pNotebookInstanceName_,
        notebookInstanceArn = pNotebookInstanceArn_
      }

-- | A timestamp that shows when the notebook instance was created.
notebookInstanceSummary_creationTime :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe Prelude.UTCTime)
notebookInstanceSummary_creationTime = Lens.lens (\NotebookInstanceSummary' {creationTime} -> creationTime) (\s@NotebookInstanceSummary' {} a -> s {creationTime = a} :: NotebookInstanceSummary) Prelude.. Lens.mapping Core._Time

-- | An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
notebookInstanceSummary_additionalCodeRepositories :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe [Prelude.Text])
notebookInstanceSummary_additionalCodeRepositories = Lens.lens (\NotebookInstanceSummary' {additionalCodeRepositories} -> additionalCodeRepositories) (\s@NotebookInstanceSummary' {} a -> s {additionalCodeRepositories = a} :: NotebookInstanceSummary) Prelude.. Lens.mapping Lens.coerced

-- | The URL that you use to connect to the Jupyter instance running in your
-- notebook instance.
notebookInstanceSummary_url :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe Prelude.Text)
notebookInstanceSummary_url = Lens.lens (\NotebookInstanceSummary' {url} -> url) (\s@NotebookInstanceSummary' {} a -> s {url = a} :: NotebookInstanceSummary)

-- | A timestamp that shows when the notebook instance was last modified.
notebookInstanceSummary_lastModifiedTime :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe Prelude.UTCTime)
notebookInstanceSummary_lastModifiedTime = Lens.lens (\NotebookInstanceSummary' {lastModifiedTime} -> lastModifiedTime) (\s@NotebookInstanceSummary' {} a -> s {lastModifiedTime = a} :: NotebookInstanceSummary) Prelude.. Lens.mapping Core._Time

-- | The type of ML compute instance that the notebook instance is running
-- on.
notebookInstanceSummary_instanceType :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe InstanceType)
notebookInstanceSummary_instanceType = Lens.lens (\NotebookInstanceSummary' {instanceType} -> instanceType) (\s@NotebookInstanceSummary' {} a -> s {instanceType = a} :: NotebookInstanceSummary)

-- | The status of the notebook instance.
notebookInstanceSummary_notebookInstanceStatus :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe NotebookInstanceStatus)
notebookInstanceSummary_notebookInstanceStatus = Lens.lens (\NotebookInstanceSummary' {notebookInstanceStatus} -> notebookInstanceStatus) (\s@NotebookInstanceSummary' {} a -> s {notebookInstanceStatus = a} :: NotebookInstanceSummary)

-- | The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
notebookInstanceSummary_defaultCodeRepository :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe Prelude.Text)
notebookInstanceSummary_defaultCodeRepository = Lens.lens (\NotebookInstanceSummary' {defaultCodeRepository} -> defaultCodeRepository) (\s@NotebookInstanceSummary' {} a -> s {defaultCodeRepository = a} :: NotebookInstanceSummary)

-- | The name of a notebook instance lifecycle configuration associated with
-- this notebook instance.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>.
notebookInstanceSummary_notebookInstanceLifecycleConfigName :: Lens.Lens' NotebookInstanceSummary (Prelude.Maybe Prelude.Text)
notebookInstanceSummary_notebookInstanceLifecycleConfigName = Lens.lens (\NotebookInstanceSummary' {notebookInstanceLifecycleConfigName} -> notebookInstanceLifecycleConfigName) (\s@NotebookInstanceSummary' {} a -> s {notebookInstanceLifecycleConfigName = a} :: NotebookInstanceSummary)

-- | The name of the notebook instance that you want a summary for.
notebookInstanceSummary_notebookInstanceName :: Lens.Lens' NotebookInstanceSummary Prelude.Text
notebookInstanceSummary_notebookInstanceName = Lens.lens (\NotebookInstanceSummary' {notebookInstanceName} -> notebookInstanceName) (\s@NotebookInstanceSummary' {} a -> s {notebookInstanceName = a} :: NotebookInstanceSummary)

-- | The Amazon Resource Name (ARN) of the notebook instance.
notebookInstanceSummary_notebookInstanceArn :: Lens.Lens' NotebookInstanceSummary Prelude.Text
notebookInstanceSummary_notebookInstanceArn = Lens.lens (\NotebookInstanceSummary' {notebookInstanceArn} -> notebookInstanceArn) (\s@NotebookInstanceSummary' {} a -> s {notebookInstanceArn = a} :: NotebookInstanceSummary)

instance Core.FromJSON NotebookInstanceSummary where
  parseJSON =
    Core.withObject
      "NotebookInstanceSummary"
      ( \x ->
          NotebookInstanceSummary'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> ( x Core..:? "AdditionalCodeRepositories"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Url")
            Prelude.<*> (x Core..:? "LastModifiedTime")
            Prelude.<*> (x Core..:? "InstanceType")
            Prelude.<*> (x Core..:? "NotebookInstanceStatus")
            Prelude.<*> (x Core..:? "DefaultCodeRepository")
            Prelude.<*> (x Core..:? "NotebookInstanceLifecycleConfigName")
            Prelude.<*> (x Core..: "NotebookInstanceName")
            Prelude.<*> (x Core..: "NotebookInstanceArn")
      )

instance Prelude.Hashable NotebookInstanceSummary

instance Prelude.NFData NotebookInstanceSummary
