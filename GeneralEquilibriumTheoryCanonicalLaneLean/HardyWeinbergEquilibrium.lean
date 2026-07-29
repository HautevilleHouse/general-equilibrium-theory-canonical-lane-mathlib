import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure HardyWeinbergPackage where
  locusAlleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  randomMatingAssumption : Prop
  noEvolutionaryForces : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  locusAlleleFrequenciesClosed : H.locusAlleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  randomMatingAssumptionClosed : H.randomMatingAssumption
  noEvolutionaryForcesClosed : H.noEvolutionaryForces

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.locusAlleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition ∧
  H.randomMatingAssumption ∧ H.noEvolutionaryForces

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.locusAlleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.equilibriumConditionClosed
        (And.intro E.randomMatingAssumptionClosed E.noEvolutionaryForcesClosed)))

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse