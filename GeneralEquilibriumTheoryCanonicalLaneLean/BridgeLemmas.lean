import GeneralEquilibriumTheoryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneralEquilibriumWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse