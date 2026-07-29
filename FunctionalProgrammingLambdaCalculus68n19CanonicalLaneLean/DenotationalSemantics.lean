import canonicalLaneMathlib.AdmissibleClass

/-!
# Denotational Semantics Package
-/

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure DenotationalSemanticsPackage where
  domainModelDefined : Prop
  denotationFunction : Prop
  adequacyTheorem : Prop
  fullAbstraction : Prop

structure DenotationalSemanticsEvidence (D : DenotationalSemanticsPackage) where
  domainModelDefinedClosed : D.domainModelDefined
  denotationFunctionClosed : D.denotationFunction
  adequacyTheoremClosed : D.adequacyTheorem
  fullAbstractionClosed : D.fullAbstraction

def DenotationalSemanticsClosed (D : DenotationalSemanticsPackage) : Prop :=
  D.domainModelDefined ∧ D.denotationFunction ∧ D.adequacyTheorem ∧ D.fullAbstraction

theorem denotational_semantics_closed_from_evidence (D : DenotationalSemanticsPackage) (E : DenotationalSemanticsEvidence D) :
    DenotationalSemanticsClosed D := by
  exact And.intro E.domainModelDefinedClosed (And.intro E.denotationFunctionClosed (And.intro E.adequacyTheoremClosed E.fullAbstractionClosed))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse