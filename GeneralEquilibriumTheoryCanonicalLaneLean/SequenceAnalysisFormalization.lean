import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.LinkageAnalysis
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.SequenceAlignment
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.Phylogenetics
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.PopulationGeneticsEquilibrium

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure SequenceAnalysisFormalization where
  hardyweinberg : HardyWeinbergPackage
  linkageanalysis : LinkageAnalysisPackage
  sequencealignment : SequenceAlignmentPackage
  phylogenetics : PhylogeneticsPackage
  populationgeneticsequilibrium : PopulationGeneticsEquilibriumPackage
  formalizationComplete : Prop
  formalizationCompleteTerm : formalizationComplete

def SequenceAnalysisFormalizationClosed (F : SequenceAnalysisFormalization) : Prop :=
  HardyWeinbergClosed F.hardyweinberg ∧ LinkageAnalysisClosed F.linkageanalysis ∧
  SequenceAlignmentClosed F.sequencealignment ∧ PhylogeneticsClosed F.phylogenetics ∧
  PopulationGeneticsEquilibriumClosed F.populationgeneticsequilibrium ∧
  F.formalizationComplete

theorem sequenceAnalysisFormalization_closed (F : SequenceAnalysisFormalization) :
    SequenceAnalysisFormalizationClosed F := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ F.formalizationCompleteTerm))))
  · exact hardy_weinberg_closed_from_evidence F.hardyweinberg (by
      exact { locusAlleleFrequenciesClosed := ?_, genotypeFrequenciesClosed := ?_, equilibriumConditionClosed := ?_, randomMatingAssumptionClosed := ?_, noEvolutionaryForcesClosed := ?_ })
  · sorry
  · sorry
  · sorry
  · sorry

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse