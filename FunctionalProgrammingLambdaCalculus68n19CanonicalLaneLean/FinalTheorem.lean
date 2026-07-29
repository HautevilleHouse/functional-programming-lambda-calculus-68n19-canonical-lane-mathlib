import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

def ConstrainedLambdaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lambda_endgame (A : AdmissibleClass) :
    ConstrainedLambdaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse