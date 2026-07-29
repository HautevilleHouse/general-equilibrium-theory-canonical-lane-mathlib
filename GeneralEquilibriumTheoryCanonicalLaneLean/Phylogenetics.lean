import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure PhylogeneticsPackage where
  evolutionaryModel : Prop
  treeReconstructionMethod : Prop
  branchLengthEstimation : Prop
  bootstrapSupport : Prop
  molecularClockAssumption : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.evolutionaryModel ∧ P.treeReconstructionMethod ∧ P.branchLengthEstimation ∧
  P.bootstrapSupport ∧ P.molecularClockAssumption

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  evolutionaryModelClosed : P.evolutionaryModel
  treeReconstructionMethodClosed : P.treeReconstructionMethod
  branchLengthEstimationClosed : P.branchLengthEstimation
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockAssumptionClosed : P.molecularClockAssumption

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.evolutionaryModelClosed
    (And.intro E.treeReconstructionMethodClosed
      (And.intro E.branchLengthEstimationClosed
        (And.intro E.bootstrapSupportClosed E.molecularClockAssumptionClosed)))

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse