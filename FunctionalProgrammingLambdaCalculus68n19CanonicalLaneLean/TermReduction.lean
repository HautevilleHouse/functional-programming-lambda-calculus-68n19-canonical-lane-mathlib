import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure TermReductionPackage where
  alphaEquivalence : Prop
  betaReduction : Prop
  etaConversion : Prop
  confluentReduction : Prop
  stronglyNormalizing : Prop

structure TermReductionEvidence (R : TermReductionPackage) where
  alphaEquivalenceClosed : R.alphaEquivalence
  betaReductionClosed : R.betaReduction
  etaConversionClosed : R.etaConversion
  confluentReductionClosed : R.confluentReduction
  stronglyNormalizingClosed : R.stronglyNormalizing

def TermReductionClosed (R : TermReductionPackage) : Prop :=
  R.alphaEquivalence ∧ R.betaReduction ∧ R.etaConversion ∧
  R.confluentReduction ∧ R.stronglyNormalizing

theorem term_reduction_closed_from_evidence (R : TermReductionPackage)
    (E : TermReductionEvidence R) : TermReductionClosed R := by
  exact And.intro E.alphaEquivalenceClosed
    (And.intro E.betaReductionClosed
      (And.intro E.etaConversionClosed
        (And.intro E.confluentReductionClosed E.stronglyNormalizingClosed)))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse