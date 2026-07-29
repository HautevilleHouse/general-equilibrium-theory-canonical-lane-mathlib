import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure SequenceAlignmentPackage where
  scoringMatrix : Prop
  gapPenalty : Prop
  optimalAlignmentAlgorithm : Prop
  alignmentScore : Prop
  significanceEstimate : Prop

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.gapPenalty ∧ S.optimalAlignmentAlgorithm ∧ S.alignmentScore ∧ S.significanceEstimate

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty
  optimalAlignmentAlgorithmClosed : S.optimalAlignmentAlgorithm
  alignmentScoreClosed : S.alignmentScore
  significanceEstimateClosed : S.significanceEstimate

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.scoringMatrixClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.optimalAlignmentAlgorithmClosed
        (And.intro E.alignmentScoreClosed E.significanceEstimateClosed)))

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse