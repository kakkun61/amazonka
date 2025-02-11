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
-- Module      : Network.AWS.WellArchitected.Types.Answer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WellArchitected.Types.Answer where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.WellArchitected.Types.AnswerReason
import Network.AWS.WellArchitected.Types.Choice
import Network.AWS.WellArchitected.Types.ChoiceAnswer
import Network.AWS.WellArchitected.Types.Risk

-- | An answer of the question.
--
-- /See:/ 'newAnswer' smart constructor.
data Answer = Answer'
  { -- | A list of selected choices to a question in your workload.
    choiceAnswers :: Prelude.Maybe [ChoiceAnswer],
    helpfulResourceUrl :: Prelude.Maybe Prelude.Text,
    isApplicable :: Prelude.Maybe Prelude.Bool,
    pillarId :: Prelude.Maybe Prelude.Text,
    improvementPlanUrl :: Prelude.Maybe Prelude.Text,
    questionDescription :: Prelude.Maybe Prelude.Text,
    risk :: Prelude.Maybe Risk,
    questionTitle :: Prelude.Maybe Prelude.Text,
    selectedChoices :: Prelude.Maybe [Prelude.Text],
    -- | The reason why the question is not applicable to your workload.
    reason :: Prelude.Maybe AnswerReason,
    choices :: Prelude.Maybe [Choice],
    questionId :: Prelude.Maybe Prelude.Text,
    notes :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Answer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'choiceAnswers', 'answer_choiceAnswers' - A list of selected choices to a question in your workload.
--
-- 'helpfulResourceUrl', 'answer_helpfulResourceUrl' - Undocumented member.
--
-- 'isApplicable', 'answer_isApplicable' - Undocumented member.
--
-- 'pillarId', 'answer_pillarId' - Undocumented member.
--
-- 'improvementPlanUrl', 'answer_improvementPlanUrl' - Undocumented member.
--
-- 'questionDescription', 'answer_questionDescription' - Undocumented member.
--
-- 'risk', 'answer_risk' - Undocumented member.
--
-- 'questionTitle', 'answer_questionTitle' - Undocumented member.
--
-- 'selectedChoices', 'answer_selectedChoices' - Undocumented member.
--
-- 'reason', 'answer_reason' - The reason why the question is not applicable to your workload.
--
-- 'choices', 'answer_choices' - Undocumented member.
--
-- 'questionId', 'answer_questionId' - Undocumented member.
--
-- 'notes', 'answer_notes' - Undocumented member.
newAnswer ::
  Answer
newAnswer =
  Answer'
    { choiceAnswers = Prelude.Nothing,
      helpfulResourceUrl = Prelude.Nothing,
      isApplicable = Prelude.Nothing,
      pillarId = Prelude.Nothing,
      improvementPlanUrl = Prelude.Nothing,
      questionDescription = Prelude.Nothing,
      risk = Prelude.Nothing,
      questionTitle = Prelude.Nothing,
      selectedChoices = Prelude.Nothing,
      reason = Prelude.Nothing,
      choices = Prelude.Nothing,
      questionId = Prelude.Nothing,
      notes = Prelude.Nothing
    }

-- | A list of selected choices to a question in your workload.
answer_choiceAnswers :: Lens.Lens' Answer (Prelude.Maybe [ChoiceAnswer])
answer_choiceAnswers = Lens.lens (\Answer' {choiceAnswers} -> choiceAnswers) (\s@Answer' {} a -> s {choiceAnswers = a} :: Answer) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
answer_helpfulResourceUrl :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_helpfulResourceUrl = Lens.lens (\Answer' {helpfulResourceUrl} -> helpfulResourceUrl) (\s@Answer' {} a -> s {helpfulResourceUrl = a} :: Answer)

-- | Undocumented member.
answer_isApplicable :: Lens.Lens' Answer (Prelude.Maybe Prelude.Bool)
answer_isApplicable = Lens.lens (\Answer' {isApplicable} -> isApplicable) (\s@Answer' {} a -> s {isApplicable = a} :: Answer)

-- | Undocumented member.
answer_pillarId :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_pillarId = Lens.lens (\Answer' {pillarId} -> pillarId) (\s@Answer' {} a -> s {pillarId = a} :: Answer)

-- | Undocumented member.
answer_improvementPlanUrl :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_improvementPlanUrl = Lens.lens (\Answer' {improvementPlanUrl} -> improvementPlanUrl) (\s@Answer' {} a -> s {improvementPlanUrl = a} :: Answer)

-- | Undocumented member.
answer_questionDescription :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_questionDescription = Lens.lens (\Answer' {questionDescription} -> questionDescription) (\s@Answer' {} a -> s {questionDescription = a} :: Answer)

-- | Undocumented member.
answer_risk :: Lens.Lens' Answer (Prelude.Maybe Risk)
answer_risk = Lens.lens (\Answer' {risk} -> risk) (\s@Answer' {} a -> s {risk = a} :: Answer)

-- | Undocumented member.
answer_questionTitle :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_questionTitle = Lens.lens (\Answer' {questionTitle} -> questionTitle) (\s@Answer' {} a -> s {questionTitle = a} :: Answer)

-- | Undocumented member.
answer_selectedChoices :: Lens.Lens' Answer (Prelude.Maybe [Prelude.Text])
answer_selectedChoices = Lens.lens (\Answer' {selectedChoices} -> selectedChoices) (\s@Answer' {} a -> s {selectedChoices = a} :: Answer) Prelude.. Lens.mapping Lens.coerced

-- | The reason why the question is not applicable to your workload.
answer_reason :: Lens.Lens' Answer (Prelude.Maybe AnswerReason)
answer_reason = Lens.lens (\Answer' {reason} -> reason) (\s@Answer' {} a -> s {reason = a} :: Answer)

-- | Undocumented member.
answer_choices :: Lens.Lens' Answer (Prelude.Maybe [Choice])
answer_choices = Lens.lens (\Answer' {choices} -> choices) (\s@Answer' {} a -> s {choices = a} :: Answer) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
answer_questionId :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_questionId = Lens.lens (\Answer' {questionId} -> questionId) (\s@Answer' {} a -> s {questionId = a} :: Answer)

-- | Undocumented member.
answer_notes :: Lens.Lens' Answer (Prelude.Maybe Prelude.Text)
answer_notes = Lens.lens (\Answer' {notes} -> notes) (\s@Answer' {} a -> s {notes = a} :: Answer)

instance Core.FromJSON Answer where
  parseJSON =
    Core.withObject
      "Answer"
      ( \x ->
          Answer'
            Prelude.<$> (x Core..:? "ChoiceAnswers" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "HelpfulResourceUrl")
            Prelude.<*> (x Core..:? "IsApplicable")
            Prelude.<*> (x Core..:? "PillarId")
            Prelude.<*> (x Core..:? "ImprovementPlanUrl")
            Prelude.<*> (x Core..:? "QuestionDescription")
            Prelude.<*> (x Core..:? "Risk")
            Prelude.<*> (x Core..:? "QuestionTitle")
            Prelude.<*> ( x Core..:? "SelectedChoices"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Reason")
            Prelude.<*> (x Core..:? "Choices" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "QuestionId")
            Prelude.<*> (x Core..:? "Notes")
      )

instance Prelude.Hashable Answer

instance Prelude.NFData Answer
