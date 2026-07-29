import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.BetaReduction

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure DiamondProperty where
  term : LambdaTerm
  reducesToL : LambdaTerm
  reducesToR : LambdaTerm
  lReduction : BetaReduction term reducesToL
  rReduction : BetaReduction term reducesToR
  join : LambdaTerm
  lToJoin : BetaReduction reducesToL join
  rToJoin : BetaReduction reducesToR join
  diamondClosed : Prop

def ChurchRosserProperty : Prop :=
  ∀ (t u v : LambdaTerm), (BetaReduction t u ∧ BetaReduction t v) →
    ∃ (w : LambdaTerm), BetaReduction u w ∧ BetaReduction v w

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
