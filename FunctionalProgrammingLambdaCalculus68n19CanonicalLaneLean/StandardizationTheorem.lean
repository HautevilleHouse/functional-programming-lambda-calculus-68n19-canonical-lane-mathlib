import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.LambdaCalculusAdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure StandardizationPackage where
  reductionStrategies: Type
  leftmostReduction: Prop
  standardReduction: Prop
  equivalence: Prop
  headNormalForm: Prop

structure StandardizationEvidence (S: StandardizationPackage) where
  leftmostReductionClosed: S.leftmostReduction
  standardReductionClosed: S.standardReduction
  equivalenceClosed: S.equivalence
  headNormalFormClosed: S.headNormalForm

def StandardizationClosed (S: StandardizationPackage): Prop :=
  S.leftmostReduction ∧ S.standardReduction ∧ S.equivalence ∧ S.headNormalForm

theorem standardization_closed_from_evidence (S: StandardizationPackage) (E: StandardizationEvidence S):
    StandardizationClosed S := by
  exact And.intro E.leftmostReductionClosed (And.intro E.standardReductionClosed (And.intro E.equivalenceClosed E.headNormalFormClosed))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
