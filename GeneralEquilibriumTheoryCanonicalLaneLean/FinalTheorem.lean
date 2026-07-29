import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GeneralEquilibriumTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

def ConstrainedGeneralEquilibriumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_general_equilibrium_endgame (A : AdmissibleClass) :
    ConstrainedGeneralEquilibriumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse