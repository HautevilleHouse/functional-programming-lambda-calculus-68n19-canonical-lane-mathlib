import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.SimplyTypedLambdaCalculus
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.BetaReduction

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure StronglyNormalizingTerm (t : LambdaTerm) where
  reductionSequenceFinite : ∀ (f : ℕ → LambdaTerm), (∀ n, BetaReduction (f n) (f (n+1))) → 
    ∃ (N : ℕ), ∀ (n : ℕ), n ≥ N → f n = f N
  noInfiniteReduction : Prop

theorem simply_typed_strongly_normalizing (t : LambdaTerm) (τ : SimpleType) 
    (h : typeOf [] t = some τ) : StronglyNormalizingTerm t :=
  {
    reductionSequenceFinite := by
      intro f hSeq
      exact ⟨0, λ n hn => by
        have hN : n ≥ 0 := by omega
        sorry⟩
    noInfiniteReduction := by
      sorry
  }

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
