import canonicalLaneMathlib.AdmissibleClass

/-!
# Scott-Curry Isomorphism Package
-/

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure ScottCurryIsomorphismPackage where
  termsAsFunctions : Prop
  typeFormulae : Prop
  provabilityCorrespondence : Prop

structure ScottCurryIsomorphismEvidence (S : ScottCurryIsomorphismPackage) where
  termsAsFunctionsClosed : S.termsAsFunctions
  typeFormulaeClosed : S.typeFormulae
  provabilityCorrespondenceClosed : S.provabilityCorrespondence

def ScottCurryIsomorphismClosed (S : ScottCurryIsomorphismPackage) : Prop :=
  S.termsAsFunctions ∧ S.typeFormulae ∧ S.provabilityCorrespondence

theorem scott_curry_isomorphism_closed_from_evidence (S : ScottCurryIsomorphismPackage) (E : ScottCurryIsomorphismEvidence S) :
    ScottCurryIsomorphismClosed S := by
  exact And.intro E.termsAsFunctionsClosed (And.intro E.typeFormulaeClosed E.provabilityCorrespondenceClosed)

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse