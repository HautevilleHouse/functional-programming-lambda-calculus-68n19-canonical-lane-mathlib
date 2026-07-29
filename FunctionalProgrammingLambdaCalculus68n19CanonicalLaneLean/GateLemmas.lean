import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

def gateClosed (A: AdmissibleClass): Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A: AdmissibleClass):
    gateClosed A := by
  exact A.gateWitness

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
