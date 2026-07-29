import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.LambdaCalculusAdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure TypeSystemPackage where
  types: Type u
  typingJudgment: Type
  typeInference: Prop
  subjectReduction: Prop
  strongNormalization: Prop
  typeSafety: Prop

structure TypeSystemEvidence (T: TypeSystemPackage) where
  typingJudgmentClosed: T.typingJudgment
  typeInferenceClosed: T.typeInference
  subjectReductionClosed: T.subjectReduction
  strongNormalizationClosed: T.strongNormalization
  typeSafetyClosed: T.typeSafety

def TypeSystemClosed (T: TypeSystemPackage): Prop :=
  T.typingJudgment ∧ T.typeInference ∧ T.subjectReduction ∧ T.strongNormalization ∧ T.typeSafety

theorem type_system_closed_from_evidence (T: TypeSystemPackage) (E: TypeSystemEvidence T):
    TypeSystemClosed T := by
  exact And.intro E.typingJudgmentClosed (And.intro E.typeInferenceClosed (And.intro E.subjectReductionClosed (And.intro E.strongNormalizationClosed E.typeSafetyClosed)))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
