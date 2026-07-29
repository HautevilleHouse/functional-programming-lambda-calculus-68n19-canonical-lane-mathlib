import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure BohmTheoremPackage where
  bohmTheoremStatement : Prop
  separatePoints : Prop
  etaExpansion : Prop
  discriminabilityOfTerms : Prop
  applicativeContexts : Prop

structure BohmTheoremEvidence (B : BohmTheoremPackage) where
  bohmTheoremStatementClosed : B.bohmTheoremStatement
  separatePointsClosed : B.separatePoints
  etaExpansionClosed : B.etaExpansion
  discriminabilityOfTermsClosed : B.discriminabilityOfTerms
  applicativeContextsClosed : B.applicativeContexts

def BohmTheoremClosed (B : BohmTheoremPackage) : Prop :=
  B.bohmTheoremStatement ∧ B.separatePoints ∧ B.etaExpansion ∧
  B.discriminabilityOfTerms ∧ B.applicativeContexts

theorem bohm_theorem_closed_from_evidence (B : BohmTheoremPackage)
    (E : BohmTheoremEvidence B) : BohmTheoremClosed B := by
  exact And.intro E.bohmTheoremStatementClosed
    (And.intro E.separatePointsClosed
      (And.intro E.etaExpansionClosed
        (And.intro E.discriminabilityOfTermsClosed E.applicativeContextsClosed)))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse