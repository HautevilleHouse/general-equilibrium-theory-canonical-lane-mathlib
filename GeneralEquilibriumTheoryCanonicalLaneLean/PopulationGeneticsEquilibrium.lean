import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure PopulationGeneticsEquilibriumPackage where
  alleleFrequencySpectrum : Prop
  fixationIndex : Prop
  effectivePopulationSize : Prop
  migrationRate : Prop
  selectionCoefficient : Prop
  mutationRate : Prop

def PopulationGeneticsEquilibriumClosed (P : PopulationGeneticsEquilibriumPackage) : Prop :=
  P.alleleFrequencySpectrum ∧ P.fixationIndex ∧ P.effectivePopulationSize ∧
  P.migrationRate ∧ P.selectionCoefficient ∧ P.mutationRate

structure PopulationGeneticsEquilibriumEvidence (P : PopulationGeneticsEquilibriumPackage) where
  alleleFrequencySpectrumClosed : P.alleleFrequencySpectrum
  fixationIndexClosed : P.fixationIndex
  effectivePopulationSizeClosed : P.effectivePopulationSize
  migrationRateClosed : P.migrationRate
  selectionCoefficientClosed : P.selectionCoefficient
  mutationRateClosed : P.mutationRate

theorem population_genetics_equilibrium_closed_from_evidence
    (P : PopulationGeneticsEquilibriumPackage)
    (E : PopulationGeneticsEquilibriumEvidence P) : PopulationGeneticsEquilibriumClosed P := by
  exact And.intro E.alleleFrequencySpectrumClosed
    (And.intro E.fixationIndexClosed
      (And.intro E.effectivePopulationSizeClosed
        (And.intro E.migrationRateClosed
          (And.intro E.selectionCoefficientClosed E.mutationRateClosed))))

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse