import canonicalLaneMathlib.AdmissibleClass

/-!
# Simply Typed Lambda Calculus Package
-/

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure SimplyTypedLambdaPackage where
  typeSystemSound : Prop
  subjectReduction : Prop
  strongNormalization : Prop
  typeInferenceDecidable : Prop

structure SimplyTypedLambdaEvidence (S : SimplyTypedLambdaPackage) where
  typeSystemSoundClosed : S.typeSystemSound
  subjectReductionClosed : S.subjectReduction
  strongNormalizationClosed : S.strongNormalization
  typeInferenceDecidableClosed : S.typeInferenceDecidable

def SimplyTypedLambdaClosed (S : SimplyTypedLambdaPackage) : Prop :=
  S.typeSystemSound ∧ S.subjectReduction ∧ S.strongNormalization ∧ S.typeInferenceDecidable

theorem simply_typed_lambda_closed_from_evidence (S : SimplyTypedLambdaPackage) (E : SimplyTypedLambdaEvidence S) :
    SimplyTypedLambdaClosed S := by
  exact And.intro E.typeSystemSoundClosed (And.intro E.subjectReductionClosed (And.intro E.strongNormalizationClosed E.typeInferenceDecidableClosed))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse