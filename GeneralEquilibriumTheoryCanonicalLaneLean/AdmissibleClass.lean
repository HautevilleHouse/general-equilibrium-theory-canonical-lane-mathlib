import GeneralEquilibriumTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GeneralEquilibriumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneralEquilibriumWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse