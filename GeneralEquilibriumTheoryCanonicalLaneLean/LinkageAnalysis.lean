import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralEquilibriumTheoryCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  linkageDisequilibrium : Prop
  lodScore : Prop
  geneticDistanceMap : Prop

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.linkageDisequilibrium ∧ L.lodScore ∧ L.geneticDistanceMap

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  linkageDisequilibriumClosed : L.linkageDisequilibrium
  lodScoreClosed : L.lodScore
  geneticDistanceMapClosed : L.geneticDistanceMap

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.linkageDisequilibriumClosed
      (And.intro E.lodScoreClosed E.geneticDistanceMapClosed))

end GeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse